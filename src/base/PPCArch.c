#include "Dolphin/PPCArch.h"

/**
 * @TODO: Documentation
 */
u32 PPCMfmsr(void)
{
	u32 result;
	PPC_MOVE_FROM_MSR(result);
	return result;
}

/**
 * @TODO: Documentation
 */
void PPCMtmsr(u32 value)
{
	PPC_MOVE_TO_MSR(value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00000C (Nonmatching)
 */
void PPCOrMsr(void)
{
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00000C (Nonmatching)
 */
void PPCAndMsr(void)
{
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00000C (Nonmatching)
 */
void PPCAndCMsr(void)
{
}

/**
 * @TODO: Documentation
 */
u32 PPCMfhid0(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_HID0, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMthid0(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_HID0, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfhid1(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_HID1, result);
	return result;
}

/**
 * @TODO: Documentation
 */
u32 PPCMfl2cr(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_L2CR, result);
	return result;
}

/**
 * @TODO: Documentation
 */
void PPCMtl2cr(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_L2CR, value);
}

/**
 * @TODO: Documentation
 */
void PPCMtdec(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_DEC, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfdec(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_DEC, result);
	return result;
}

/**
 * @TODO: Documentation
 */
void PPCSync(void)
{
	asm("sc");
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void PPCEieio(void)
{
	u32 oldMsr, tmpMsr, oldHID0, tmpHID0;

	PPC_MOVE_FROM_MSR(oldMsr);
	tmpMsr = oldMsr & ~MSR_EE;
	PPC_MOVE_TO_MSR(tmpMsr);

	PPC_MOVE_FROM_SPR(SPR_HID0, oldHID0);
	tmpHID0 = oldHID0 | HID0_ABE;
	PPC_MOVE_TO_SPR(SPR_HID0, tmpHID0);

	__mwerks_isync();
	__mwerks_eieio();
	__mwerks_isync();

	PPC_MOVE_TO_SPR(SPR_HID0, oldHID0);
	PPC_MOVE_TO_MSR(oldMsr);
	__mwerks_isync();
}

/**
 * @TODO: Documentation
 */
void PPCHalt(void)
{
	__mwerks_sync();
	for (;;) {
		asm(R"(
			nop
			li   r3, 0
			nop
			)");
	}
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfmmcr0(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_MMCR0, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtmmcr0(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_MMCR0, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfmmcr1(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_MMCR1, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtmmcr1(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_MMCR1, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfpmc1(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_PMC1, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtpmc1(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_PMC1, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfpmc2(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_PMC2, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtpmc2(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_PMC2, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfpmc3(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_PMC3, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtpmc3(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_PMC3, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfpmc4(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_PMC4, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtpmc4(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_PMC4, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfsia(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_SIA, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtsia(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_SIA, value);
}

/**
 * @TODO: Documentation
 */
u32 PPCMfhid2(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_HID2, result);
	return result;
}

/**
 * @TODO: Documentation
 */
void PPCMthid2(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_HID2, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00000C (Matching by size)
 */
u32 PPCMfwpar(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_WPAR, result);
	return result;
}

/**
 * @TODO: Documentation
 */
void PPCMtwpar(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_WPAR, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfdmaU(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_DMA_U, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfdmaL(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_DMA_L, result);
	return result;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtdmaU(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_DMA_U, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
void PPCMtdmaL(u32 value)
{
	PPC_MOVE_TO_SPR(SPR_DMA_L, value);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000008 (Matching by size)
 */
u32 PPCMfpvr(void)
{
	u32 result;
	PPC_MOVE_FROM_SPR(SPR_PVR, result);
	return result;
}
