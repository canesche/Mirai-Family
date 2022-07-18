#define _GNU_SOURCE

#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <sys/select.h>
#include <errno.h>
#include <string.h>

#include "resolve.h"
#include "main.h"
#include "rand.h"
#include "resolve.h"
#include "entry.h"

static uint32_t pick_resolver(void)
{
    uint32_t choice = 0;

    choice = rand_new() % 4;

    if(choice == 0)
    {
        return INET_ADDR(8,8,8,8);
    }

    if(choice == 1)
    {
        return INET_ADDR(8,8,4,4);
    }

    if(choice == 2)
    {
        return INET_ADDR(1,1,1,1);
    }

    if(choice == 3)
    {
        return INET_ADDR(1,0,0,1);
    }
}

static void d(char *out, char *domain, int domain_len)
{
    int pos = 0;
    char *m = out;
    char *p = out + 1;
    int i = 0;
    int len = domain_len + 1;

    while(len-- > 0)
    {
        char tmp = 0;

        tmp = *domain++;

        if(tmp == '.' || tmp == 0)
        {
            *m = pos;
            m = p++;
            pos = 0;
            continue;
        }

        pos++;
        *p++ = tmp;
    }

    *p = 0;
    return;
}

uint32_t dns_lookup(char *domain, uint8_t len, uint8_t type)
{
    char query[2048] = {0};

    memset(query, 0, 2048);

    struct dns_header *dns = (struct dns_header *)query;
    char *query_name = (char *)(dns + 1);
    int domain_len = len;
    struct sockaddr_in addr;
    uint16_t id = 0;
    struct dns_question *dns_question;
    int fd = -1;
    int tries = 0;
    int query_len = 0;
    int i = 0;
    uint32_t result = 0;
    uint32_t *addr_list;

    d(query_name, domain, domain_len);

    dns_question = (struct dns_question *)(query_name + strlen(query_name) + 1);
    query_len = sizeof(struct dns_header) + strlen(query_name) + 1 + sizeof(struct dns_question);

    id = rand_new() & 0xffff;

    dns->id = (uint16_t)id;

    dns->rd = 1;
    dns->tc = 0;
    dns->aa = 0;
    dns->opcode = 0;
    dns->qr = 0;
    dns->rcode = 0;
    dns->cd = 0;
    dns->ad = 0;
    dns->z = 0;
    dns->ra = 0;

    dns->q_count = htons(1);

    dns->ans_count = 0;
    dns->auth_count = 0;
    dns->add_count = 0;

    dns_question->query_type = htons(type);
    dns_question->query_class = htons(QUERY_CLASS_IP);

    while((tries++) != MAX_DNS_QUERY_TRIES)
    {
        fd_set read_set;
        struct timeval timeout;
        int ret = 0;
        uint16_t answer_count = 0;
        struct dns_resource *dns_resource;
        struct sockaddr_in addr;

        fd = socket(AF_INET, SOCK_DGRAM, 0);
        if(fd == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }

        addr.sin_family = AF_INET;
        addr.sin_addr.s_addr = pick_resolver();
        addr.sin_port = htons(53);

        //DEBUG_PRINT("Resolver: %d.%d.%d.%d\n", addr.sin_addr.s_addr & 0xff, (addr.sin_addr.s_addr >> 8) & 0xff, (addr.sin_addr.s_addr >> 16) & 0xff, (addr.sin_addr.s_addr >> 24) & 0xff);

        if(connect(fd, (struct sockaddr *)&addr, sizeof(addr)) == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }

        if(send(fd, query, query_len, MSG_NOSIGNAL) != query_len)
        {
            close(fd);
            sleep(1);
            continue;
        }

        NONBLOCK(fd);
        
        FD_ZERO(&read_set);
        FD_SET(fd, &read_set);

        timeout.tv_sec = 10;
        timeout.tv_usec = 0;

        ret = select(fd + 1, &read_set, NULL, NULL, &timeout);
        if(ret == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }
        else if(ret == 0)
        {
            close(fd);
            sleep(1);
            continue;
        }

        if(fd != -1 && FD_ISSET(fd, &read_set))
        {
            char response[2048] = {0};
            char *data2;
            struct dns_header *dns2;
            char *query_name2;
            struct dns_question *dns_question2;
            struct dns_resource *dns_resource2;

            memset(response, 0, 2048);

            ret = recvfrom(fd, response, sizeof(response), MSG_NOSIGNAL, NULL, NULL);

            //if(ret < 0)
            if(ret < (sizeof(struct dns_header) + strlen(query_name) + 1 + sizeof(struct dns_question)))
            {
                close(fd);
                sleep(1);
                continue;
            }

            dns2 = (struct dns_header *)response;
            query_name2 = (char *)(dns2 + 1);
            dns_question2 = (struct dns_question *)(query_name2 + strlen(query_name2) + 1);
            data2 = (char *)(dns_question2 + 1);
            dns_resource2 = (struct dns_resource *)data2;

            if(dns2->id != id)
            {
                close(fd);
                sleep(1);
                continue;
            }
            // No result?
            if(ntohs(dns2->ans_count) < 1)
            {
                close(fd);
                sleep(1);
                continue;
            }

            answer_count = ntohs(dns2->ans_count);

            data2 += sizeof(struct dns_resource);

            addr_list = (uint32_t *)calloc(answer_count, sizeof(uint32_t));
            if(!addr_list)
            {
                close(fd);
                break;
            }

            for(i = 0; i < answer_count; i++)
            {
                addr_list[i] = htonl((data2[0] << 24) | (data2[1] << 16) | (data2[2] << 8) | (data2[3]));
                data2 += sizeof(struct dns_header) + 4;
            }

            result = addr_list[rand_new() % answer_count];

            free(addr_list);

            close(fd);
//          DEBUG_PRINT("Resolved: %d.%d.%d.%d\n", result & 0xff, (result >> 8) & 0xff, (result >> 16) & 0xff, (result >> 24) & 0xff);
            break;
        }
    }

    return result;
}

