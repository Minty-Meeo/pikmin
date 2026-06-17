#include "Dolphin/PPCArch.h"
#include "Dolphin/db.h"
#include "Dolphin/os.h"
#include <stddef.h>
#include <stdint.h>

/**
 * @TODO: Documentation
 */
static void __OSLoadFPUContext(u32, OSContext* fpuContext);
asm(R"(
	.include "Dolphin/OS/OSContext.inc"

	.local __OSLoadFPUContext
__OSLoadFPUContext:

	lhz      r5, OSContext.state (r4);
	clrlwi.  r5, r5, 31  # OS_CONTEXT_STATE_FPSAVED
	beq      2f

	lfd      f0, OSContext.fpscr (r4)
	mtfsf    0xFF, f0
	mfhid2   r5
	rlwinm.  r5, r5, 3, 31, 31  # HID2_PSE
	beq      1f

	psq_l    f0, OSContext.psf0 (r4), 0, 0
	psq_l    f1, OSContext.psf1 (r4), 0, 0
	psq_l    f2, OSContext.psf2 (r4), 0, 0
	psq_l    f3, OSContext.psf3 (r4), 0, 0
	psq_l    f4, OSContext.psf4 (r4), 0, 0
	psq_l    f5, OSContext.psf5 (r4), 0, 0
	psq_l    f6, OSContext.psf6 (r4), 0, 0
	psq_l    f7, OSContext.psf7 (r4), 0, 0
	psq_l    f8, OSContext.psf8 (r4), 0, 0
	psq_l    f9, OSContext.psf9 (r4), 0, 0
	psq_l    f10, OSContext.psf10 (r4), 0, 0
	psq_l    f11, OSContext.psf11 (r4), 0, 0
	psq_l    f12, OSContext.psf12 (r4), 0, 0
	psq_l    f13, OSContext.psf13 (r4), 0, 0
	psq_l    f14, OSContext.psf14 (r4), 0, 0
	psq_l    f15, OSContext.psf15 (r4), 0, 0
	psq_l    f16, OSContext.psf16 (r4), 0, 0
	psq_l    f17, OSContext.psf17 (r4), 0, 0
	psq_l    f18, OSContext.psf18 (r4), 0, 0
	psq_l    f19, OSContext.psf19 (r4), 0, 0
	psq_l    f20, OSContext.psf20 (r4), 0, 0
	psq_l    f21, OSContext.psf21 (r4), 0, 0
	psq_l    f22, OSContext.psf22 (r4), 0, 0
	psq_l    f23, OSContext.psf23 (r4), 0, 0
	psq_l    f24, OSContext.psf24 (r4), 0, 0
	psq_l    f25, OSContext.psf25 (r4), 0, 0
	psq_l    f26, OSContext.psf26 (r4), 0, 0
	psq_l    f27, OSContext.psf27 (r4), 0, 0
	psq_l    f28, OSContext.psf28 (r4), 0, 0
	psq_l    f29, OSContext.psf29 (r4), 0, 0
	psq_l    f30, OSContext.psf30 (r4), 0, 0
	psq_l    f31, OSContext.psf31 (r4), 0, 0

1:
	lfd      f0, OSContext.fpr0 (r4)
	lfd      f1, OSContext.fpr1 (r4)
	lfd      f2, OSContext.fpr2 (r4)
	lfd      f3, OSContext.fpr3 (r4)
	lfd      f4, OSContext.fpr4 (r4)
	lfd      f5, OSContext.fpr5 (r4)
	lfd      f6, OSContext.fpr6 (r4)
	lfd      f7, OSContext.fpr7 (r4)
	lfd      f8, OSContext.fpr8 (r4)
	lfd      f9, OSContext.fpr9 (r4)
	lfd      f10, OSContext.fpr10 (r4)
	lfd      f11, OSContext.fpr11 (r4)
	lfd      f12, OSContext.fpr12 (r4)
	lfd      f13, OSContext.fpr13 (r4)
	lfd      f14, OSContext.fpr14 (r4)
	lfd      f15, OSContext.fpr15 (r4)
	lfd      f16, OSContext.fpr16 (r4)
	lfd      f17, OSContext.fpr17 (r4)
	lfd      f18, OSContext.fpr18 (r4)
	lfd      f19, OSContext.fpr19 (r4)
	lfd      f20, OSContext.fpr20 (r4)
	lfd      f21, OSContext.fpr21 (r4)
	lfd      f22, OSContext.fpr22 (r4)
	lfd      f23, OSContext.fpr23 (r4)
	lfd      f24, OSContext.fpr24 (r4)
	lfd      f25, OSContext.fpr25 (r4)
	lfd      f26, OSContext.fpr26 (r4)
	lfd      f27, OSContext.fpr27 (r4)
	lfd      f28, OSContext.fpr28 (r4)
	lfd      f29, OSContext.fpr29 (r4)
	lfd      f30, OSContext.fpr30 (r4)
	lfd      f31, OSContext.fpr31 (r4)
2:
	blr
	
	.size __OSLoadFPUContext, . - __OSLoadFPUContext
	.type __OSLoadFPUContext, @function
)");

