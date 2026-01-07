#include "Dolphin/os.h"
#include <string.h>

#define OS_SYS_CALL_HANDLER  ((void*)0x80000C00)
#define OS_HANDLER_SLOT_SIZE (0x100)

void __OSSystemCallVectorStart();
void __OSSystemCallVectorEnd();

/**
 * @TODO: Documentation
 */
static void SystemCallVector(void)
{
	// TODO: Document clobbers explicitly, I guess.
	// asm(".global __OSSystemCallVectorStart"
	//     "__OSSystemCallVectorStart:"

	//     "mfspr  9, DBSR"
	//     "ori    10, 9, 8"
	//     "mtspr  DBSR, 10"
	//     "isync"
	//     "sync"
	//     "mtspr  DBSR, 9"
	//     "rfi"

	//     ".global __OSSystemCallVectorEnd"
	//     "__OSSystemCallVectorEnd:");
}

/**
 * @TODO: Documentation
 */
void __OSInitSystemCall(void)
{
	void* handler = OS_SYS_CALL_HANDLER;
	memcpy(handler, __OSSystemCallVectorStart, (u32)__OSSystemCallVectorEnd - (u32)__OSSystemCallVectorStart);

	DCFlushRangeNoSync(handler, OS_HANDLER_SLOT_SIZE);
	__mwerks_sync();
	ICInvalidateRange(handler, OS_HANDLER_SLOT_SIZE);
}
