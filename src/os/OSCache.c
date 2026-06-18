#include "Dolphin/PPCArch.h"
#include "Dolphin/db.h"
#include "Dolphin/os.h"
#include <stdint.h>

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000010
 */
void DCFlashInvalidate(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 */
void DCEnable(void)
{
	int hid0;
	__mwerks_sync();
	PPC_MOVE_FROM_SPR(SPR_HID0, hid0);
	hid0 |= HID0_DCE;
	PPC_MOVE_TO_SPR(SPR_HID0, hid0);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000014
 */
void DCDisable(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000014
 */
void DCFreeze(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000010
 */
void DCUnfreeze(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void DCTouchLoad(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void DCBlockZero(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void DCBlockStore(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void DCBlockFlush(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void DCBlockInvalidate(void)
{
	// UNUSED FUNCTION
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 */
void DCInvalidateRange(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbi   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 */
void DCFlushRange(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbf   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");

	__mwerks_sync();
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 */
void DCStoreRange(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbst  0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");

	__mwerks_sync();
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 */
void DCFlushRangeNoSync(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbf   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 */
void DCStoreRangeNoSync(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbst  0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");
}

/**
 * @TODO: Documentation
 */
void DCZeroRange(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbz   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000030
 */
void DCTouchRange(void* addr, u32 nBytes)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 */
void ICInvalidateRange(void* addr, u32 nBytes)
{
	if ((s32)nBytes <= 0)
		return;

	if ((uintptr_t)addr & 31)
		nBytes += 32;
	const u32 nLines = (nBytes + 31) / 32;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		icbi   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");

	__mwerks_sync();
	__mwerks_isync();
}

/**
 * @TODO: Documentation
 */
void ICFlashInvalidate(void)
{
	int tmp;
	PPC_MOVE_FROM_SPR(SPR_HID0, tmp);
	tmp |= HID0_ICFI;
	PPC_MOVE_TO_SPR(SPR_HID0, tmp);
}

/**
 * @TODO: Documentation
 */
void ICEnable(void)
{
	int tmp;
	__mwerks_isync();
	PPC_MOVE_FROM_SPR(SPR_HID0, tmp);
	tmp |= HID0_ICE;
	PPC_MOVE_TO_SPR(SPR_HID0, tmp);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000014
 */
void ICDisable(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000014
 */
void ICFreeze(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000010
 */
void ICUnfreeze(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void ICBlockInvalidate(void*)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008
 */
void ICSync(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000CC
 */
void __LCEnable(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000038
 */
void LCEnable(void)
{
	// UNUSED FUNCTION
}

/**
 * @note Dolphin Emulator has a speedhack in its JITs to recognize the instructions in this
 * loop in order to batch data cache operations.  See `Jit64`/`JitArm64::dcbx` for details.
 * @note UNUSED Size: 000028
 */
void LCDisable(void)
{
	u32 addr         = LC_BASE;
	const u32 nLines = LC_LINES;

	asm volatile(
	    R"(
		mtctr  %[nLines]
	1:
		dcbi   0, %[addr]
		addi   %[addr], %[addr], 32
		bdnz   1b
		)"
	    : [addr] "+r"(addr)
	    : [nLines] "r"(nLines)
	    : "ctr");

	int tmp;
	PPC_MOVE_FROM_SPR(SPR_HID2, tmp);
	tmp &= ~HID2_LCE;
	PPC_MOVE_TO_SPR(SPR_HID2, tmp);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000014
 */
void LCAllocOneTag(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000040
 */
void LCAllocTags(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000024
 */
void LCLoadBlocks(void* destTag, void* srcAddr, u32 numBlocks)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000024
 */
void LCStoreBlocks(void* destAddr, void* srcTag, u32 numBlocks)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000070
 */
void LCAlloc(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000070
 */
void LCAllocNoInvalidate(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000AC
 */
u32 LCLoadData(void* destAddr, void* srcAddr, u32 nBytes)
{
	// UNUSED FUNCTION
	return;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000AC
 */
u32 LCStoreData(void* destAddr, void* srcAddr, u32 nBytes)
{
	// UNUSED FUNCTION
	return;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00000C
 */
u32 LCQueueLength(void)
{
	// UNUSED FUNCTION
	return;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000018
 */
void LCQueueWait(u32 len)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000048
 */
void LCFlushQueue(void)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00004C
 */
void L2Init(void)
{
	u32 oldMSR;

	oldMSR = PPCMfmsr();

	__mwerks_sync();
	PPCMtmsr(MSR_IR | MSR_DR);
	__mwerks_sync();

	L2Disable();

	L2GlobalInvalidate();

	PPCMtmsr(oldMSR);
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00002C
 */
void L2Enable(void)
{
	PPCMtl2cr((PPCMfl2cr() | L2CR_L2E) & ~L2CR_L2I);
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000030
 */
void L2Disable(void)
{
	__mwerks_sync();
	PPCMtl2cr(PPCMfl2cr() & ~L2CR_L2E);
	__mwerks_sync();
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 */
void L2GlobalInvalidate(void)
{
	L2Disable();

	PPCMtl2cr(PPCMfl2cr() | L2CR_L2I);

	while (PPCMfl2cr() & L2CR_L2IP)
		;

	PPCMtl2cr(PPCMfl2cr() & ~L2CR_L2I);

	while (PPCMfl2cr() & L2CR_L2IP) {
		DBPrintf(">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n");
	}
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000040
 */
void L2SetDataOnly(int)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000040
 */
void L2SetWriteThrough(int)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 */
void DMAErrorHandler(OSError error, OSContext* context, ...)
{
#pragma unused(error)
	u32 hid2 = PPCMfhid2();

	OSReport("Machine check received\n");
	OSReport("HID2 = 0x%x   SRR1 = 0x%x\n", hid2, context->srr1);
	if (!(hid2 & (HID2_DCHERR | HID2_DNCERR | HID2_DCMERR | HID2_DQOERR)) || !(context->srr1 & SRR1_DMA_BIT)) {
		OSReport("Machine check was not DMA/locked cache related\n");
		OSDumpContext(context);
		PPCHalt();
		// spins forever, so not reached
	}

	OSReport("DMAErrorHandler(): An error occurred while processing DMA.\n");
	OSReport("The following errors have been detected and cleared :\n");

	if (hid2 & HID2_DCHERR) {
		OSReport("\t- Requested a locked cache tag that was already in the cache\n");
	}

	if (hid2 & HID2_DNCERR) {
		OSReport("\t- DMA attempted to access normal cache\n");
	}

	if (hid2 & HID2_DCMERR) {
		OSReport("\t- DMA missed in data cache\n");
	}

	if (hid2 & HID2_DQOERR) {
		OSReport("\t- DMA queue overflowed\n");
	}

	// write hid2 back (to clear the error bits)
	PPCMthid2(hid2);
}

/**
 * @TODO: Documentation
 */
void __OSCacheInit(void)
{
	if (!(PPCMfhid0() & HID0_ICE)) {
		ICEnable();
		DBPrintf("L1 i-caches initialized\n");
	}
	if (!(PPCMfhid0() & HID0_DCE)) {
		DCEnable();
		DBPrintf("L1 d-caches initialized\n");
	}

	if (!(PPCMfl2cr() & L2CR_L2E)) {
		L2Init();
		L2Enable();
		DBPrintf("L2 cache initialized\n");
	}

	OSSetErrorHandler(OS_ERROR_MACHINE_CHECK, DMAErrorHandler);
	DBPrintf("Locked cache machine check handler installed\n");
}
