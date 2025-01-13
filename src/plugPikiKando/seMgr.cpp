#include "SoundMgr.h"
#include "system.h"
#include "jaudio/verysimple.h"
#include "zen/Math.h"
#include "stdio.h"
#include "math.h"
#include "sysNew.h"
#include "DebugLog.h"

/*
 * --INFO--
 * Address:	........
 * Size:	00009C
 */
DEFINE_ERROR();

/*
 * --INFO--
 * Address:	........
 * Size:	0000F0
 */
DEFINE_PRINT("seMgr");

SeMgr* seMgr;

/*
 * --INFO--
 * Address:	800A3428
 * Size:	000180
 */
SeMgr::SeMgr()
{
	_20      = 0;
	mSENum   = 0;
	_28      = 128;
	mSeInfos = new SeInfo[_28];

	// bunch of addInfos
	/*
	.loc_0x0:
	  mflr      r0
	  lis       r4, 0x8022
	  stw       r0, 0x4(r1)
	  addi      r0, r4, 0x738C
	  lis       r4, 0x802B
	  stwu      r1, -0x20(r1)
	  stw       r31, 0x1C(r1)
	  li        r31, 0
	  stw       r30, 0x18(r1)
	  addi      r30, r4, 0x1B70
	  subi      r4, r13, 0x5380
	  stw       r29, 0x14(r1)
	  addi      r29, r3, 0
	  lis       r3, 0x8022
	  stw       r0, 0x0(r29)
	  addi      r0, r3, 0x737C
	  addi      r3, r29, 0
	  stw       r0, 0x0(r29)
	  stw       r31, 0x10(r29)
	  stw       r31, 0xC(r29)
	  stw       r31, 0x8(r29)
	  bl        -0x7E5A8
	  lis       r3, 0x8023
	  subi      r0, r3, 0x71E0
	  stw       r0, 0x0(r29)
	  addi      r3, r29, 0
	  subi      r4, r13, 0x5380
	  bl        -0x62D58
	  lis       r3, 0x802B
	  addi      r0, r3, 0x1CC4
	  stw       r0, 0x0(r29)
	  li        r0, 0x80
	  stw       r31, 0x20(r29)
	  stw       r31, 0x24(r29)
	  stw       r0, 0x28(r29)
	  lwz       r0, 0x28(r29)
	  rlwinm    r3,r0,3,0,28
	  bl        -0x5C4B8
	  stw       r3, 0x2C(r29)
	  addi      r3, r29, 0
	  li        r4, 0x7
	  subi      r5, r13, 0x5378
	  bl        0x100
	  addi      r3, r29, 0
	  li        r4, 0x8
	  subi      r5, r13, 0x5370
	  bl        0xF0
	  addi      r3, r29, 0
	  li        r4, 0x6
	  subi      r5, r13, 0x5368
	  bl        0xE0
	  addi      r3, r29, 0
	  addi      r5, r30, 0xC
	  li        r4, 0
	  bl        0xD0
	  lis       r31, 0x1
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FFE
	  addi      r5, r30, 0x18
	  bl        0xBC
	  addi      r3, r29, 0
	  addi      r5, r30, 0x24
	  li        r4, 0x3
	  bl        0xAC
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FF9
	  addi      r5, r30, 0x34
	  bl        0x9C
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FFD
	  addi      r5, r30, 0x40
	  bl        0x8C
	  addi      r3, r29, 0
	  addi      r5, r30, 0x54
	  li        r4, 0x2
	  bl        0x7C
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FFA
	  addi      r5, r30, 0x60
	  bl        0x6C
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FFC
	  addi      r5, r30, 0x6C
	  bl        0x5C
	  addi      r3, r29, 0
	  subi      r4, r31, 0x7FFB
	  addi      r5, r30, 0x7C
	  bl        0x4C
	  mr        r3, r29
	  lwz       r0, 0x24(r1)
	  lwz       r31, 0x1C(r1)
	  lwz       r30, 0x18(r1)
	  lwz       r29, 0x14(r1)
	  addi      r1, r1, 0x20
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800A35A8
 * Size:	000028
 */
void SeMgr::playNaviSound(s32, s32)
{
	/*
	.loc_0x0:
	  mflr      r0
	  addi      r3, r4, 0
	  stw       r0, 0x4(r1)
	  addi      r4, r5, 0
	  stwu      r1, -0x8(r1)
	  bl        -0x8B3BC
	  lwz       r0, 0xC(r1)
	  addi      r1, r1, 0x8
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000048
 */
SeInfo* SeMgr::findInfo(int)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800A35D0
 * Size:	000034
 */
void SeMgr::addInfo(int p1, char* p2)
{
	if (mSENum >= _28) {
		PRINT("maxInfos !\n");
		ERROR("mail to me\n");
	}

	mSeInfos[mSENum]._00 = p1;
	mSeInfos[mSENum]._04 = p2;
	mSENum++;
}

/*
 * --INFO--
 * Address:	800A3604
 * Size:	000004
 */
void SeMgr::update()
{
}

/*
 * --INFO--
 * Address:	........
 * Size:	000004
 */
void SeMgr::play(u32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000024
 */
void SeMgr::stop(u32 soundID)
{
	Jac_StopSe(soundID);
}

/*
 * --INFO--
 * Address:	........
 * Size:	000004
 */
void SeMgr::playBGM(u32)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000004
 */
void SeMgr::stopBGM()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000020
 */
void SeMgr::stopSoundAll()
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800A3608
 * Size:	000010
 */
void SeMgr::joinBattle()
{
	/*
	.loc_0x0:
	  lwz       r4, 0x20(r3)
	  addi      r0, r4, 0x1
	  stw       r0, 0x20(r3)
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800A3618
 * Size:	000024
 */
void SeMgr::leaveBattle()
{
	/*
	.loc_0x0:
	  lwz       r4, 0x20(r3)
	  subi      r0, r4, 0x1
	  stw       r0, 0x20(r3)
	  lwz       r0, 0x20(r3)
	  cmpwi     r0, 0
	  bgtlr-
	  li        r0, 0
	  stw       r0, 0x20(r3)
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800A363C
 * Size:	000038
 */
void SeMgr::setPikiNum(int)
{
	/*
	.loc_0x0:
	  mflr      r0
	  cmpwi     r4, 0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x8(r1)
	  bne-      .loc_0x20
	  li        r3, 0
	  bl        -0x8AF14
	  b         .loc_0x28

	.loc_0x20:
	  mr        r3, r4
	  bl        -0x8AF20

	.loc_0x28:
	  lwz       r0, 0xC(r1)
	  addi      r1, r1, 0x8
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800A3674
 * Size:	0000E4
 */
void SeWin::doRender(Graphics& gfx)
{
	char buffer[60];
	u32 badCompiler;
	printStart(gfx);
	printcentre(gfx, 32, "SE テスト"); // "SE Test"
	sprintf(buffer, "SE %d", _4C);
	printcentre(gfx, 80, buffer);
	sprintf(buffer, "%s", seMgr->getIndexInfo(_4C)->_04);
	printcentre(gfx, 140, buffer);
}

/*
 * --INFO--
 * Address:	800A3758
 * Size:	0002E4
 */
void SeWin::update()
{
	u32 badCompiler[2]; // sigh

	switch (mStatus) {
	case 0x1000: {
		_54--;
		mPosY += 32;
		if (!_54) {
			mStatus = 0x1001;
		}
		if (zen::Abs(mController->getMainStickY()) > 0.5f) {
			_60 = true;
		}
		return;
	}
	case 0x1002: {
		_54--;
		mPosY += 32;
		if (!_54) {
			mStatus = 0x1003;
		}
		return;
	}
	case 0x1001: {
		if (_60) {
			if (zen::Abs(mController->getMainStickY()) > 0.5f) {
				return;
			}
			_60 = false;
		}
		const f32 mainStickY = mController->getMainStickY();

		bool flag = true;
		if (mainStickY > 0.5f) {
			if (_58 <= 0) {
				_5C = 0.0f;
			} else if (_5C < 0.8f) {
				flag = false;
			}
			_5C += gsys->getFrameTime();
			if (_5C > 1.4f) {
				if (_58 < 6) {
					_58 += 1;
				}
			} else {
				_58 = 1;
			}
		} else if (mainStickY < -0.5f) {
			if (_58 >= 0) {
				_5C = 0.0f;
			} else if (_5C < 0.8f) {
				flag = false;
			}
			_5C += gsys->getFrameTime();
			if (_5C > 1.4f) {
				if (_58 > -6) {
					_58 -= 1;
				}
			} else {
				_58 = -1;
			}
		} else {
			_58 = 0;
			_5C = 0.0f;
		}
		if (_58 && flag) {
			if (_58 > 0) {
				_4C += (_58 + _4C >= seMgr->getSENum()) ? seMgr->getSENum() - _4C - 1 : _58;
				PRINT(" UP up is %d : curr became %d\n", _58, _4C);
			} else {
				_4C += (_58 + _4C < 0) ? 0 : _58;
				PRINT(" DOWN up is %d : curr became %d\n", _58, _4C);
			}
		}

		if (mController->isPressed(KBBTN_A)) {
			PRINT("stop %d sound ***********\n", _50);
			SeMgr::stop(_50);
			SeInfo* info = seMgr->getIndexInfo(_4C);
			_50          = info->_00;
			SeMgr::play(info->_00);
		} else if (mController->isPressed(KBBTN_B) || mController->isPressed(KBBTN_Z)) {
			SeMgr::stop(_4C);
			close();
		}
		return;
	}
	}
}

/*
 * --INFO--
 * Address:	800A3A3C
 * Size:	00007C
 */
void SeWin::open()
{
	if (mStatus == 0x1000)
		return;
	placeCentre();
	GmWin::open();
	const int iVar1 = mPosY + 120;

	_54   = iVar1 / 32;
	mPosY = -120;
	_58   = 0;
	_50   = nullptr;
	_4C   = 0;
	_5C   = 0.0f;
	_60   = false;
}

/*
 * --INFO--
 * Address:	800A3AB8
 * Size:	00004C
 */
void SeWin::close()
{
	if (mStatus == 0x1002)
		return;
	placeCentre();
	GmWin::close();

	_54 = 15;
}