/**
 * @TODO: Documentation
 */
static void __OSSaveFPUContext(u32, u32, OSContext* fpuContext);
asm(R"(
	.include "Dolphin/OS/OSContext.inc"

	.local __OSSaveFPUContext
__OSSaveFPUContext:

	lhz      r3,  OSContext.state (r5)
	ori      r3,  3, 0x01U  # OS_CONTEXT_STATE_FPSAVED
	sth      r3,  OSContext.state (r5)

	stfd     f0, OSContext.fpr0 (r5)
	stfd     f1, OSContext.fpr1 (r5)
	stfd     f2, OSContext.fpr2 (r5)
	stfd     f3, OSContext.fpr3 (r5)
	stfd     f4, OSContext.fpr4 (r5)
	stfd     f5, OSContext.fpr5 (r5)
	stfd     f6, OSContext.fpr6 (r5)
	stfd     f7, OSContext.fpr7 (r5)
	stfd     f8, OSContext.fpr8 (r5)
	stfd     f9, OSContext.fpr9 (r5)
	stfd     f10, OSContext.fpr10 (r5)
	stfd     f11, OSContext.fpr11 (r5)
	stfd     f12, OSContext.fpr12 (r5)
	stfd     f13, OSContext.fpr13 (r5)
	stfd     f14, OSContext.fpr14 (r5)
	stfd     f15, OSContext.fpr15 (r5)
	stfd     f16, OSContext.fpr16 (r5)
	stfd     f17, OSContext.fpr17 (r5)
	stfd     f18, OSContext.fpr18 (r5)
	stfd     f19, OSContext.fpr19 (r5)
	stfd     f20, OSContext.fpr20 (r5)
	stfd     f21, OSContext.fpr21 (r5)
	stfd     f22, OSContext.fpr22 (r5)
	stfd     f23, OSContext.fpr23 (r5)
	stfd     f24, OSContext.fpr24 (r5)
	stfd     f25, OSContext.fpr25 (r5)
	stfd     f26, OSContext.fpr26 (r5)
	stfd     f27, OSContext.fpr27 (r5)
	stfd     f28, OSContext.fpr28 (r5)
	stfd     f29, OSContext.fpr29 (r5)
	stfd     f30, OSContext.fpr30 (r5)
	stfd     f31, OSContext.fpr31 (r5)

	mffs     f0
	stfd     f0,  OSContext.fpscr (r5)

	lfd      f0,  OSContext.fpr0 (r5)

	mfhid2   r3
	rlwinm.  r3, r3, 3, 31, 31
	beq      1f

	psq_st   f0, OSContext.psf0 (r5), 0, 0
	psq_st   f1, OSContext.psf1 (r5), 0, 0
	psq_st   f2, OSContext.psf2 (r5), 0, 0
	psq_st   f3, OSContext.psf3 (r5), 0, 0
	psq_st   f4, OSContext.psf4 (r5), 0, 0
	psq_st   f5, OSContext.psf5 (r5), 0, 0
	psq_st   f6, OSContext.psf6 (r5), 0, 0
	psq_st   f7, OSContext.psf7 (r5), 0, 0
	psq_st   f8, OSContext.psf8 (r5), 0, 0
	psq_st   f9, OSContext.psf9 (r5), 0, 0
	psq_st   f10, OSContext.psf10 (r5), 0, 0
	psq_st   f11, OSContext.psf11 (r5), 0, 0
	psq_st   f12, OSContext.psf12 (r5), 0, 0
	psq_st   f13, OSContext.psf13 (r5), 0, 0
	psq_st   f14, OSContext.psf14 (r5), 0, 0
	psq_st   f15, OSContext.psf15 (r5), 0, 0
	psq_st   f16, OSContext.psf16 (r5), 0, 0
	psq_st   f17, OSContext.psf17 (r5), 0, 0
	psq_st   f18, OSContext.psf18 (r5), 0, 0
	psq_st   f19, OSContext.psf19 (r5), 0, 0
	psq_st   f20, OSContext.psf20 (r5), 0, 0
	psq_st   f21, OSContext.psf21 (r5), 0, 0
	psq_st   f22, OSContext.psf22 (r5), 0, 0
	psq_st   f23, OSContext.psf23 (r5), 0, 0
	psq_st   f24, OSContext.psf24 (r5), 0, 0
	psq_st   f25, OSContext.psf25 (r5), 0, 0
	psq_st   f26, OSContext.psf26 (r5), 0, 0
	psq_st   f27, OSContext.psf27 (r5), 0, 0
	psq_st   f28, OSContext.psf28 (r5), 0, 0
	psq_st   f29, OSContext.psf29 (r5), 0, 0
	psq_st   f30, OSContext.psf30 (r5), 0, 0
	psq_st   f31, OSContext.psf31 (r5), 0, 0

1:
	blr

	.size __OSSaveFPUContext, . - __OSSaveFPUContext
	.type __OSSaveFPUContext, @function
)");

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void OSLoadFPUContext(OSContext* fpuContext);
asm(R"(
	.global OSLoadFPUContext
OSLoadFPUContext:

	# Just a guess based on the UNUSED size.
	mr  r4, r3
	b   __OSLoadFPUContext

	.size OSLoadFPUContext, . - OSLoadFPUContext
	.type OSLoadFPUContext, @function
)");

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void OSSaveFPUContext(OSContext* fpuContext);
asm(R"(
	.global OSSaveFPUContext
OSSaveFPUContext:

	# Just a guess based on the UNUSED size.
	mr  r5, r3
	b   __OSSaveFPUContext

	.size OSSaveFPUContext, . - OSSaveFPUContext
	.type OSSaveFPUContext, @function
)");

