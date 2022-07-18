#define _GNU_SOURCE

#include <stdint.h>
#include <arpa/inet.h>
#include <netinet/ip.h>
#include <netinet/tcp.h>

uint16_t tcp_udp_header_checksum(struct iphdr *ip_header, void *buf, uint16_t data_len, int len)
{
    uint32_t ip_src = ip_header->saddr;
    uint32_t ip_dst = ip_header->daddr;
    uint32_t sum = 0;
    uint16_t *buf2 = buf;

    while(len > 1)
    {
        sum += *buf2++;
        len -= 2;
    }

    if(len == 1)
        sum += *((uint8_t *)buf2);

    sum += (ip_src >> 16) & 0xFFFF;
    sum += ip_src & 0xFFFF;
    sum += (ip_dst >> 16) & 0xFFFF;
    sum += ip_dst & 0xFFFF;
    sum += htons(ip_header->protocol);
    sum += data_len;

    while(sum >> 16)
        sum = (sum & 0xFFFF) + (sum >> 16);

    return ((uint16_t)(~sum));
}

uint16_t ip_header_checksum(uint16_t *addr, uint32_t count)
{
    int sum = 0;

    for(sum = 0; count > 1; count -= 2)
        sum += *addr++;
    if(count == 1)
        sum += (char)*addr;

    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    
    return ~sum;
}
