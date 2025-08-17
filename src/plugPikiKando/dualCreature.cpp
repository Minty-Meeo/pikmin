#include "DualCreature.h"
#include "DebugLog.h"
#include "Graphics.h"
#include "ItemMgr.h"
#include "Kontroller.h"
#include "MapMgr.h"
#include "NaviMgr.h"

/**
 * @todo: Documentation
 * @note UNUSED Size: 00009C
 */
DEFINE_ERROR(__LINE__) // Never used in the DLL

/**
 * @todo: Documentation
 * @note UNUSED Size: 0000F0
 */
DEFINE_PRINT(nullptr);

/**
 * @todo: Documentation
 */
DualCreature::DualCreature()
{
	mIsCollisionInitialised = false;
	setCreatureFlag(CF_Unk1 | CF_DisableAutoFaceDir);
	mPrevAngularVelocity.set(0.0f, 0.0f, 0.0f);
	mAngularMomentum.set(0.0f, 0.0f, 0.0f);
	useRealDynamics();
	setDynamicsSimpleFixed(false);
}

/**
 * @todo: Documentation
 */
void DualCreature::doKill()
{
	DynCreature::doKill();
	mIsCollisionInitialised = false;
}

/**
 * @todo: Documentation
 */
bool DualCreature::isFrontFace()
{
	if (mIsRealDynamics) {
		Vector3f yVec;
		mRotationQuat.genVectorY(yVec);
		return yVec.y > 0.5f;
	}

	return true;
}

/**
 * @todo: Documentation
 */
f32 DualCreature::getY()
{
	if (mIsRealDynamics) {
		Vector3f yVec;
		mRotationQuat.genVectorY(yVec);
		return yVec.y;
	}

	return 1.0f;
}

/**
 * @todo: Documentation
 */
bool DualCreature::onGround()
{
	if (mIsRealDynamics) {
		if (isCreatureFlag(CF_IsOnGround)) {
			return true;
		}
		if (getGroundFlag()) {
			return true;
		}

		return false;
	}

	return isCreatureFlag(CF_IsOnGround) != 0;
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000078
 */
void DualCreature::createCollisions(Graphics& gfx)
{
	if (!mIsCollisionInitialised) {
		releaseAllParticles();
		mIsCollisionInitialised = true;
		mMass                   = 0.0f;
		doCreateColls(gfx);
		initialiseSystem();
	}
}

/**
 * @todo: Documentation
 */
void DualCreature::useRealDynamics()
{
	if (!mIsDynamicsSimpleFixed) {
		_43E            = true;
		mIsRealDynamics = true;
		mRotationQuat.fromEuler(mSRT.r);
	} else {
		useSimpleDynamics();
	}
}

/**
 * @todo: Documentation
 */
void DualCreature::useSimpleDynamics()
{
	_43E            = true;
	mIsRealDynamics = false;
	mPrevAngularVelocity.set(0.0f, 0.0f, 0.0f);
	mAngularMomentum.set(0.0f, 0.0f, 0.0f);
}

/**
 * @todo: Documentation
 */
void DualCreature::rotateY(f32 rotY)
{
	if (mIsRealDynamics) {
		Quat q1;
		q1.fromEuler(Vector3f(0.0f, rotY, 0.0f));
		q1.multiply(mRotationQuat);
		mRotationQuat = q1;
		mRotationQuat.normalise();
	} else {
		mFaceDirection = roundAng(mFaceDirection + rotY);
		mSRT.r.set(0.0f, mFaceDirection, 0.0f);
	}
}

/**
 * @todo: Documentation
 */
void DualCreature::update()
{
	if (mIsRealDynamics) {
		DynCreature::update();
	} else {
		Creature::update();
	}
}

/**
 * @todo: Documentation
 */
void DualCreature::refresh(Graphics& gfx)
{
	Matrix4f mtx;
#if defined(VERSION_PIKIDEMO)
	// I don't enjoy splitting this difference in two, but syntax highlighting really hates extra opening braces.
#else
	bool isPointVisible = gfx.mCamera->isPointVisible(mSRT.t, 2.0f * getBoundingSphereRadius());

	if (isPointVisible) {
		disableAICulling();
	} else {
		enableAICulling();
	}
#endif

	if (!_43E) {
#if defined(VERSION_PIKIDEMO)
		if (!mIsDynamicsSimpleFixed && gfx.mCamera->isPointVisible(mSRT.t, 2.0f * getBoundingSphereRadius()))
#else
		if (!mIsDynamicsSimpleFixed && isPointVisible)
#endif
		{
			if (!mIsRealDynamics) {
				useRealDynamics();
			}
		} else if (mIsRealDynamics) {
			useSimpleDynamics();
		}
	}

	if (mIsRealDynamics) {
		mWorldMtx.makeVQS(mSRT.t, mRotationQuat, mSRT.s);
	} else {
		mWorldMtx.makeSRT(mSRT.s, mSRT.r, mSRT.t);
	}

	gfx.mCamera->mLookAtMtx.multiplyTo(mWorldMtx, mtx);
	doRender(gfx, mtx);
	if (mIsRealDynamics) {
		createCollisions(gfx);
	}

	_43E = false;
}