/**
 * @TODO: Documentation
 */
void OSSetCurrentContext(OSContext* context)
{
	__OSCurrentContext                = context;
	__OSCurrentContextPhysicalAddress = (OSContext*)((uintptr_t)context & ~OS_BASE_UNCACHED);

	u32 tmp;
	if (__OSFPUContext == context) {
		context->srr1 |= MSR_FP;
		PPC_MOVE_FROM_MSR(tmp);
		tmp |= MSR_RI;
		PPC_MOVE_TO_MSR(tmp);
	} else {
		context->srr1 &= ~MSR_FP;
		PPC_MOVE_FROM_MSR(tmp);
		tmp &= ~MSR_FP;
		tmp |= MSR_RI;
		PPC_MOVE_TO_MSR(tmp);
		__mwerks_isync();
	}
}

/**
 * @TODO: Documentation
 */
OSContext* OSGetCurrentContext(void)
{
	return (OSContext*)__OSCurrentContext;
}

/**
 * @TODO: Documentation
 */
u32 OSSaveContext(OSContext* context);
asm(R"(
	.include "Dolphin/OS/OSContext.inc"

	.global OSSaveContext
OSSaveContext:

	stmw   r13, OSContext.gpr13 (r3)
	mfspr  r0, SPR_GQR1
	stw    r0, OSContext.gqr1 (r3)
	mfspr  r0, SPR_GQR2
	stw    r0, OSContext.gqr2 (r3)
	mfspr  r0, SPR_GQR3
	stw    r0, OSContext.gqr3 (r3)
	mfspr  r0, SPR_GQR4
	stw    r0, OSContext.gqr4 (r3)
	mfspr  r0, SPR_GQR5
	stw    r0, OSContext.gqr5 (r3)
	mfspr  r0, SPR_GQR6
	stw    r0, OSContext.gqr6 (r3)
	mfspr  r0, SPR_GQR7
	stw    r0, OSContext.gqr7 (r3)
	mfcr   r0
	stw    r0, OSContext.cr (r3)
	mflr   r0
	stw    r0, OSContext.lr (r3)
	stw    r0, OSContext.srr0 (r3)
	mfmsr  r0
	stw    r0, OSContext.srr1 (r3)
	mfctr  r0
	stw    r0, OSContext.ctr (r3)
	mfxer  r0
	stw    r0, OSContext.xer (r3)
	stw    r1, OSContext.gpr1 (r3)
	stw    r2, OSContext.gpr2 (r3)
	li     r0, 1
	stw    r0, OSContext.gpr3 (r3)
	li     r3, 0
	blr

	.size OSSaveContext, . - OSSaveContext
	.type OSSaveContext, @function
)");

