#include <stdio.h>
#include "includes.h"

void enc(char *str)
{
		int i;
		for(i = 0; (i < 100 && str[i] != '\0'); i++)
		str[i] = str[i] + 3;
		//printf("encrypted: %s\n", str);
}

void decrypt(char *str)
{
		int i;
		for(i = 0; (i < 100 && str[i] != '\0'); i++)
		{
			str[i] = str[i] - 3;
		}
		#ifdef DEBUG
		//printf("decrypted: %s\n", str);
		#endif
}

