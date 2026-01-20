#include "Dolphin/os.h"

#include <errno.h>
#include <sys/stat.h>

#pragma section ".init"

void _exit(int)
{
	PPCHalt();
}

int close(int file)
{
	return -1;
}

int lseek(int file, int ptr, int dir)
{
	return 0;
}

int read(int file, char* ptr, int len)
{
	return 0;
}

int kill(int pid, int sig)
{
	errno = EINVAL;
	return -1;
}

int getpid(void)
{
	return 1;
}

caddr_t sbrk(int incr)
{
	return 0;
}

int write(int file, char* ptr, int len)
{
	for (int todo = 0; todo < len; todo++) {
		*ptr++;
	}
	return len;
}

int fstat(int file, struct stat* st)
{
	st->st_mode = S_IFCHR;
	return 0;
}

int isatty(int file)
{
	return 1;
}