/**
 * @TODO: Documentation
 */
void OSLoadContext(OSContext* context);
asm(R"(
	.include "Dolphin/OS/OSContext.inc"

	.global OSLoadContext
OSLoadContext:

	lis      r4,     __RAS_OSDisableInterrupts_begin @ha
	addi     r5, r4, __RAS_OSDisableInterrupts_begin @l
	lwz      r6, OSContext.srr0 (r3)
	cmplw    r6, r5
	blt      1f
	lis      r4,     __RAS_OSDisableInterrupts_end @ha
	addi     r0, r4, __RAS_OSDisableInterrupts_end @l
	cmplw    r6, r0
	bgt      1f
	stw      r5, OSContext.srr0 (r3)

1:  # _notInRAS

	lwz      r0, OSContext.gpr0 (r3)
	lwz      r1, OSContext.gpr1 (r3)
	lwz      r2, OSContext.gpr2 (r3)

	lhz      r4, OSContext.state (r3)
	rlwinm.  r5, r4, 0, 30, 30
	beq      2f
	rlwinm   r4, r4, 0, 31, 29
	sth      r4, OSContext.state (r3)
	lmw      r5, OSContext.gpr5 (r3)
	b        3f
2:  # notexc
	lmw      r13, OSContext.gpr13 (r3)
3:  # misc

	lwz      r4, OSContext.gqr1 (r3)
	mtspr    SPR_GQR1, r4
	lwz      r4, OSContext.gqr2 (r3)
	mtspr    SPR_GQR2, r4
	lwz      r4, OSContext.gqr3 (r3)
	mtspr    SPR_GQR3, r4
	lwz      r4, OSContext.gqr4 (r3)
	mtspr    SPR_GQR4, r4
	lwz      r4, OSContext.gqr5 (r3)
	mtspr    SPR_GQR5, r4
	lwz      r4, OSContext.gqr6 (r3)
	mtspr    SPR_GQR6, r4
	lwz      r4, OSContext.gqr7 (r3)
	mtspr    SPR_GQR7, r4

	lwz      r4, OSContext.cr (r3)
	mtcr     r4
	lwz      r4, OSContext.lr (r3)
	mtlr     r4
	lwz      r4, OSContext.ctr (r3)
	mtctr    r4
	lwz      r4, OSContext.xer (r3)
	mtxer    r4

	mfmsr    r4
	rlwinm   r4, r4, 0, 17, 15  # ~MSR_EE
	rlwinm   r4, r4, 0, 31, 29  # ~MSR_RI
	mtmsr    r4

	lwz      r4, OSContext.srr0 (r3)
	mtsrr0   r4
	lwz      r4, OSContext.srr1 (r3)
	mtsrr1   r4

	lwz      r4, OSContext.gpr4 (r3)
	lwz      r3, OSContext.gpr3 (r3)

	rfi

	.size OSLoadContext, . - OSLoadContext
	.type OSLoadContext, @function
)");

/**
 * @TODO: Documentation
 */
u32 OSGetStackPointer(void);
asm(R"(
	.global OSGetStackPointer
OSGetStackPointer:

	mr   r3, r1
	blr

	.size OSGetStackPointer, . - OSGetStackPointer
	.type OSGetStackPointer, @function
)");

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000010
 */
u32 OSSwitchStack(u32 newsp)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000030
 */
int OSSwitchFiber(u32 pc, u32 newsp)
{
	// UNUSED FUNCTION
}

/**
 * @TODO: Documentation
 */
void OSClearContext(OSContext* context)
{
	context->mode  = 0;
	context->state = 0;
	if (context == __OSFPUContext) {
		__OSFPUContext = NULL;
	}
}

/**
 * @TODO: Documentation
 */
void OSInitContext(OSContext* context, u32 pc, u32 newsp)
{
	register const int sda2Base asm("r2");
	register const int sdaBase asm("r13");

	context->srr0 = pc;
	context->srr1 = MSR_EE | MSR_IR | MSR_DR | MSR_RI | MSR_ME;
	context->cr   = 0;
	context->xer  = 0;

	for (int i = 0; i < ARRAY_SIZE(context->gpr); ++i)
		context->gpr[i] = 0;
	context->gpr[1]  = newsp;
	context->gpr[2]  = sda2Base;
	context->gpr[13] = sdaBase;

	for (int i = 0; i < ARRAY_SIZE(context->gqr); ++i)
		context->gqr[i] = OS_GQR_F32 | (OS_GQR_F32 << 16);

	OSClearContext(context);
}

