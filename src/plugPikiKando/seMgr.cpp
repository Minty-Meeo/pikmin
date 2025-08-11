#include "DebugLog.h"
#include "SoundMgr.h"
#include "jaudio/piki_player.h"
#include "jaudio/verysimple.h"
#include "stdio.h"
#include "sysMath.h"
#include "sysNew.h"
#include "system.h"
#include "zen/Math.h"

/**
 * @todo: Documentation
 * @note UNUSED Size: 00009C
 */
DEFINE_ERROR(7)

/**
 * @todo: Documentation
 * @note UNUSED Size: 0000F0
 */
DEFINE_PRINT("seMgr");

/// Global sound effect manager object.
SeMgr* seMgr;

/**
 * @todo: Documentation
 */
SeMgr::SeMgr()
{
	mBattleCount = 0;
	mSENum       = 0;
	mMaxInfos    = MAX_SOUND_EFFECTS;
	mSeInfos     = new SeInfo[mMaxInfos];
	addInfo(JACORIMA_Breakup, "Breakup");
	addInfo(JACORIMA_Gather, "Gather");
	addInfo(JACORIMA_Throw, "Throw");
	addInfo(JACORIMA_PikiHit, "Piki Hit");
	addInfo(JACORIMA_PikiFly, "Piki Fly");
	addInfo(JACORIMA_PikiPulling, "Piki Pulling");
	addInfo(JACORIMA_PikiPulled, "Piki Pulled");
	addInfo(JACORIMA_PikiBreakupVoice, "Piki Breakup Voice");
	addInfo(JACORIMA_PikiLift, "Piki Lift");
	addInfo(JACORIMA_PikiFind, "Piki Find");
	addInfo(JACORIMA_PikiFlyReady, "Piki Flyready");
	addInfo(JACORIMA_PikiCalled, "Piki Called");
}

/**
 * @todo: Documentation
 */
void SeMgr::playNaviSound(s32 stickX, s32 stickY)
{
	Jac_Orima_Formation(stickX, stickY);
}

/**
 * @todo: Documentation
 * Address:	10126280 in DLL
 * @note UNUSED Size: 000048
 */
SeInfo* SeMgr::findInfo(int jacSeID)
{
	for (int i = 0; i < mSENum; i++) {
		if (mSeInfos[i].mJacPlayerSeID == jacSeID) {
			return &mSeInfos[i];
		}
	}

	return nullptr;
}

/**
 * @todo: Documentation
 */
void SeMgr::addInfo(int jacSeID, immut char* seName)
{
	if (mSENum >= mMaxInfos) {
		PRINT("maxInfos !\n");
		ERROR("mail to me\n");
	}

	mSeInfos[mSENum].mJacPlayerSeID = jacSeID;
	mSeInfos[mSENum].mSeName        = seName;
	mSENum++;
}

/**
 * @todo: Documentation
 */
void SeMgr::update()
{
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000004
 */
void SeMgr::play(u32)
{
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000024
 */
void SeMgr::stop(u32 jacSeID)
{
	Jac_StopSe(jacSeID);
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000004
 */
void SeMgr::playBGM(u32)
{
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000004
 */
void SeMgr::stopBGM()
{
}

/**
 * @todo: Documentation
 * @note UNUSED Size: 000020
 */
void SeMgr::stopSoundAll()
{
	// UNUSED FUNCTION
}

/**
 * @todo: Documentation
 */
void SeMgr::joinBattle()
{
	mBattleCount++;
}

/**
 * @todo: Documentation
 */
void SeMgr::leaveBattle()
{
	mBattleCount--;
	if (mBattleCount <= 0) {
		mBattleCount = 0;
	}
}

/**
 * @note This function is never passed anything except 0 in retail.
 */
void SeMgr::setPikiNum(int pikiNum)
{
	Jac_Piki_Number(pikiNum);
}
