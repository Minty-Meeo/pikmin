#include "Dolphin/OS/OSError.h"
#include "Dolphin/mtx.h"
#include <math.h>

// Technically not required, but "mtx.c" needs this pragma so I feel it belongs here too.
#pragma dont_inline on

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00009C (Matching by size)
 */
void C_MTXFrustum(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f)
{
	f32 tmp;

	OSAssertMsgLine(105, m, "MTXFrustum():  NULL Mtx44Ptr 'm' ");
	OSAssertMsgLine(106, t != b, "MTXFrustum():  't' and 'b' clipping planes are equal ");
	OSAssertMsgLine(107, l != r, "MTXFrustum():  'l' and 'r' clipping planes are equal ");
	OSAssertMsgLine(108, n != f, "MTXFrustum():  'n' and 'f' clipping planes are equal ");

	tmp       = 1.0f / (r - l);
	m[0][0]   = (2 * n) * tmp;
	m[0][1]   = 0.0f;
	m[0][2]   = (r + l) * tmp;
	m[0][3]   = 0.0f;

	tmp       = 1.0f / (t - b);
	m[1][0]   = 0.0f;
	m[1][1]   = (2 * n) * tmp;
	m[1][2]   = (t + b) * tmp;
	m[1][3]   = 0.0f;

	tmp       = 1.0f / (f - n);
	m[2][0]   = 0.0f;
	m[2][1]   = 0.0f;
	m[2][2]   = -(1 * n) * tmp;
	m[2][3]   = -(f * n) * tmp;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = -1.0f;
	m[3][3] = 0.0f;
}

/**
 * @TODO: Documentation
 */
void C_MTXPerspective(Mtx44 m, f32 fovY, f32 aspect, f32 n, f32 f)
{
	f32 angle;
	f32 cot;
	f32 tmp;

	OSAssertMsgLine(179, m, "MTXPerspective():  NULL Mtx44Ptr 'm' ");
	OSAssertMsgLine(180, (fovY > 0.0) && (fovY < 180.0), "MTXPerspective():  'fovY' out of range ");
	OSAssertMsgLine(181, 0.0f != aspect, "MTXPerspective():  'aspect' is 0 ");

	angle = (0.5f * fovY);
	angle = MTXDegToRad(angle);
	cot   = 1.0f / tanf(angle);

	m[0][0] = (cot / aspect);
	m[0][1] = 0.0f;
	m[0][2] = 0.0f;
	m[0][3] = 0.0f;

	m[1][0] = 0.0f;
	m[1][1] = (cot);
	m[1][2] = 0.0f;
	m[1][3] = 0.0f;

	tmp       = 1.0f / (f - n);
	m[2][0]   = 0.0f;
	m[2][1]   = 0.0f;
	m[2][2]   = -(1 * n) * tmp;
	m[2][3]   = -(f * n) * tmp;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = -1.0f;
	m[3][3] = 0.0f;
}

/**
 * @TODO: Documentation
 */
