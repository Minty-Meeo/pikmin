#include "Dolphin/mtx.h"

#include "Dolphin/os.h"
#include "fdlibm.h"
#include <math.h>
#include <stddef.h>

#pragma dont_inline on

static f32 Unit01[] = { 0.0f, 1.0f };

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00003C (Matching by size)
 */
void C_MTXIdentity(Mtx m)
{
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
}

/**
 * @TODO: Documentation
 */
void PSMTXIdentity(Mtx m)
{
	return C_MTXIdentity(m);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00006C (Matching by size)
 */
void C_MTXCopy(const Mtx src, Mtx dst)
{
	if (src == dst) {
		return;
	}

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
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void PSMTXCopy(const Mtx src, Mtx dst)
{
	return C_MTXCopy(src, dst);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0002A8 (Matching by size)
 */
void C_MTXConcat(const Mtx a, const Mtx b, Mtx dst)
{
	Mtx tmp;
	MtxPtr m;

	if (dst == a || dst == b) {
		m = tmp;
	} else {
		m = dst;
	}

	m[0][0] = a[0][0] * b[0][0] + a[0][1] * b[1][0] + a[0][2] * b[2][0];
	m[0][1] = a[0][0] * b[0][1] + a[0][1] * b[1][1] + a[0][2] * b[2][1];
	m[0][2] = a[0][0] * b[0][2] + a[0][1] * b[1][2] + a[0][2] * b[2][2];
	m[0][3] = a[0][0] * b[0][3] + a[0][1] * b[1][3] + a[0][2] * b[2][3] + a[0][3];

	m[1][0] = a[1][0] * b[0][0] + a[1][1] * b[1][0] + a[1][2] * b[2][0];
	m[1][1] = a[1][0] * b[0][1] + a[1][1] * b[1][1] + a[1][2] * b[2][1];
	m[1][2] = a[1][0] * b[0][2] + a[1][1] * b[1][2] + a[1][2] * b[2][2];
	m[1][3] = a[1][0] * b[0][3] + a[1][1] * b[1][3] + a[1][2] * b[2][3] + a[1][3];

	m[2][0] = a[2][0] * b[0][0] + a[2][1] * b[1][0] + a[2][2] * b[2][0];
	m[2][1] = a[2][0] * b[0][1] + a[2][1] * b[1][1] + a[2][2] * b[2][1];
	m[2][2] = a[2][0] * b[0][2] + a[2][1] * b[1][2] + a[2][2] * b[2][2];
	m[2][3] = a[2][0] * b[0][3] + a[2][1] * b[1][3] + a[2][2] * b[2][3] + a[2][3];

	if (m == tmp) {
		C_MTXCopy(tmp, dst);
	}
}

/**
 * @TODO: Documentation
 */
void PSMTXConcat(const Mtx a, const Mtx b, Mtx dst)
{
	return C_MTXConcat(a, b, dst);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00009C (Matching by size)
 */
void C_MTXTranspose(const Mtx src, Mtx xPose)
{
	Mtx tmp;
	MtxPtr m;

	if (src == xPose) {
		m = tmp;
	} else {
		m = xPose;
	}

	m[0][0] = src[0][0];
	m[0][1] = src[1][0];
	m[0][2] = src[2][0];
	m[0][3] = 0.0f;

	m[1][0] = src[0][1];
	m[1][1] = src[1][1];
	m[1][2] = src[2][1];
	m[1][3] = 0.0f;

	m[2][0] = src[0][2];
	m[2][1] = src[1][2];
	m[2][2] = src[2][2];
	m[2][3] = 0.0f;

	if (m == tmp) {
		C_MTXCopy(tmp, xPose);
	}
}

/**
 * @TODO: Documentation
 */
void PSMTXTranspose(const Mtx src, Mtx xPose)
{
	return C_MTXTranspose(src, xPose);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0002AC (Matching by size)
 */
u32 C_MTXInverse(const Mtx src, Mtx inv)
{
	Mtx tmp;
	MtxPtr m;
	f32 det;

	if (src == inv) {
		m = tmp;
	} else {
		m = inv;
	}

	det = src[0][0] * src[1][1] * src[2][2] + src[0][1] * src[1][2] * src[2][0] + src[0][2] * src[1][0] * src[2][1]
	    - src[2][0] * src[1][1] * src[0][2] - src[1][0] * src[0][1] * src[2][2] - src[0][0] * src[2][1] * src[1][2];

	if (det == 0.0f) {
		return FALSE;
	}

	det = 1.0f / det;

	m[0][0] = (src[1][1] * src[2][2] - src[2][1] * src[1][2]) * det;
	m[0][1] = -(src[0][1] * src[2][2] - src[2][1] * src[0][2]) * det;
	m[0][2] = (src[0][1] * src[1][2] - src[1][1] * src[0][2]) * det;

	m[1][0] = -(src[1][0] * src[2][2] - src[2][0] * src[1][2]) * det;
	m[1][1] = (src[0][0] * src[2][2] - src[2][0] * src[0][2]) * det;
	m[1][2] = -(src[0][0] * src[1][2] - src[1][0] * src[0][2]) * det;

	m[2][0] = (src[1][0] * src[2][1] - src[2][0] * src[1][1]) * det;
	m[2][1] = -(src[0][0] * src[2][1] - src[2][0] * src[0][1]) * det;
	m[2][2] = (src[0][0] * src[1][1] - src[1][0] * src[0][1]) * det;

	m[0][3] = -m[0][0] * src[0][3] - m[0][1] * src[1][3] - m[0][2] * src[2][3];
	m[1][3] = -m[1][0] * src[0][3] - m[1][1] * src[1][3] - m[1][2] * src[2][3];
	m[2][3] = -m[2][0] * src[0][3] - m[2][1] * src[1][3] - m[2][2] * src[2][3];

	if (m == tmp) {
		C_MTXCopy(tmp, inv);
	}

	return TRUE;
}

/**
 * @TODO: Documentation
 */
u32 PSMTXInverse(const Mtx src, Mtx inv)
{
	return C_MTXInverse(src, inv);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00021C (Matching by size)
 */
u32 C_MTXInvXpose(const Mtx src, Mtx inv)
{
	Mtx tmp;
	MtxPtr m;
	f32 det;

	if (src == inv) {
		m = tmp;
	} else {
		m = inv;
	}

	det = src[0][0] * src[1][1] * src[2][2] + src[0][1] * src[1][2] * src[2][0] + src[0][2] * src[1][0] * src[2][1]
	    - src[2][0] * src[1][1] * src[0][2] - src[1][0] * src[0][1] * src[2][2] - src[0][0] * src[2][1] * src[1][2];

	if (det == 0.0f) {
		return FALSE;
	}

	det = 1.0f / det;

	m[0][0] = (src[1][1] * src[2][2] - src[2][1] * src[1][2]) * det;
	m[0][1] = -(src[1][0] * src[2][2] - src[2][0] * src[1][2]) * det;
	m[0][2] = (src[1][0] * src[2][1] - src[2][0] * src[1][1]) * det;

	m[1][0] = -(src[0][1] * src[2][2] - src[2][1] * src[0][2]) * det;
	m[1][1] = (src[0][0] * src[2][2] - src[2][0] * src[0][2]) * det;
	m[1][2] = -(src[0][0] * src[2][1] - src[2][0] * src[0][1]) * det;

	m[2][0] = (src[0][1] * src[1][2] - src[1][1] * src[0][2]) * det;
	m[2][1] = -(src[0][0] * src[1][2] - src[1][0] * src[0][2]) * det;
	m[2][2] = (src[0][0] * src[1][1] - src[1][0] * src[0][1]) * det;

	m[0][3] = 0.0f;
	m[1][3] = 0.0f;
	m[2][3] = 0.0f;

	if (m == tmp) {
		C_MTXCopy(tmp, inv);
	}

	return TRUE;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000D4 (Matching by size)
 */
u32 PSMTXInvXpose(const Mtx src, Mtx inv)
{
	return C_MTXInvXpose(src, inv);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000070 (Matching by size)
 */
void C_MTXRotRad(Mtx m, char axis, f32 rad)
{
	f32 sinA, cosA;
	sinA = sinf(rad);
	cosA = cosf(rad);
	C_MTXRotTrig(m, axis, sinA, cosA);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000070 (Matching by size)
 */
void PSMTXRotRad(Mtx m, char axis, f32 rad)
{
	f32 sinA, cosA;
	sinA = sinf(rad);
	cosA = cosf(rad);
	PSMTXRotTrig(m, axis, sinA, cosA);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000104 (Matching by size)
 */
void C_MTXRotTrig(Mtx m, char axis, f32 sinA, f32 cosA)
{
	switch (axis) {
	case 'x':
	case 'X':
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
		break;
	}
	case 'y':
	case 'Y':
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
		break;
	}
	case 'z':
	case 'Z':
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
		break;
	}
	default:
	{
		OSAssertMsg(FALSE, "MTXRotTrig():  invalid 'axis' value ");
		break;
	}
	}
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000a8 (Matching by size)
 */
void PSMTXRotTrig(Mtx m, char axis, f32 sinA, f32 cosA)
{
	return C_MTXRotTrig(m, axis, sinA, cosA);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000118 (Matching by size)
 */
void C_MTXRotAxisRad(Mtx m, const Vec* axis, f32 rad)
{
	Vec vec;
	f32 sinA, cosA;
	f32 t;
	f32 x, y, z;
	f32 squareX, squareY, squareZ;

	sinA = sinf(rad);
	cosA = cosf(rad);
	t    = 1.0f - cosA;

	C_VECNormalize(axis, &vec);

	x = vec.x;
	y = vec.y;
	z = vec.z;

	squareX = x * x;
	squareY = y * y;
	squareZ = z * z;

	m[0][0] = (t * squareX) + (cosA);
	m[0][1] = (t * x * y) - (sinA * z);
	m[0][2] = (t * x * z) + (sinA * y);
	m[0][3] = 0.0f;

	m[1][0] = (t * x * y) + (sinA * z);
	m[1][1] = (t * squareY) + (cosA);
	m[1][2] = (t * y * z) - (sinA * x);
	m[1][3] = 0.0f;

	m[2][0] = (t * x * z) - (sinA * y);
	m[2][1] = (t * y * z) + (sinA * x);
	m[2][2] = (t * squareZ) + (cosA);
	m[2][3] = 0.0f;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000104 (Matching by size)
 */
void PSMTXRotAxisRad(Mtx m, const Vec* axis, f32 rad)
{
	return C_MTXRotAxisRad(m, axis, rad);
}

/**
 * @TODO: Documentation
 */
void C_MTXTrans(Mtx m, f32 xT, f32 yT, f32 zT)
{
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
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000034 (Matching by size)
 */
void PSMTXTrans(Mtx m, f32 xT, f32 yT, f32 zT)
{
	return C_MTXTrans(m, xT, yT, zT);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000078 (Matching by size)
 */
void C_MTXTransApply(const Mtx src, Mtx dst, f32 xT, f32 yT, f32 zT)
{
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
	}

	dst[0][3] = src[0][3] + xT;
	dst[1][3] = src[1][3] + yT;
	dst[2][3] = src[2][3] + zT;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000040 (Matching by size)
 */
void PSMTXTransApply(const Mtx src, Mtx dst, f32 xT, f32 yT, f32 zT)
{
	return C_MTXTransApply(src, dst, xT, yT, zT);
}

/**
 * @TODO: Documentation
 */
void C_MTXScale(Mtx m, f32 xS, f32 yS, f32 zS)
{
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
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000028 (Matching by size)
 */
void PSMTXScale(Mtx m, f32 xS, f32 yS, f32 zS)
{
	return C_MTXScale(m, xS, yS, zS);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000094 (Matching by size)
 */
void C_MTXScaleApply(const Mtx src, Mtx dst, f32 xS, f32 yS, f32 zS)
{
	dst[0][0] = src[0][0] * xS;
	dst[0][1] = src[0][1] * xS;
	dst[0][2] = src[0][2] * xS;
	dst[0][3] = src[0][3] * xS;

	dst[1][0] = src[1][0] * yS;
	dst[1][1] = src[1][1] * yS;
	dst[1][2] = src[1][2] * yS;
	dst[1][3] = src[1][3] * yS;

	dst[2][0] = src[2][0] * zS;
	dst[2][1] = src[2][1] * zS;
	dst[2][2] = src[2][2] * zS;
	dst[2][3] = src[2][3] * zS;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00004c (Matching by size)
 */
void PSMTXScaleApply(const Mtx src, Mtx dst, f32 xS, f32 yS, f32 zS)
{
	return C_MTXScaleApply(src, dst, xS, yS, zS);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000F0 (Matching by size)
 */
void C_MTXQuat(Mtx m, const Quaternion* quat)
{
	f32 s, xs, ys, zs, wx, wy, wz, xx, xy, xz, yy, yz, zz;

	s = 2.0f / ((quat->x * quat->x) + (quat->y * quat->y) + (quat->z * quat->z) + (quat->w * quat->w));

	xs = quat->x * s;
	ys = quat->y * s;
	zs = quat->z * s;
	wx = quat->w * xs;
	wy = quat->w * ys;
	wz = quat->w * zs;
	xx = quat->x * xs;
	xy = quat->x * ys;
	xz = quat->x * zs;
	yy = quat->y * ys;
	yz = quat->y * zs;
	zz = quat->z * zs;

	m[0][0] = 1.0f - (yy + zz);
	m[0][1] = xy - wz;
	m[0][2] = xz + wy;
	m[0][3] = 0.0f;

	m[1][0] = xy + wz;
	m[1][1] = 1.0f - (xx + zz);
	m[1][2] = yz - wx;
	m[1][3] = 0.0f;

	m[2][0] = xz - wy;
	m[2][1] = yz + wx;
	m[2][2] = 1.0f - (xx + yy);
	m[2][3] = 0.0f;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 0000a4 (Matching by size)
 */
void PSMTXQuat(Mtx m, const Quaternion* quat)
{
	return C_MTXQuat(m, quat);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000100 (Nonmatching)
 */
void C_MTXReflect(Mtx m, const Vec* p, const Vec* n)
{
	f32 vxy, vxz, vyz, pdotn;

	vxy   = -2.0f * n->x * n->y;
	vxz   = -2.0f * n->x * n->z;
	vyz   = -2.0f * n->y * n->z;
	pdotn = 2.0f * C_VECDotProduct(p, n);

	m[0][0] = 1.0f - 2.0f * n->x * n->x;
	m[0][1] = vxy;
	m[0][2] = vxz;
	m[0][3] = pdotn * n->x;

	m[1][0] = vxy;
	m[1][1] = 1.0f - 2.0f * n->y * n->y;
	m[1][2] = vyz;
	m[1][3] = pdotn * n->y;

	m[2][0] = vxz;
	m[2][1] = vyz;
	m[2][2] = 1.0f - 2.0f * n->z * n->z;
	m[2][3] = pdotn * n->z;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000070 (Matching by size)
 */
void PSMTXReflect(Mtx m, const Vec* p, const Vec* n)
{
	return C_MTXReflect(m, p, n);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 00018C (Matching by size)
 */
void C_MTXLookAt(Mtx m, const Vec* camPos, const Vec* camUp, const Vec* target)
{
	Vec vLook, vRight, vUp;

	vLook.x = camPos->x - target->x;
	vLook.y = camPos->y - target->y;
	vLook.z = camPos->z - target->z;
	C_VECNormalize(&vLook, &vLook);
	C_VECCrossProduct(camUp, &vLook, &vRight);
	C_VECNormalize(&vRight, &vRight);
	VECCrossProduct(&vLook, &vRight, &vUp);

	m[0][0] = vRight.x;
	m[0][1] = vRight.y;
	m[0][2] = vRight.z;
	m[0][3] = -(camPos->x * vRight.x + camPos->y * vRight.y + camPos->z * vRight.z);

	m[1][0] = vUp.x;
	m[1][1] = vUp.y;
	m[1][2] = vUp.z;
	m[1][3] = -(camPos->x * vUp.x + camPos->y * vUp.y + camPos->z * vUp.z);

	m[2][0] = vLook.x;
	m[2][1] = vLook.y;
	m[2][2] = vLook.z;
	m[2][3] = -(camPos->x * vLook.x + camPos->y * vLook.y + camPos->z * vLook.z);
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000094 (Matching by size)
 */
void C_MTXLightFrustum(Mtx m, f32 t, f32 b, f32 l, f32 r, f32 n, f32 scaleS, f32 scaleT, f32 transS, f32 transT)
{
	f32 tmp;

	tmp       = 1.0f / (r - l);
	m[0][0]   = (2 * n) * tmp * scaleS;
	m[0][1]   = 0.0f;
	m[0][2]   = (r + l) * tmp * scaleS - transS;
	m[0][3]   = 0.0f;

	tmp       = 1.0f / (t - b);
	m[1][0]   = 0.0f;
	m[1][1]   = (2 * n) * tmp * scaleT;
	m[1][2]   = (t + b) * tmp * scaleT - transT;
	m[1][3]   = 0.0f;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = -1.0f;
	m[2][3] = 0.0f;
}

/**
 * @TODO: Documentation
 */
void C_MTXLightPerspective(Mtx m, f32 fovY, f32 aspect, f32 scaleS, f32 scaleT, f32 transS, f32 transT)
{
	f32 angle;
	f32 cot;

	OSAssertMsgLine(2605, m, "MTXLightPerspective():  NULL MtxPtr 'm' ");
	OSAssertMsgLine(2606, (fovY > 0.0) && (fovY < 180.0), "MTXLightPerspective():  'fovY' out of range ");
	OSAssertMsgLine(2607, 0 != aspect, "MTXLightPerspective():  'aspect' is 0 ");

	angle = 0.5f * fovY;
	angle = MTXDegToRad(angle);
	cot   = 1.0f / tanf(angle);

	m[0][0] = scaleS * (cot / aspect);
	m[0][1] = 0.0f;
	m[0][2] = -transS;
	m[0][3] = 0.0f;

	m[1][0] = 0.0f;
	m[1][1] = cot * scaleT;
	m[1][2] = -transT;
	m[1][3] = 0.0f;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = -1.0f;
	m[2][3] = 0.0f;
}

/**
 * @TODO: Documentation
 * @note UNUSED Size: 000088
 */
void C_MTXLightOrtho(Mtx m, f32 t, f32 b, f32 l, f32 r, f32 scaleS, f32 scaleT, f32 transS, f32 transT)
{
	f32 tmp;

	tmp       = 1.0f / (r - l);
	m[0][0]   = 2 * tmp * scaleS;
	m[0][1]   = 0.0f;
	m[0][2]   = 0.0f;
	m[0][3]   = -(r + l) * tmp * scaleS + transS;

	tmp       = 1.0f / (t - b);
	m[1][0]   = 0.0f;
	m[1][1]   = 2 * tmp * scaleT;
	m[1][2]   = 0.0f;
	m[1][3]   = -(t + b) * tmp * scaleT + transT;

	m[2][0] = 0.0f;
	m[2][1] = 0.0f;
	m[2][2] = 0.0f;
	m[2][3] = 1.0f;
}

#pragma dont_inline reset
