#include "Dolphin/os.h"

#include <errno.h>
#include <sys/stat.h>

#pragma section ".init"

asm(R"(
	.global _start
_start:

# Formerly `__init_registers`
	lis    r1,     _stack_addr @ha
	addi   r1, r1, _stack_addr @l
	lis    r2,     _SDA2_BASE_ @ha
	addi   r2, r2, _SDA2_BASE_ @l
	lis    r13,      _SDA_BASE_  @ha
	addi   r13, r13, _SDA_BASE_  @l

# Formerly `__init_hardware`
	bl     __OSPSInit
#	bl     __OSCacheInit

	li      r0, 0
	lis     r6,     0x80000044 @ha  # EXCEPTIONMASK_ADDR
	addi    r6, r6, 0x80000044 @l   # EXCEPTIONMASK_ADDR
	stw     r0, 0 (r6)

# Set up the base of the stack
	li     r0, -1
	stwu   r1, -0x0008 (r1)
	stw    r0,  0x0004 (r1)
	stw    r0,  0x0000 (r1)

#	bl     __init

	bl     DBInit
#	bl     OSInit
	bl     main
	b      exit

#	bl     __fini

	.size _start, . - _start
	.type _start, @function
)");

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

static char fake_heap[0x10000];

caddr_t sbrk(int incr)
{
	static char* heap_end = 0;
	char* prev_heap_end;

	if (heap_end == 0) {
		heap_end = &fake_heap; // &__ArenaLo;
	}
	prev_heap_end = heap_end;

	heap_end += incr;
	return (caddr_t)prev_heap_end;
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