void C_MTXOrtho(Mtx44 m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 f)
{
	f32 tmp;

	OSAssertMsgLine(254, m, "MTXOrtho():  NULL Mtx44Ptr 'm' ");
	OSAssertMsgLine(255, t != b, "MTXOrtho():  't' and 'b' clipping planes are equal ");
	OSAssertMsgLine(256, l != r, "MTXOrtho():  'l' and 'r' clipping planes are equal ");
	OSAssertMsgLine(257, n != f, "MTXOrtho():  'n' and 'f' clipping planes are equal ");

	tmp       = 1.0f / (r - l);
	m[0][0]   = 2.0f * tmp;
	m[0][1]   = 0.0f;
	m[0][2]   = 0.0f;
	m[0][3]   = (tmp * -(r + l));

	tmp       = 1.0f / (t - b);
	m[1][0]   = 0.0f;
	m[1][1]   = 2.0f * tmp;
	m[1][2]   = 0.0f;
	m[1][3]   = -(t + b) * tmp;

	tmp       = 1.0f / (f - n);
	m[2][0]   = 0.0f;
	m[2][1]   = 0.0f;
	m[2][2]   = (-1.0f * tmp);
	m[2][3]   = (-f * tmp);

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = 0.0f;
	m[3][3] = 1.0f;
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00004c (Matching by size)
 */
void C_MTX44Identity(Mtx44 m)
{
	OSAssertMsgLine(324, m, "MTX44Identity():  NULL Mtx44 'm' ");

	m[0][0] = 1.0f;
	m[0][1] = 0.0f;
	m[0][2] = 0.0f;
	m[0][3] = 0.0f;

	m[1][0] = 0.0f;
	m[1][1] = 1.0f;
	m[1][2] = 0.0f;
	m[1][3] = 0.0f;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = 1.0f;
	m[2][3] = 0.0f;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = 0.0f;
	m[3][3] = 1.0f;
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void PSMTX44Identity(Mtx44 m)
{
	return C_MTX44Identity(m);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00008c (Matching by size)
 */
void C_MTX44Copy(const Mtx44 src, Mtx44 dst)
{
	OSAssertMsgLine(382, src, "MTX44Copy():  NULL Mtx44Ptr 'src' ");
	OSAssertMsgLine(383, dst, "MTX44Copy():  NULL Mtx44Ptr 'dst' ");

	if (src != dst) {
		dst[0][0] = src[0][0];
		dst[0][1] = src[0][1];
		dst[0][2] = src[0][2];
		dst[0][3] = src[0][3];

		dst[1][0] = src[1][0];
		dst[1][1] = src[1][1];
		dst[1][2] = src[1][2];
		dst[1][3] = src[1][3];

		dst[2][0] = src[2][0];
		dst[2][1] = src[2][1];
		dst[2][2] = src[2][2];
		dst[2][3] = src[2][3];

		dst[3][0] = src[3][0];
		dst[3][1] = src[3][1];
		dst[3][2] = src[3][2];
		dst[3][3] = src[3][3];
	}
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000044 (Matching by size)
 */
void PSMTX44Copy(const Mtx44 src, Mtx44 dst)
{
	return C_MTX44Copy(src, dst);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000450 (Matching by size)
 */
void C_MTX44Concat(const Mtx44 a, const Mtx44 b, Mtx44 ab)
{
	Mtx44 tmp;
	Mtx44Ptr m;

	OSAssertMsgLine(454, a, "MTX44Concat():  NULL Mtx44Ptr 'a'  ");
	OSAssertMsgLine(455, b, "MTX44Concat():  NULL Mtx44Ptr 'b'  ");
	OSAssertMsgLine(456, ab, "MTX44Concat():  NULL Mtx44Ptr 'ab' ");

	if (ab == a || ab == b) {
		m = tmp;
	} else {
		m = ab;
	}

	m[0][0] = (a[0][0] * b[0][0]) + (a[0][1] * b[1][0]) + (a[0][2] * b[2][0]) + (a[0][3] * b[3][0]);
	m[0][1] = (a[0][0] * b[0][1]) + (a[0][1] * b[1][1]) + (a[0][2] * b[2][1]) + (a[0][3] * b[3][1]);
	m[0][2] = (a[0][0] * b[0][2]) + (a[0][1] * b[1][2]) + (a[0][2] * b[2][2]) + (a[0][3] * b[3][2]);
	m[0][3] = (a[0][0] * b[0][3]) + (a[0][1] * b[1][3]) + (a[0][2] * b[2][3]) + (a[0][3] * b[3][3]);

	m[1][0] = (a[1][0] * b[0][0]) + (a[1][1] * b[1][0]) + (a[1][2] * b[2][0]) + (a[1][3] * b[3][0]);
	m[1][1] = (a[1][0] * b[0][1]) + (a[1][1] * b[1][1]) + (a[1][2] * b[2][1]) + (a[1][3] * b[3][1]);
	m[1][2] = (a[1][0] * b[0][2]) + (a[1][1] * b[1][2]) + (a[1][2] * b[2][2]) + (a[1][3] * b[3][2]);
	m[1][3] = (a[1][0] * b[0][3]) + (a[1][1] * b[1][3]) + (a[1][2] * b[2][3]) + (a[1][3] * b[3][3]);

	m[2][0] = (a[2][0] * b[0][0]) + (a[2][1] * b[1][0]) + (a[2][2] * b[2][0]) + (a[2][3] * b[3][0]);
	m[2][1] = (a[2][0] * b[0][1]) + (a[2][1] * b[1][1]) + (a[2][2] * b[2][1]) + (a[2][3] * b[3][1]);
	m[2][2] = (a[2][0] * b[0][2]) + (a[2][1] * b[1][2]) + (a[2][2] * b[2][2]) + (a[2][3] * b[3][2]);
	m[2][3] = (a[2][0] * b[0][3]) + (a[2][1] * b[1][3]) + (a[2][2] * b[2][3]) + (a[2][3] * b[3][3]);

	m[3][0] = (a[3][0] * b[0][0]) + (a[3][1] * b[1][0]) + (a[3][2] * b[2][0]) + (a[3][3] * b[3][0]);
	m[3][1] = (a[3][0] * b[0][1]) + (a[3][1] * b[1][1]) + (a[3][2] * b[2][1]) + (a[3][3] * b[3][1]);
	m[3][2] = (a[3][0] * b[0][2]) + (a[3][1] * b[1][2]) + (a[3][2] * b[2][2]) + (a[3][3] * b[3][2]);
	m[3][3] = (a[3][0] * b[0][3]) + (a[3][1] * b[1][3]) + (a[3][2] * b[2][3]) + (a[3][3] * b[3][3]);

	if (m == tmp) {
		C_MTX44Copy(tmp, ab);
	}
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000104 (Matching by size)
 */
void PSMTX44Concat(const Mtx44 a, const Mtx44 b, Mtx44 ab)
{
	return C_MTX44Concat(a, b, ab);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 0000c4 (Matching by size)
 */
void C_MTX44Transpose(const Mtx44 src, Mtx44 xPose)
{
	Mtx44 tmp;
	Mtx44Ptr m;

	OSAssertMsgLine(637, src, "MTX44Transpose():  NULL Mtx44Ptr 'src' ");
	OSAssertMsgLine(638, xPose, "MTX44Transpose():  NULL Mtx44Ptr 'xPose' ");

	if (src == xPose) {
		m = tmp;
	} else {
		m = xPose;
	}

	m[0][0] = src[0][0];
	m[0][1] = src[1][0];
	m[0][2] = src[2][0];
	m[0][3] = src[3][0];

	m[1][0] = src[0][1];
	m[1][1] = src[1][1];
	m[1][2] = src[2][1];
	m[1][3] = src[3][1];

	m[2][0] = src[0][2];
	m[2][1] = src[1][2];
	m[2][2] = src[2][2];
	m[2][3] = src[3][2];

	m[3][0] = src[0][3];
	m[3][1] = src[1][3];
	m[3][2] = src[2][3];
	m[3][3] = src[3][3];

	if (m == tmp) {
		C_MTX44Copy(tmp, xPose);
	}
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000064 (Matching by size)
 */
void PSMTX44Transpose(const Mtx44 src, Mtx44 xPose)
{
	return C_MTX44Transpose(src, xPose);
}

#define SWAP(a, b) \
	{              \
		f32 tmp;   \
		tmp = a;   \
		a   = b;   \
		b   = tmp; \
	}

/**
 * @todo Documentation
 * @note UNUSED Size: 0003f0 (Nonmatching)
 */
u32 C_MTX44Inverse(const Mtx44 src, Mtx44 inv)
{
	Mtx44 gjm;
	s32 i;
	s32 j;
	s32 k;
	f32 w;
	f32 max;
	s32 swp;
	f32 ftmp;

	OSAssertMsgLine(734, src, "MTX44Inverse():  NULL Mtx44Ptr 'src' ");
	OSAssertMsgLine(735, inv, "MTX44Inverse():  NULL Mtx44Ptr 'inv' ");

	C_MTX44Copy(src, gjm);
	C_MTX44Identity(inv);

	for (i = 0; i < 4; i++) {
		max = 0.0f;
		swp = i;

		for (k = i; k < 4; k++) {
			ftmp = fabsf(gjm[k][i]);
			if (ftmp > max) {
				max = ftmp;
				swp = k;
			}
		}

		if (max == 0.0f) {
			return FALSE;
		}

		if (swp != i) {
			for (k = 0; k < 4; k++) {
				SWAP(gjm[i][k], gjm[swp][k]);
				SWAP(inv[i][k], inv[swp][k]);
			}
		}

		w = 1.0f / gjm[i][i];
		for (j = 0; j < 4; j++) {
			gjm[i][j] *= w;
			inv[i][j] *= w;
		}

		for (k = 0; k < 4; k++) {
			if (k != i) {
				w = gjm[k][i];
				for (j = 0; j < 4; j++) {
					gjm[k][j] -= gjm[i][j] * w;
					inv[k][j] -= inv[i][j] * w;
				}
			}
		}
	}

	return TRUE;
}

#undef SWAP

/**
 * @todo Documentation
 * @note UNUSED Size: 00004c (Matching by size)
 */
void C_MTX44Trans(Mtx44 m, f32 xT, f32 yT, f32 zT)
{
	OSAssertMsgLine(835, m, "MTX44Trans():  NULL Mtx44Ptr 'm' ");

	m[0][0] = 1.0f;
	m[0][1] = 0.0f;
	m[0][2] = 0.0f;
	m[0][3] = xT;

	m[1][0] = 0.0f;
	m[1][1] = 1.0f;
	m[1][2] = 0.0f;
	m[1][3] = yT;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = 1.0f;
	m[2][3] = zT;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = 0.0f;
	m[3][3] = 1.0f;
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00003c (Matching by size)
 */
void PSMTX44Trans(Mtx44 m, f32 xT, f32 yT, f32 zT)
{
	return C_MTX44Trans(m, xT, yT, zT);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000098 (Matching by size)
 */
void C_MTX44TransApply(const Mtx44 src, Mtx44 dst, f32 xT, f32 yT, f32 zT)
{
	OSAssertMsgLine(899, src, "MTX44TransApply(): NULL Mtx44Ptr 'src' ");
	OSAssertMsgLine(900, dst, "MTX44TransApply(): NULL Mtx44Ptr 'dst' ");

	if (src != dst) {
		dst[0][0] = src[0][0];
		dst[0][1] = src[0][1];
		dst[0][2] = src[0][2];

		dst[1][0] = src[1][0];
		dst[1][1] = src[1][1];
		dst[1][2] = src[1][2];

		dst[2][0] = src[2][0];
		dst[2][1] = src[2][1];
		dst[2][2] = src[2][2];

		dst[3][0] = src[3][0];
		dst[3][1] = src[3][1];
		dst[3][2] = src[3][2];

		dst[3][3] = src[3][3];
	}

	dst[0][3] = (src[0][3] + xT);
	dst[1][3] = (src[1][3] + yT);
	dst[2][3] = (src[2][3] + zT);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00005c (Matching by size)
 */
void PSMTX44TransApply(const Mtx44 src, Mtx44 dst, f32 xT, f32 yT, f32 zT)
{
	return C_MTX44TransApply(src, dst, xT, yT, zT);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00004c (Matching by size)
 */
void C_MTX44Scale(Mtx44 m, f32 xS, f32 yS, f32 zS)
{
	OSAssertMsgLine(976, m, "MTX44Scale():  NULL Mtx44Ptr 'm' ");

	m[0][0] = xS;
	m[0][1] = 0.0f;
	m[0][2] = 0.0f;
	m[0][3] = 0.0f;

	m[1][0] = 0.0f;
	m[1][1] = yS;
	m[1][2] = 0.0f;
	m[1][3] = 0.0f;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = zS;
	m[2][3] = 0.0f;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = 0.0f;
	m[3][3] = 1.0f;
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void PSMTX44Scale(Mtx44 m, f32 xS, f32 yS, f32 zS)
{
	return C_MTX44Scale(m, xS, yS, zS);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 0000b4 (Matching by size)
 */
void C_MTX44ScaleApply(const Mtx44 src, Mtx44 dst, f32 xS, f32 yS, f32 zS)
{
	OSAssertMsgLine(1036, src, "MTX44ScaleApply(): NULL Mtx44Ptr 'src' ");
	OSAssertMsgLine(1037, dst, "MTX44ScaleApply(): NULL Mtx44Ptr 'dst' ");

	dst[0][0] = (src[0][0] * xS);
	dst[0][1] = (src[0][1] * xS);
	dst[0][2] = (src[0][2] * xS);
	dst[0][3] = (src[0][3] * xS);

	dst[1][0] = (src[1][0] * yS);
	dst[1][1] = (src[1][1] * yS);
	dst[1][2] = (src[1][2] * yS);
	dst[1][3] = (src[1][3] * yS);

	dst[2][0] = (src[2][0] * zS);
	dst[2][1] = (src[2][1] * zS);
	dst[2][2] = (src[2][2] * zS);
	dst[2][3] = (src[2][3] * zS);

	dst[3][0] = src[3][0];
	dst[3][1] = src[3][1];
	dst[3][2] = src[3][2];
	dst[3][3] = src[3][3];
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00005c (Matching by size)
 */
void PSMTX44ScaleApply(const Mtx44 src, Mtx44 dst, f32 xS, f32 yS, f32 zS)
{
	return C_MTX44ScaleApply(src, dst, xS, yS, zS);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000070 (Matching by size)
 */
void C_MTX44RotRad(Mtx44 m, char axis, f32 rad)
{
	f32 sinA;
	f32 cosA;

	OSAssertMsgLine(1118, m, "MTX44RotRad():  NULL Mtx44Ptr 'm' ");
	sinA = sinf(rad);
	cosA = cosf(rad);
	C_MTX44RotTrig(m, axis, sinA, cosA);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000070 (Matching by size)
 */
void PSMTX44RotRad(Mtx44 m, char axis, f32 rad)
{
	f32 sinA;
	f32 cosA;

	sinA = sinf(rad);
	cosA = cosf(rad);
	PSMTX44RotTrig(m, axis, sinA, cosA);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00011c (Matching by size)
 */
void C_MTX44RotTrig(Mtx44 m, char axis, f32 sinA, f32 cosA)
{
	OSAssertMsgLine(1163, m, "MTX44RotTrig():  NULL Mtx44Ptr 'm' ");

	axis |= 0x20;
	switch (axis) {
	case 'x':
	{
		m[0][0] = 1.0f;
		m[0][1] = 0.0f;
		m[0][2] = 0.0f;
		m[0][3] = 0.0f;

		m[1][0] = 0.0f;
		m[1][1] = cosA;
		m[1][2] = -sinA;
		m[1][3] = 0.0f;

		m[2][0] = 0.0f;
		m[2][1] = sinA;
		m[2][2] = cosA;
		m[2][3] = 0.0f;

		m[3][0] = 0.0f;
		m[3][1] = 0.0f;
		m[3][2] = 0.0f;
		m[3][3] = 1.0f;
		break;
	}
	case 'y':
	{
		m[0][0] = cosA;
		m[0][1] = 0.0f;
		m[0][2] = sinA;
		m[0][3] = 0.0f;

		m[1][0] = 0.0f;
		m[1][1] = 1.0f;
		m[1][2] = 0.0f;
		m[1][3] = 0.0f;

		m[2][0] = -sinA;
		m[2][1] = 0.0f;
		m[2][2] = cosA;
		m[2][3] = 0.0f;

		m[3][0] = 0.0f;
		m[3][1] = 0.0f;
		m[3][2] = 0.0f;
		m[3][3] = 1.0f;
		break;
	}
	case 'z':
	{
		m[0][0] = cosA;
		m[0][1] = -sinA;
		m[0][2] = 0.0f;
		m[0][3] = 0.0f;

		m[1][0] = sinA;
		m[1][1] = cosA;
		m[1][2] = 0.0f;
		m[1][3] = 0.0f;

		m[2][0] = 0.0f;
		m[2][1] = 0.0f;
		m[2][2] = 1.0f;
		m[2][3] = 0.0f;

		m[3][0] = 0.0f;
		m[3][1] = 0.0f;
		m[3][2] = 0.0f;
		m[3][3] = 1.0f;
		break;
	}
	default:
	{
		OSAssertMsgLine(1191, FALSE, "MTX44RotTrig():  invalid 'axis' value ");
		break;
	}
	}
}

/**
 * @todo Documentation
 * @note UNUSED Size: 0000cc (Matching by size)
 */
void PSMTX44RotTrig(Mtx44 m, char axis, f32 sinA, f32 cosA)
{
	return C_MTX44RotTrig(m, axis, sinA, cosA);
}

/**
 * @todo Documentation
 * @note UNUSED Size: 00012c (Matching by size)
 */
void C_MTX44RotAxisRad(Mtx44 m, const Vec* axis, f32 rad)
{
	Vec vN;
	f32 sinA;
	f32 cosA;
	f32 t;
	f32 x;
	f32 y;
	f32 z;
	f32 xSq;
	f32 ySq;
	f32 zSq;

	OSAssertMsgLine(1300, m, "MTX44RotAxisRad():  NULL Mtx44Ptr 'm' ");
	OSAssertMsgLine(1301, axis, "MTX44RotAxisRad():  NULL VecPtr 'axis' ");

	sinA = sinf(rad);
	cosA = cosf(rad);
	t    = 1.0f - cosA;

	C_VECNormalize(axis, &vN);

	x = vN.x;
	y = vN.y;
	z = vN.z;

	xSq = (x * x);
	ySq = (y * y);
	zSq = (z * z);

	m[0][0] = (cosA + (t * xSq));
	m[0][1] = (y * (t * x)) - (sinA * z);
	m[0][2] = (z * (t * x)) + (sinA * y);
	m[0][3] = 0.0f;

	m[1][0] = ((y * (t * x)) + (sinA * z));
	m[1][1] = (cosA + (t * ySq));
	m[1][2] = ((z * (t * y)) - (sinA * x));
	m[1][3] = 0.0f;

	m[2][0] = ((z * (t * x)) - (sinA * y));
	m[2][1] = ((z * (t * y)) + (sinA * x));
	m[2][2] = (cosA + (t * zSq));
	m[2][3] = 0.0f;

	m[3][0] = 0.0f;
	m[3][1] = 0.0f;
	m[3][2] = 0.0f;
	m[3][3] = 1.0f;
}

/**
 * @todo Documentation
 * @note UNUSED Size: 000128 (Nonmatching)
 */
void PSMTX44RotAxisRad(Mtx44 m, const Vec* axis, f32 rad)
{
	return C_MTX44RotAxisRad(m, axis, rad);
}

#pragma dont_inline reset
