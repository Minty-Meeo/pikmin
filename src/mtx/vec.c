#include "Dolphin/vec.h"
#include "Dolphin/os.h"
#include <math.h>

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void C_VECAdd(const Vec* a, const Vec* b, Vec* ab)
{
	OSAssertMsgLine(0x57, a, "VECAdd():  NULL VecPtr 'a' ");
	OSAssertMsgLine(0x58, b, "VECAdd():  NULL VecPtr 'b' ");
	OSAssertMsgLine(0x59, ab, "VECAdd():  NULL VecPtr 'ab' ");

	ab->x = a->x + b->x;
	ab->y = a->y + b->y;
	ab->z = a->z + b->z;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000024 (Matching by size)
 */
void PSVECAdd(register const Vec* a, const register Vec* b, register Vec* ab)
{
	f32 tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;

	// asm("psq_l   %[tmp2], 0x0000 (%[a]), 0, 0"
	//     "psq_l   %[tmp4], 0x0000 (%[b]), 0, 0"
	//     "ps_add  %[tmp6], %[tmp2], %[tmp4]"
	//     "psq_st  %[tmp6], 0x0000 (%[ab]), 0, 0"
	//     "psq_l   %[tmp3], 0x0008 (%[a]), 1, 0"
	//     "psq_l   %[tmp5], 0x0008 (%[b]), 1, 0"
	//     "ps_add  %[tmp7], %[tmp3], %[tmp5]"
	//     "psq_st  %[tmp7], 0x0008 (%[ab]), 1, 0"
	//     : [tmp2] "=g"(tmp2), [tmp3] "=g"(tmp3), [tmp4] "=g"(tmp4), [tmp5] "=g"(tmp5), [tmp6] "=g"(tmp6), [tmp7] "=g"(tmp7)
	//     : [a] "g"(a), [b] "g"(b), [ab] "g"(ab));
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void C_VECSubtract(const Vec* a, const Vec* b, Vec* a_b)
{
	OSAssertMsgLine(0x9C, a, "VECSubtract():  NULL VecPtr 'a' ");
	OSAssertMsgLine(0x9D, b, "VECSubtract():  NULL VecPtr 'b' ");
	OSAssertMsgLine(0x9E, a_b, "VECSubtract():  NULL VecPtr 'a_b' ");

	a_b->x = a->x - b->x;
	a_b->y = a->y - b->y;
	a_b->z = a->z - b->z;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000024 (Matching by size)
 */
void PSVECSubtract(register const Vec* a, register const Vec* b, register Vec* a_b)
{
	f32 tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;

	// asm("psq_l   %[tmp2], 0x0000 (%[a]), 0, 0"
	//     "psq_l   %[tmp4], 0x0000 (%[b]), 0, 0"
	//     "ps_sub  %[tmp6], %[tmp2], %[tmp4]"
	//     "psq_st  %[tmp6], 0x0000 (%[a_b]), 0, 0"
	//     "psq_l   %[tmp3], 0x0008 (%[a]), 1, 0"
	//     "psq_l   %[tmp5], 0x0008 (%[b]), 1, 0"
	//     "ps_sub  %[tmp7], %[tmp3], %[tmp5]"
	//     "psq_st  %[tmp7], 0x0008 (%[a_b]), 1, 0"
	//     : [tmp2] "=g"(tmp2), [tmp3] "=g"(tmp3), [tmp4] "=g"(tmp4), [tmp5] "=g"(tmp5), [tmp6] "=g"(tmp6), [tmp7] "=g"(tmp7)
	//     : [a] "g"(a), [b] "g"(b), [a_b] "g"(a_b));
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000028 (Matching by size)
 */
void C_VECScale(const Vec* src, Vec* dst, f32 scale)
{
	OSAssertMsgLine(0xE2, src, "VECScale():  NULL VecPtr 'src' ");
	OSAssertMsgLine(0xE3, dst, "VECScale():  NULL VecPtr 'dst' ");

	dst->x = src->x * scale;
	dst->y = src->y * scale;
	dst->z = src->z * scale;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000020 (Nonmatching)
 */
void PSVECScale(register const Vec* src, register Vec* dst, register f32 scale)
{
	f32 vxy, vz, rxy, rz;

	// asm("psq_l     %[vxy], 0x0000 (%[src]), 0, 0"
	//     "psq_l     %[vz],  0x0008 (%[src]), 1, 0"
	//     "ps_muls0  %[rxy], %[vxy], %[scale]"
	//     "psq_st    %[rxy], 0x0000 (%[dst]), 0, 0"
	//     "ps_muls0  %[rz],  %[vz],  %[scale]"
	//     "psq_st    %[rz],  0x0008 (%[dst]), 1, 0"
	//     : [vxy] "=g"(vxy), [vz] "=g"(vz), [rxy] "=g"(rxy), [rz] "=g"(rz)
	//     : [src] "g"(src), [dst] "g"(dst), [scale] "g"(scale));
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000C8
 */
void C_VECNormalize(const Vec* src, Vec* unit)
{
	f32 mag;

	OSAssertMsgLine(0x127, src, "VECNormalize():  NULL VecPtr 'src' ");
	OSAssertMsgLine(0x128, unit, "VECNormalize():  NULL VecPtr 'unit' ");

	mag = (src->x * src->x) + (src->y * src->y) + (src->z * src->z);
	OSAssertMsgLine(0x12D, 0.0f != mag, "VECNormalize():  zero magnitude vector ");

	mag     = 1.0f / sqrtf(mag);
	unit->x = src->x * mag;
	unit->y = src->y * mag;
	unit->z = src->z * mag;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000048
 */
void PSVECNormalize(register const Vec* src, register Vec* unit)
{
	register f32 c_half;
	register f32 c_three;
	register f32 v1_xy;
	register f32 v1_z;
	register f32 xx_zz;
	register f32 xx_yy;
	register f32 sqsum;
	register f32 rsqrt;
	register f32 nwork0;
	register f32 nwork1;

	c_half  = 0.5f;
	c_three = 3.0f;

	// asm("psq_l     %[v1_xy] , 0x0000 (%[src]), 0, 0"
	//     "ps_mul    %[xx_yy] , %[v1_xy], %[v1_xy]"
	//     "psq_l     %[v1_z]  , 0x0008 (%[src]), 1, 0"
	//     "ps_madd   %[xx_zz] , %[v1_z] , %[v1_z] , %[xx_yy]"
	//     "ps_sum0   %[sqsum] , %[xx_zz], %[v1_z] , %[xx_yy]"
	//     "frsqrte   %[rsqrt] , %[sqsum]"
	//     "fmuls     %[nwork0], %[rsqrt], %[rsqrt]"
	//     "fmuls     %[nwork1], %[rsqrt], %[c_half]"
	//     "fnmsubs   %[nwork0], %[nwork0], %[sqsum] , %[c_three]"
	//     "fmuls     %[rsqrt] , %[nwork0], %[nwork1]"
	//     "ps_muls0  %[v1_xy] , %[v1_xy], %[rsqrt]"
	//     "psq_st    %[v1_xy] , 0x0000 (%[unit]), 0, 0"
	//     "ps_muls0  %[v1_z]  , %[v1_z] , %[rsqrt]"
	//     "psq_st    %[v1_z]  , 0x0008 (%[unit]), 1, 0"
	//     : [v1_xy] "=g"(v1_xy), [v1_z] "=g"(v1_z), [xx_zz] "=g"(xx_zz), [xx_yy] "=g"(xx_yy), [sqsum] "=g"(sqsum), [rsqrt] "=g"(rsqrt),
	//       [nwork0] "=g"(nwork0), [nwork1] "=g"(nwork1)
	//     : [src] "g"(src), [unit] "g"(unit), [c_half] "g"(c_half), [c_three] "g"(c_three));
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000024
 */
f32 C_VECSquareMag(const Vec* v)
{
	f32 sqmag;

	OSAssertMsgLine(0x182, v, "VECMag():  NULL VecPtr 'v' ");

	sqmag = (v->x * v->x) + (v->y * v->y) + (v->z * v->z);
	return sqmag;
}

/**
 * @TODO: Documentation
 * @note This must be a file-scope ASM function for matching purposes.
 */
f32 PSVECSquareMag(register const Vec* v)
{
	f32 res;
	f32 tmp2, tmp3, tmp4, tmp5;

	// asm("psq_l    %[tmp2], 0x0000 (%[v]), 0, 0"
	//     "ps_mul   %[tmp3], %[tmp2], %[tmp2]"
	//     "lfs      %[tmp4], 0x0008 (%[v])"
	//     "ps_madd  %[tmp5], %[tmp4], %[tmp4], %[tmp3]"
	//     "ps_sum0  %[res], %[tmp5], %[tmp3], %[tmp3]"
	//     : [res] "=g"(res), [tmp2] "=g"(tmp2), [tmp3] "=g"(tmp3), [tmp4] "=g"(tmp4), [tmp5] "=g"(tmp5)
	//     : [v] "g"(v));
}

/**
 * @TODO: Documentation
 */
f32 C_VECMag(const Vec* v)
{
	// While `PS`-prefixed Vector functions are more efficient, the `C_`-prefixed Vector functions are meant to avoid paired-singles.
	return sqrtf(TERNARY_BUGFIX(C_VECSquareMag, PSVECSquareMag)(v));
}

/**
 * @TODO: Documentation
 */
f32 PSVECMag(register const Vec* v)
{
	register f32 res, tmp0, tmp1, tmp2;
	register f32 c_three;
	register f32 c_half;

	c_half  = 0.5f;
	c_three = 3.0f;

	// asm("psq_l    f0, 0x0000 (v), 0, 0"
	//     "ps_mul   f0, f0, f0"
	//     "lfs      f1, 0x0008 (v)"
	//     "ps_madd  f1, f1, f1, f0"
	//     "ps_sum0  f1, f1, f0, f0"
	//     "frsqrte  f0, f1"
	//     "fmuls    f2, f0, f0"
	//     "fmuls    f0, f0, c_half"
	//     "fnmsubs  f2, f2, f1, c_three"
	//     "fmuls    f0, f2, f0"
	//     "fsel     f0, f0, f0, f1"
	//     "fmuls    res, f1, f0");

	return res;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000030
 */
f32 C_VECDotProduct(const Vec* a, const Vec* b)
{
	f32 dot;

	OSAssertMsgLine(0x1D1, a, "VECDotProduct():  NULL VecPtr 'a' ");
	OSAssertMsgLine(0x1D2, b, "VECDotProduct():  NULL VecPtr 'b' ");

	dot = (a->z * b->z) + ((a->x * b->x) + (a->y * b->y));
	return dot;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000020
 */
f32 PSVECDotProduct(register const Vec* a, register const Vec* b)
{
	register f32 res;

#ifdef __MWERKS__
	asm {
		psq_l    fp2, 0x0004 (a), 0, 0
		psq_l    fp3, 0x0004 (b), 0, 0
		ps_mul   fp2, fp2, fp3
		psq_l    fp5, 0x0000 (a), 0, 0
		psq_l    fp4, 0x0000 (b), 0, 0
		ps_madd  fp3, fp5, fp4, fp2
		ps_sum0  res, fp3, fp2, fp2
	}
#endif

	return res;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00004C
 */
void C_VECCrossProduct(const Vec* a, const Vec* b, Vec* axb)
{
	Vec tmp;

	OSAssertMsgLine(0x20F, a, "VECCrossProduct():  NULL VecPtr 'a' ");
	OSAssertMsgLine(0x210, b, "VECCrossProduct():  NULL VecPtr 'b' ");
	OSAssertMsgLine(0x211, axb, "VECCrossProduct():  NULL VecPtr 'axb' ");

	tmp.x  = (a->y * b->z) - (a->z * b->y);
	tmp.y  = (a->z * b->x) - (a->x * b->z);
	tmp.z  = (a->x * b->y) - (a->y * b->x);
	axb->x = tmp.x;
	axb->y = tmp.y;
	axb->z = tmp.z;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00003C
 */
void PSVECCrossProduct(register const Vec* a, register const Vec* b, register Vec* axb)
{
#ifdef __MWERKS__
	asm {
		psq_l       fp1, 0x0000 (b), 0, 0
		lfs         fp2, 0x0008 (a)
		psq_l       fp0, 0x0000 (a), 0, 0
		ps_merge10  fp6, fp1, fp1
		lfs         fp3, 0x0008 (b)
		ps_mul      fp4, fp1, fp2
		ps_muls0    fp7, fp1, fp0
		ps_msub     fp5, fp0, fp3, fp4
		ps_msub     fp8, fp0, fp6, fp7
		ps_merge11  fp9, fp5, fp5
		ps_merge01  fp10, fp5, fp8
		psq_st      fp9, 0x0000 (axb), 1, 0
		ps_neg      fp10, fp10
		psq_st      fp10, 0x0004 (axb), 0, 0
	}
#endif
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000D8
 */
void C_VECHalfAngle(const Vec* a, const Vec* b, Vec* half)
{
	Vec aTmp;
	Vec bTmp;
	Vec hTmp;

	OSAssertMsgLine(0x27F, a, "VECHalfAngle():  NULL VecPtr 'a' ");
	OSAssertMsgLine(0x280, b, "VECHalfAngle():  NULL VecPtr 'b' ");
	OSAssertMsgLine(0x281, half, "VECHalfAngle():  NULL VecPtr 'half' ");

	aTmp.x = -a->x;
	aTmp.y = -a->y;
	aTmp.z = -a->z;
	bTmp.x = -b->x;
	bTmp.y = -b->y;
	bTmp.z = -b->z;
	C_VECNormalize(&aTmp, &aTmp);
	C_VECNormalize(&bTmp, &bTmp);
	C_VECAdd(&aTmp, &bTmp, &hTmp);
	if (C_VECDotProduct(&hTmp, &hTmp) > 0.0f) {
		C_VECNormalize(&hTmp, half);
		return;
	}
	*half = hTmp;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000D4
 */
void C_VECReflect(const Vec* src, const Vec* normal, Vec* dst)
{
	f32 cosA;
	Vec uI;
	Vec uN;

	OSAssertMsgLine(0x2B7, src, "VECReflect():  NULL VecPtr 'src' ");
	OSAssertMsgLine(0x2B8, normal, "VECReflect():  NULL VecPtr 'normal' ");
	OSAssertMsgLine(0x2B9, dst, "VECReflect():  NULL VecPtr 'dst' ");

	uI.x = -src->x;
	uI.y = -src->y;
	uI.z = -src->z;
	C_VECNormalize(&uI, &uI);
	C_VECNormalize(normal, &uN);
	cosA   = C_VECDotProduct(&uI, &uN);
	dst->x = (2.0f * uN.x * cosA) - uI.x;
	dst->y = (2.0f * uN.y * cosA) - uI.y;
	dst->z = (2.0f * uN.z * cosA) - uI.z;
	C_VECNormalize(dst, dst);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00003C
 */
f32 C_VECSquareDistance(const Vec* a, const Vec* b)
{
	Vec diff;

	diff.x = a->x - b->x;
	diff.y = a->y - b->y;
	diff.z = a->z - b->z;
	return (diff.z * diff.z) + ((diff.x * diff.x) + (diff.y * diff.y));
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000028
 */
f32 PSVECSquareDistance(register const Vec* a, register const Vec* b)
{
	register f32 res;

#ifdef __MWERKS__
	asm {
		psq_l    fp2, 0x0004 (a), 0, 0
		psq_l    fp3, 0x0004 (b), 0, 0
		ps_sub   fp2, fp2, fp3
		psq_l    fp5, 0x0000 (a), 0, 0
		psq_l    fp6, 0x0000 (b), 0, 0
		ps_mul   fp4, fp2, fp2
		ps_sub   fp6, fp5, fp6
		ps_madd  fp5, fp6, fp6, fp4
		ps_sum0  res, fp5, fp4, fp4
	}
#endif

	return res;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000088
 */
f32 C_VECDistance(const Vec* a, const Vec* b)
{
	return sqrtf(C_VECSquareDistance(a, b));
}

f32 PSVECDistance(register const Vec* a, register const Vec* b)
{
	register f32 res;
	register f32 c_half;
	register f32 c_three;

#ifdef __MWERKS__
	asm {
		psq_l    fp0, 4 (a), 0, 0
        psq_l    fp1, 4 (b), 0, 0
        ps_sub   fp2, f0, fp1
        psq_l    fp0, 0 (a), 0, 0
        psq_l    fp1, 0 (b), 0, 0
        ps_mul   fp2, fp2, fp2
        ps_sub   fp0, fp0, fp1
	}
	c_half = 0.5f;
	asm {
        ps_madd  fp0, fp0, fp0, fp2
        ps_sum0  fp0, fp0, fp2, fp2
	}
	c_three = 3.0f;
	asm {
        frsqrte  fp1, fp0
        fmuls    fp2, fp1, fp1
        fmuls    fp1, fp1, c_half
        fnmsubs  fp2, fp2, fp0, c_three
        fmuls    fp1, fp2, fp1
        fsel     fp1, fp1, fp1, fp0
        fmuls    res, fp0, fp1
	}
#endif

	return res;
}
