#ifndef _DOLPHIN_OS_OSFASTCAST_H
#define _DOLPHIN_OS_OSFASTCAST_H

#include "Dolphin/OS/OSUtil.h"
#include "types.h"

BEGIN_SCOPE_EXTERN_C

/////// FAST CAST DEFINES ////////
// GQR formats.
#define OS_GQR_U8  (0x0004) // GQR 1
#define OS_GQR_U16 (0x0005) // GQR 2
#define OS_GQR_S8  (0x0006) // GQR 3
#define OS_GQR_S16 (0x0007) // GQR 4

// GQRs for fast casting.
#define OS_FASTCAST_U8  (2)
#define OS_FASTCAST_U16 (3)
#define OS_FASTCAST_S8  (4)
#define OS_FASTCAST_S16 (5)

//////////////////////////////////

/////// FAST CAST INLINES ////////
// Initialise fast casting.
static inline void OSInitFastCast()
{
	int tmp;

	asm("li        %[tmp],         %[gqrU8];"
	    "oris      %[tmp], %[tmp], %[gqrU8];"
	    "mtspr     GQR2, %[tmp];"
	    "li        %[tmp],         %[gqrU16];"
	    "oris      %[tmp], %[tmp], %[gqrU16];"
	    "mtspr     GQR3, %[tmp];"
	    "li        %[tmp],         %[gqrS8];"
	    "oris      %[tmp], %[tmp], %[gqrS8];"
	    "mtspr     GQR4, %[tmp];"
	    "li        %[tmp],         %[gqrS16];"
	    "oris      %[tmp], %[tmp], %[gqrS16];"
	    "mtspr     GQR5, %[tmp];"
	    : [tmp] "=r"(tmp)
	    : [gqrU8] "i"(OS_GQR_U8), [gqrU16] "i"(OS_GQR_U16), [gqrS8] "i"(OS_GQR_S8), [gqrS16] "i"(OS_GQR_S16));
}

// f32 to int.
// NB: should theoretically have these for u8/u16/s8/s16 eventually.
static inline s16 __OSf32tos16(register f32 inF)
{
	s16 out;
	u32 tmp;
	u32* tmpPtr = &tmp;

	asm("psq_st    inF, 0 (tmpPtr), 1, gqrI;"
	    "lha       out, 0 (tmpPtr);"
	    : [out] "=r"(out)
	    : [inF] "r"(inF), [tmpPtr] "r"(tmpPtr), [gqrI] "i"(OS_FASTCAST_S16));

	return out;
}

static inline void OSf32tos16(f32* f, s16* out)
{
	*out = __OSf32tos16(*f);
}

static inline u8 __OSf32tou8(register f32 inF)
{
	u8 out;
	u32 tmp;
	u32* tmpPtr = &tmp;

	asm("psq_st    inF, 0 (tmpPtr), 1, gqrI;"
	    "lbz       out, 0 (tmpPtr);"
	    : [out] "=r"(out)
	    : [inF] "r"(inF), [tmpPtr] "r"(tmpPtr), [gqrI] "i"(OS_FASTCAST_U8));

	return out;
}

static inline void OSf32tou8(f32* f, u8* out)
{
	*out = __OSf32tou8(*f);
}

static inline s8 __OSf32tos8(register f32 inF)
{
	s8 out;
	u32 tmp;
	u32* tmpPtr = &tmp;

	asm("psq_st    inF, 0(tmpPtr), 1, gqrI;"
	    "lbz       out, 0(tmpPtr);"
	    "extsb     out, out;"
	    : [out] "=r"(out)
	    : [inF] "r"(inF), [tmpPtr] "r"(tmpPtr), [gqrI] "i"(OS_FASTCAST_S8));

	return out;
}

static inline void OSf32tos8(f32* f, s8* out)
{
	*out = __OSf32tos8(*f);
}

// Int to f32.
// NB: should have these for u8/u16/s8/s16 eventually.

// TODO: make these based on above/as necessary.

//////////////////////////////////

END_SCOPE_EXTERN_C

#endif