/**
 * @TODO: Documentation
 */
void OSDumpContext(OSContext* context)
{
	u32 i;
	u32* p;

	OSReport("------------------------- Context 0x%08x -------------------------\n", context);

	for (i = 0; i < 16; ++i) {
		OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i, context->gpr[i], context->gpr[i], i + 16, context->gpr[i + 16],
		         context->gpr[i + 16]);
	}

	OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
	OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);

	OSReport("\nGQRs----------\n");
	for (i = 0; i < 4; ++i) {
		OSReport("gqr%d = 0x%08x \t gqr%d = 0x%08x\n", i, context->gqr[i], i + 4, context->gqr[i + 4]);
	}

	if (context->state & OS_CONTEXT_STATE_FPSAVED) {
		OSContext* currentContext;
		OSContext fpuContext;
		BOOL enabled;

		enabled        = OSDisableInterrupts();
		currentContext = OSGetCurrentContext();
		OSClearContext(&fpuContext);
		OSSetCurrentContext(&fpuContext);

		OSReport("\n\nFPRs----------\n");
		for (i = 0; i < 32; i += 2) {
			OSReport("fr%d \t= %d \t fr%d \t= %d\n", i, (u32)context->fpr[i], i + 1, (u32)context->fpr[i + 1]);
		}
		OSReport("\n\nPSFs----------\n");
		for (i = 0; i < 32; i += 2) {
			OSReport("ps%d \t= 0x%x \t ps%d \t= 0x%x\n", i, (u32)context->psf[i], i + 1, (u32)context->psf[i + 1]);
		}

		OSClearContext(&fpuContext);
		OSSetCurrentContext(currentContext);
		OSRestoreInterrupts(enabled);
	}

	OSReport("\nAddress:      Back Chain    LR Save\n");
	for (i = 0, p = (u32*)context->gpr[1]; p && (u32)p != 0xffffffff && i++ < 16; p = (u32*)*p) {
		OSReport("0x%08x:   0x%08x    0x%08x\n", p, p[0], p[1]);
	}
}

/**
 * @TODO: Documentation
 */
static void OSSwitchFPUContext(__OSException exception, OSContext* context);
asm(R"(
	.include "Dolphin/OS/OSContext.inc"
	.include "Dolphin/PPCArch.inc"

	.local OSSwitchFPUContext
OSSwitchFPUContext:

	mfmsr   r5
	ori     r5, r5, 0x2000 # MSR_FP
	mtmsr   r5
	isync
	lwz     r5, OSContext.srr1 (r4)
	ori     r5, r5, 0x2000 # MSR_FP
	mtsrr1  r5
	lis     r3, 0x800000D8 @ha
	lwz     r5, 0x800000D8 @l (r3)
	stw     r4, 0x800000D8 @l (r3)
	cmpw    r5, r4
	beq     _restoreAndExit
	cmpwi   r5, 0x0
	beq     _loadNewFPUContext
	bl      __OSSaveFPUContext
_loadNewFPUContext:
	bl      __OSLoadFPUContext
_restoreAndExit:
	lwz     r3, OSContext.cr (r4)
	mtcr    r3
	lwz     r3, OSContext.lr (r4)
	mtlr    r3
	lwz     r3, OSContext.srr0 (r4)
	mtsrr0  r3
	lwz     r3, OSContext.ctr (r4)
	mtctr   r3
	lwz     r3, OSContext.xer (r4)
	mtxer   r3
	lhz     r3, OSContext.state (r4)
	rlwinm  r3, r3, 0, 31, 29
	sth     r3, OSContext.state (r4)
	lwz     r5, OSContext.gpr5 (r4)
	lwz     r3, OSContext.gpr3 (r4)
	lwz     r4, OSContext.gpr4 (r4)
	rfi

	.size OSSwitchFPUContext, . - OSSwitchFPUContext
	.type OSSwitchFPUContext, @function
)");

/**
 * @TODO: Documentation
 */
void __OSContextInit(void)
{
	__OSSetExceptionHandler(__OS_EXCEPTION_FLOATING_POINT, OSSwitchFPUContext);
	__OSFPUContext = NULL;
	DBPrintf("FPU-unavailable handler installed\n");
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00012C
 */
void OSFillFPUContext(OSContext* context)
{
	// UNUSED FUNCTION
}
