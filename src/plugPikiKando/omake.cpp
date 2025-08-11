#include "Omake.h"
#include "DebugLog.h"
#include "KMath.h"
#include "NaviMgr.h"
#include "Pcam/Camera.h"
#include "Pcam/CameraManager.h"
#include "sysMath.h"
#include "sysNew.h"
#include <math.h>

AttentionCamera* attentionCamera;

/**
 * @todo: Documentation
 * @note UNUSED Size: 00009C
 */
DEFINE_ERROR(__LINE__) // Never used in the DLL

/**
 * @todo: Documentation
 * @note UNUSED Size: 0000F4
 */
DEFINE_PRINT("attentionCamera")

/**
 * @todo: Documentation
 */
AttentionCamera::AttentionCamera()
{
	mFadeState  = 0;
	mMaxFaders  = 4;
	mFaderCount = 0;
	mFaders     = new Fader*[mMaxFaders];
	for (int i = 0; i < mMaxFaders; i++) {
		mFaders[i] = nullptr;
	}

	mFaders[0] = new DefaultFader();
	mFaderCount++;

	mFaders[1] = new SimpleFader();
	mFaderCount++;

	mFaders[2] = new ClothFader();
	mFaderCount++;
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000054
 */
void AttentionCamera::start(u32 tag, Creature* target, f32 p3, f32 p4)
{
	mFadeState = 1;
	mTarget    = target;
	_UNUSED18  = p3;
	_UNUSED1C  = p4;
	setFader(tag);
	mActiveFader->initFadeOut();
}

/**
 * @todo: Documentation
 */
void AttentionCamera::finish()
{
	mTarget    = naviMgr->getNavi();
	mFadeState = 1;
	mActiveFader->initFadeOut();
}

/**
 * @todo: Documentation
 */
void AttentionCamera::update()
{
	switch (mFadeState) {
	case 1:
		if (!mActiveFader->updateFadeOut()) {
			return;
		}
		mTarget->mFaceDirection = roundAng(getCameraSafeAngle(mTarget->mSRT.t, 600.0f, 400.0f));

		cameraMgr->mCamera->startCamera(mTarget);

		mFadeState = 2;
		mActiveFader->initFadeIn();
		break;
	case 2:
		if (mActiveFader->updateFadeIn()) {
			mFadeState = 0;
		}
		break;
	}
}

/**
 * @todo: Documentation
 */
void AttentionCamera::refresh(Graphics& gfx)
{
	if (mFadeState == 1) {
		mActiveFader->drawFadeOut(gfx);
		return;
	}

	if (mFadeState == 2) {
		mActiveFader->drawFadeIn(gfx);
	}
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000058
 */
void AttentionCamera::setFader(u32 tag)
{
	int idx = 0;
	for (int i = 0; i < mFaderCount; i++) {
		if (mFaders[i]->mTag == tag) {
			idx = i;
			break;
		}
	}

	mActiveFader = mFaders[idx];
}
