#pragma once

#include "main.h"

#include <stdint.h>

struct dns_header
{
    unsigned short id;
    unsigned char rd :1;
    unsigned char tc :1;
    unsigned char aa :1;
    unsigned char opcode :4;
    unsigned char qr :1;
    unsigned char rcode :4;
    unsigned char cd :1;
    unsigned char ad :1;
    unsigned char z :1; 
    unsigned char ra :1; 
    unsigned short q_count;
    unsigned short ans_count;
    unsigned short auth_count;
    unsigned short add_count;
};

struct dns_question
{
    uint16_t query_type;
    uint16_t query_class;
};

struct dns_resource
{
    unsigned short type;
    unsigned short _class;
    unsigned int ttl;
    unsigned short data_len;
};

struct dns_resource_txt
{
    unsigned short type, _class;
    unsigned int ttl;
    unsigned short data_len;
//    char buf[1024];
};

enum
{
    QUERY_CLASS_IP = 1,
    QUERY_TYPE_A = 1,
    QUERY_TYPE_TXT = 16,
    MAX_TXT_SIZE = 255
};

uint32_t dns_lookup(char *, uint8_t, uint8_t);
char *dns_lookup_txt(char *, uint8_t);
uint32_t local_addr(void);
