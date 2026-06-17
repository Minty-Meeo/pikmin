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
void PSVECAdd(const Vec* a, const Vec* b, Vec* ab)
{
	return C_VECAdd(a, b, ab);
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
void PSVECSubtract(const Vec* a, const Vec* b, Vec* a_b)
{
	return C_VECSubtract(a, b, a_b);
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
void PSVECScale(const Vec* src, Vec* dst, f32 scale)
{
	return C_VECScale(src, dst, scale);
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
void PSVECNormalize(const Vec* src, Vec* unit)
{
	return C_VECNormalize(src, unit);
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
 */
f32 PSVECSquareMag(const Vec* v)
{
	return C_VECSquareMag(v);
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
f32 PSVECMag(const Vec* v)
{
	return C_VECMag(v);
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
f32 PSVECDotProduct(const Vec* a, const Vec* b)
{
	return C_VECDotProduct(a, b);
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
void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb)
{
	return C_VECCrossProduct(a, b, axb);
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
f32 PSVECSquareDistance(const Vec* a, const Vec* b)
{
	return C_VECSquareDistance(a, b);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000088
 */
f32 C_VECDistance(const Vec* a, const Vec* b)
{
	return sqrtf(C_VECSquareDistance(a, b));
}

f32 PSVECDistance(const Vec* a, const Vec* b)
{
	return C_VECDistance(a, b);
}
