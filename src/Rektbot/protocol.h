#pragma once

#include <stdint.h>

#include "includes.h"

struct dnshdr {
    uint16_t id, opts, qdcount, ancount, nscount, arcount;
};

struct dns_question {
    uint16_t qtype, qclass;
};

struct dns_resource {
    uint16_t type, _class;
    uint32_t ttl;
    uint16_t data_len;
} __attribute__((packed));


#define PROTO_DNS_QTYPE_A       1
#define PROTO_DNS_QCLASS_IP     1

