#include "Dolphin/os.h"
#include <string.h>

#define OS_SYS_CALL_HANDLER  ((void*)0x80000C00)
#define OS_HANDLER_SLOT_SIZE (0x100)

void __OSSystemCallVectorStart();
void __OSSystemCallVectorEnd();

/**
 * @TODO: Documentation
 */
static void SystemCallVector(void);
asm(R"(
	.local SystemCallVector
SystemCallVector:

	.global __OSSystemCallVectorStart
__OSSystemCallVectorStart:

	mfhid0  r9
	ori     r10, r9, 8  # HID0_ABE
	mfhid0  r10
	isync
	sync
	mfhid0  r9
	rfi

	.global __OSSystemCallVectorEnd
__OSSystemCallVectorEnd:

	.size SystemCallVector, . - SystemCallVector
	.type SystemCallVector, @function
)");

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
