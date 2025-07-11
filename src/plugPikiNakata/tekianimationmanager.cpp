#include "TekiAnimationManager.h"
#include "DebugLog.h"
#include "Dolphin/os.h"
#include "teki.h"

/*
 * --INFO--
 * Address:	........
 * Size:	00009C
 */
DEFINE_ERROR(__LINE__) // Never used in the DLL

/*
 * --INFO--
 * Address:	........
 * Size:	0000F4
 */
DEFINE_PRINT("tekianimationmanager")

/*
 * --INFO--
 * Address:	80143E48
 * Size:	000094
 */
TekiAnimationManager::TekiAnimationManager(TekiMgr* mgr)
    : Node("TekiAnimationManager")
{
	mTekiMgr = mgr;
}

/*
 * --INFO--
 * Address:	80143EDC
 * Size:	000080
 */
void TekiAnimationManager::read(RandomAccessStream& input)
{
	for (int i = 0; i < TEKI_TypeCount; i++) {
		mTekiMgr->mTekiShapes[i]->mAnimMgr->read(input);
	}
}
