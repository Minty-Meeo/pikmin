#include "Dolphin/ai.h"
#include "Dolphin/os.h"
#include <stddef.h>

typedef void (*voidfunctionptr)(void); // pointer to function returning void

#if OS_BUILD_VERSION >= 20011002L
static void* SaveStart = NULL;
static void* SaveEnd   = NULL;
#endif

static volatile BOOL Prepared;

#define OS_UNK_CODE       (*(u32*)(0x817FFFF8))
#define OS_HOT_RESET_CODE (*(u32*)(0x817FFFFC))

extern void* __OSSavedRegionStart;
extern void* __OSSavedRegionEnd;

// Struct for Apploader header (size 0x20).
typedef struct _ApploaderHeader {
	char date[16];  // _00
	u32 entry;      // _10
	u32 size;       // _14
	u32 rebootSize; // _18
	u32 reserved2;  // _1C
} ApploaderHeader;

static ApploaderHeader Header ATTRIBUTE_ALIGN(32);

// This function exists to kick the following global ASM function back into the .text section
static void PreASMDummyFunction(void)
{
}

/**
 * @note Don't try converting this function to C.  It looks very doable, but GCC refuses to perform the
 * call to the entrypoint when optimizations cause this function to inline.  What UB am I even causing??
 */
[[noreturn]]
static void Run(voidfunctionptr entrypoint);
asm(R"(
	.local Run
Run:

	mr     r31, r3
	bl     OSDisableInterrupts
	bl     ICFlashInvalidate
	sync
	isync
	mtlr   r31
	blr

	.size Run, . - Run
	.type Run, @function
)");

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000A0
 */
static void ReadApploader(DVDCommandBlock* dvdCmd, void* addr, u32 offset, u32 numBytes)
{
	while (Prepared == FALSE) { }
	DVDReadAbsAsyncForBS(dvdCmd, addr, numBytes, offset + 0x2440, NULL);

	while (TRUE) {
		switch (dvdCmd->state) {
		case 0:
		{
			break;
		}
		case 1:
		default:
		{
			continue;
		}
		case -1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		{
			__OSDoHotReset(OS_HOT_RESET_CODE);
			continue;
		}
		}
		break;
	}
}

/**
 * @TODO: Documentation
 */
static void Callback(s32 result, DVDCommandBlock* block)
{
	Prepared = TRUE;
}

/**
 * @TODO: Documentation
 */
void __OSReboot(u32 resetCode, u32 bootDol)
{
	OSContext exceptionContext;
	DVDCommandBlock dvdCmd;
	DVDCommandBlock dvdCmd2;
	u32 numBytes;
	u32 offset;

	OSDisableInterrupts();

	OS_HOT_RESET_CODE = resetCode;
	OS_UNK_CODE       = 0;
	OS_REBOOT_BOOL    = TRUE;
#if OS_BUILD_VERSION >= 20011002L
	OS_BOOT_REGION_START = SaveStart;
	OS_BOOT_REGION_END   = SaveEnd;
#endif
	OSClearContext(&exceptionContext);
	OSSetCurrentContext(&exceptionContext);
	DVDInit();
#if OS_BUILD_VERSION >= 20011002L
	DVDSetAutoInvalidation(TRUE);
#endif

	__DVDPrepareResetAsync(Callback);

	if (!DVDCheckDisk()) {
		__OSDoHotReset(OS_HOT_RESET_CODE);
	}

	__OSMaskInterrupts(OS_INTERRUPTMASK_MEM | OS_INTERRUPTMASK_DSP | OS_INTERRUPTMASK_AI | OS_INTERRUPTMASK_EXI | OS_INTERRUPTMASK_PI);
	__OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_DI);

	OSEnableInterrupts();

	offset   = 0;
	numBytes = 32;
	ReadApploader(&dvdCmd, (void*)&Header, offset, numBytes);

	offset   = Header.size + 0x20;
	numBytes = OSRoundUp32B(Header.rebootSize);
	ReadApploader(&dvdCmd2, (void*)OS_BOOTROM_ADDR, offset, numBytes);

	ICInvalidateRange((void*)OS_BOOTROM_ADDR, numBytes);
	Run((voidfunctionptr)OS_BOOTROM_ADDR);
}