uint32_t local_addr(void)
{
    int fd = -1;
    struct sockaddr_in addr;
    socklen_t addr_len = sizeof(addr);

    fd = socket(AF_INET, SOCK_DGRAM, 0);
    if(fd == -1)
    {
        return 0;
    }

    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = pick_resolver();
    addr.sin_port = htons(53);

    connect(fd, (struct sockaddr *)&addr, sizeof(addr));

    getsockname(fd, (struct sockaddr *)&addr, &addr_len);
    close(fd);

    //DEBUG_PRINT("Local address %d.%d.%d.%d!\n", addr.sin_addr.s_addr & 0xff, (addr.sin_addr.s_addr >> 8) & 0xff, (addr.sin_addr.s_addr >> 16) & 0xff, (addr.sin_addr.s_addr >> 24) & 0xff);

    return addr.sin_addr.s_addr;
}

char *dns_lookup_txt(char *domain, uint8_t len)
{
    char query[2048] = {0};

    memset(query, 0, 2048);

    struct dns_header *dns = (struct dns_header *)query;
    char *query_name = (char *)(dns + 1);
    int domain_len = len;
    struct sockaddr_in addr;
    uint16_t id = 0;
    struct dns_question *dns_question;
    int fd = -1;
    int tries = 0;
    int query_len = 0;
    int i = 0;
    //uint32_t result = 0;
    //uint32_t *addr_list;
    char *buf;

    buf = (char *)malloc(MAX_TXT_SIZE);
    if(!buf)
    {
        DEBUG_PRINT("Failed to allocate memory for the TXT record?\n");
        return NULL;
    }

    d(query_name, domain, domain_len);

    dns_question = (struct dns_question *)(query_name + strlen(query_name) + 1);
    query_len = sizeof(struct dns_header) + strlen(query_name) + 1 + sizeof(struct dns_question);

    id = rand_new() & 0xffff;

    dns->id = (uint16_t)id;

    dns->rd = 1;
    dns->tc = 0;
    dns->aa = 0;
    dns->opcode = 0;
    dns->qr = 0;
    dns->rcode = 0;
    dns->cd = 0;
    dns->ad = 0;
    dns->z = 0;
    dns->ra = 0;

    dns->q_count = htons(1);

    dns->ans_count = 0;
    dns->auth_count = 0;
    dns->add_count = 0;

    dns_question->query_type = htons(QUERY_TYPE_TXT);
    dns_question->query_class = htons(QUERY_CLASS_IP);

    while((tries++) != MAX_DNS_QUERY_TRIES)
    {
        fd_set read_set;
        struct timeval timeout;
        int ret = 0;
        uint16_t answer_count = 0;
        struct dns_resource_txt *dns_resource;
        struct sockaddr_in addr;

        fd = socket(AF_INET, SOCK_DGRAM, 0);
        if(fd == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }

        addr.sin_family = AF_INET;
        addr.sin_addr.s_addr = pick_resolver();
        addr.sin_port = htons(53);

        //DEBUG_PRINT("Resolver: %d.%d.%d.%d\n", addr.sin_addr.s_addr & 0xff, (addr.sin_addr.s_addr >> 8) & 0xff, (addr.sin_addr.s_addr >> 16) & 0xff, (addr.sin_addr.s_addr >> 24) & 0xff);

        if(connect(fd, (struct sockaddr *)&addr, sizeof(addr)) == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }

        if(send(fd, query, query_len, MSG_NOSIGNAL) != query_len)
        {
            close(fd);
            sleep(1);
            continue;
        }

        NONBLOCK(fd);
        
        FD_ZERO(&read_set);
        FD_SET(fd, &read_set);

        timeout.tv_sec = 10;
        timeout.tv_usec = 0;

        ret = select(fd + 1, &read_set, NULL, NULL, &timeout);
        if(ret == -1)
        {
            close(fd);
            sleep(1);
            continue;
        }
        else if(ret == 0)
        {
            close(fd);
            sleep(1);
            continue;
        }

        if(fd != -1 && FD_ISSET(fd, &read_set))
        {
            char response[2048] = {0};
            char *data2;
            struct dns_header *dns2;
            char *query_name2;
            struct dns_question *dns_question2;
            struct dns_resource_txt *dns_resource2;
            int len = 0;

            memset(response, 0, 2048);

            ret = recvfrom(fd, response, sizeof(response), MSG_NOSIGNAL, NULL, NULL);

            //if(ret < 0)
            if(ret < (sizeof(struct dns_header) + strlen(query_name) + 1 + sizeof(struct dns_question)))
            {
                close(fd);
                sleep(1);
                continue;
            }

            dns2 = (struct dns_header *)response;
            query_name2 = (char *)(dns2 + 1);
            dns_question2 = (struct dns_question *)(query_name2 + strlen(query_name2) + 1);
            data2 = (char *)(dns_question2 + 1);
            dns_resource2 = (struct dns_resource_txt *)data2;

            if(dns2->id != id)
            {
                close(fd);
                sleep(1);
                continue;
            }
            // No result?
            if(ntohs(dns2->ans_count) < 1)
            {
                close(fd);
                sleep(1);
                continue;
            }

            data2 += sizeof(struct dns_resource_txt) + 1;
            len = strlen(data2);

            // Copy the received data over to the HEAP
            memcpy(buf, data2, len);

            close(fd);
            break;
        }
    }

    return buf;
}
