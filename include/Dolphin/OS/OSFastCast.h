#ifndef _DOLPHIN_OS_OSFASTCAST_H
#define _DOLPHIN_OS_OSFASTCAST_H

#include "Dolphin/PPCArch.h"
#include "types.h"

BEGIN_SCOPE_EXTERN_C

/////////////// FAST CAST DEFINES /////////////////////////////////////////////////////////////////

// Paired-singles quantization TYPE and SCALE encodings for GPRs for fast-casting
//  - Types 1-3 are reserved by PowerPC 750cl.
//  - Fast-casting exclusively uses SCALE = 0.

#define OS_GQR_F32 (0x0000) // Single-precision floating-point (no conversion)
#define OS_GQR_U8  (0x0004) // Unsigned 8-bit integer
#define OS_GQR_U16 (0x0005) // Unsigned 16-bit integer
#define OS_GQR_S8  (0x0006) // Signed 8-bit integer
#define OS_GQR_S16 (0x0007) // Signed 16-bit integer

// GQRs reserved for fast-casting (0-1 are reserved by the compiler)

#define OS_FASTCAST_U8  (2)
#define OS_FASTCAST_U16 (3)
#define OS_FASTCAST_S8  (4)
#define OS_FASTCAST_S16 (5)

///////////////////////////////////////////////////////////////////////////////////////////////////

/////////////// FAST CAST INLINES /////////////////////////////////////////////////////////////////

static inline void OSInitFastCast(void)
{
	u32 ldst;

	ldst = OS_GQR_U8 | (OS_GQR_U8 << 16);
	PPC_MOVE_TO_SPR(SPR_GQR2, ldst);

	ldst = OS_GQR_U16 | (OS_GQR_U16 << 16);
	PPC_MOVE_TO_SPR(SPR_GQR3, ldst);

	ldst = OS_GQR_S8 | (OS_GQR_S8 << 16);
	PPC_MOVE_TO_SPR(SPR_GQR4, ldst);

	ldst = OS_GQR_S16 | (OS_GQR_S16 << 16);
	PPC_MOVE_TO_SPR(SPR_GQR5, ldst);
}

#define OSFloatToInt(_in, _out, _fastcast)           \
	f64 tmp;                                         \
	asm("lfs     %[tmp], 0 (%[in]);"                 \
	    "psq_st  %[tmp], 0 (%[out]), 1, %[fastcast]" \
	    : [tmp] "=&f"(tmp), "=m"(*_out)              \
	    : [in] "r"(_in), [out] "r"(_out), [fastcast] "i"(_fastcast), "m"(*in))

#define OSIntToFloat(_in, _out, _fastcast)          \
	f64 tmp;                                        \
	asm("psq_l  %[tmp], 0 (%[in]), 1, %[fastcast];" \
	    "stfs   %[tmp], 0 (%[out])"                 \
	    : [tmp] "=&f"(tmp), "=m"(*_out)             \
	    : [in] "r"(_in), [out] "r"(_out), [fastcast] "i"(_fastcast), "m"(*in))

static inline void OSf32tou8(f32* in, u8* out)
{
	OSFloatToInt(in, out, OS_FASTCAST_U8);
}

static inline void OSf32tou16(f32* in, u16* out)
{
	OSFloatToInt(in, out, OS_FASTCAST_U16);
}

static inline void OSf32tos8(f32* in, s8* out)
{
	OSFloatToInt(in, out, OS_FASTCAST_S8);
}

static inline void OSf32tos16(f32* in, s16* out)
{
	OSFloatToInt(in, out, OS_FASTCAST_S16);
}

static inline void OSu8tof32(u8* in, f32* out)
{
	OSIntToFloat(in, out, OS_FASTCAST_U8);
}

static inline void OSu16tof32(u16* in, f32* out)
{
	OSIntToFloat(in, out, OS_FASTCAST_U16);
}

static inline void OSs8tof32(s8* in, f32* out)
{
	OSIntToFloat(in, out, OS_FASTCAST_S8);
}

static inline void OSs16tof32(s16* in, f32* out)
{
	OSIntToFloat(in, out, OS_FASTCAST_S16);
}

#undef OSFloatToInt
#undef OSIntToFloat

///////////////////////////////////////////////////////////////////////////////////////////////////

END_SCOPE_EXTERN_C

#endif
