#include "Dolphin/PPCArch.h"
#include "Dolphin/os.h"
#include "types.h"

BEGIN_SCOPE_EXTERN_C

typedef void (*voidfunctionptr)(); // pointer to function returning void
DECL_SECT(".ctors") extern voidfunctionptr _ctors[];
DECL_SECT(".dtors") extern voidfunctionptr _dtors[];

static void __init_cpp();

DECL_SECT(".init") void __init_hardware()
{
	asm("mfmsr  0;"
	    "ori    0, 0, 0x2000;"
	    "mtmsr  0;"
	    "mflr   31;"
	    "bl     __OSPSInit;"
	    "bl     __OSCacheInit;"
	    "mtlr   31;"
	    "blr;");
}

DECL_SECT(".init") void __flush_cache(void* addr, int size)
{
	asm("	lis     5,    0xFFFFFFF1@h;"
	    "	ori     5, 5, 0xFFFFFFF1@l;"
	    "	and     5, 5, 3;"
	    "	subf    3, 5, 3;"
	    "	add     4, 4, 3;"
	    "loop:"
	    "	dcbst   0, 5;"
	    "	sync;"
	    "	icbi    0, 5;"
	    "	addic   5, 5, 8;"
	    "	addic.  4, 4, -8;"
	    "	bge     loop;"
	    "	isync;"
	    "	blr;");
}

/**
 * @todo: Documentation
 */
void __init_user(void)
{
	__init_cpp();
}

/**
 * @todo: Documentation
 */
static void __init_cpp(void)
{
	voidfunctionptr* constructor;
	/**
	 *	call static initializers
	 */
	for (constructor = _ctors; *constructor; constructor++) {
		(*constructor)();
	}
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000054
 */
void __fini_cpp(void)
{
	// UNUSED FUNCTION
}

/**
 * @todo: Documentation
 */
void _ExitProcess(void)
{
	PPCHalt();
}

END_SCOPE_EXTERN_C
