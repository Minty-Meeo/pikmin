#include "jaudio/bankdrv.h"

#include "jaudio/random.h"
#include "jaudio/rate.h"
#include "jaudio/bx.h"

static u32 FORCE_RELEASE_TABLE[3] = { 5, 15, 0 };

/*
 * --INFO--
 * Address:	8000CFC0
 * Size:	000030
 */
Inst_* Bank_InstChange(Bank_* bank, volatile u32 VOLATILE_index)
{
	u32 badCompiler;
	u32 index;

	index = VOLATILE_index;
	if (!bank) {
		return NULL;
	}
	return bank->mInstruments[index];
}

/*
 * --INFO--
 * Address:	........
 * Size:	000030
 */
Voice_* Bank_VoiceChange(Bank_* bank, volatile u32 VOLATILE_index)
{
	u32 badCompiler;
	u32 index;

	index = VOLATILE_index;
	if (!bank) {
		return NULL;
	}
	return bank->mVoices[index];
}

/*
 * --INFO--
 * Address:	8000D000
 * Size:	000030
 */
Perc_* Bank_PercChange(Bank_* bank, volatile u32 VOLATILE_index)
{
	u32 badCompiler;
	u32 index;

	index = VOLATILE_index;
	if (!bank) {
		return NULL;
	}
	return bank->mPercs[index];
}

/*
 * --INFO--
 * Address:	8000D040
 * Size:	00005C
 */
int Bank_GetInstKeymap(Inst_* inst, u8 param_2)
{
	if (!inst) {
		return 0;
	}

	for (u32 i = 0; i < inst->mKeyRegionCount; i++) {
		if (param_2 <= inst->mKeyRegions[i]->mBaseKey) {
			return i;
		}
	}
	return -1;
}

/*
 * --INFO--
 * Address:	8000D0A0
 * Size:	000090
 */
int Bank_GetInstVmap(Inst_* inst, u8 param_2, u8 param_3)
{
	u32 badCompiler;

	if (!inst) {
		return 0;
	}

	int keymap = Bank_GetInstKeymap(inst, param_2);
	if (keymap != -1) {
		u8* REF_p3       = &param_3;
		InstKeymap_* key = inst->mKeyRegions[keymap];
		for (u32 i = 0; i < key->mVelocityCount; i++) {
			Vmap_* vmap = key->mVelocities[i];
			if (param_3 <= vmap->mBaseVelocity) {
				return (int)vmap;
			}
		}
		return 0;
	}
	return keymap;
}

/*
 * --INFO--
 * Address:	8000D140
 * Size:	000068
 */
int Bank_GetPercVmap(Perc_* perc, u8 keyIdx, u8 vel)
{
	if (!perc) {
		return 0;
	}

	PercKeymap_* keymap = perc->mKeyRegions[keyIdx];
	if (!keymap) {
		return 0;
	}
	for (u32 i = 0; i < keymap->mVelocityCount; i++) {
		Vmap_* vmap = keymap->mVelocities[i];
		if (vel <= vmap->mBaseVelocity) {
			return (int)vmap;
		}
	}
	return 0;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000010
 */
int Bank_GetVoiceMap(Voice_*, u16)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8000D1C0
 * Size:	000104
 */
f32 Bank_SenseToOfs(Sense_* sensor, u8 p2)
{
	if (!sensor) {
		return 1.0f;
	}

	if (sensor->_02 == 127 || sensor->_02 == 0) {
		return sensor->_04 + (f32)p2 * (sensor->_08 - sensor->_04) / 127.0f;
	}

	if (p2 < sensor->_02) {
		return sensor->_04 + (1.0f - sensor->_04) * ((f32)p2 / (f32)sensor->_02);
	}

	int a = p2 - sensor->_02;
	int b = 127 - sensor->_02;

	return 1.0f + (sensor->_08 - 1.0f) * ((f32)a / (f32)b);
}

/*
 * --INFO--
 * Address:	8000D2E0
 * Size:	000048
 */
f32 Bank_RandToOfs(Rand_* rand)
{
	f32 value;

	if (!rand) {
		return 1.0f;
	}
	value = GetRandom_sf32();
	value *= rand->_08;
	value += rand->_04;
	return value;
}

/*
 * --INFO--
 * Address:	8000D340
 * Size:	0003F8
 */
f32 Bank_OscToOfs(Osc_* osc, Oscbuf_* buf)
{
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x28(r1)
	  stw       r31, 0x24(r1)
	  mr.       r31, r3
	  bne-      .loc_0x24
	  lfs       f1, -0x7F98(r2)
	  stfs      f1, 0x8(r4)
	  b         .loc_0x3E4

	.loc_0x24:
	  lbz       r0, 0x0(r4)
	  cmplwi    r0, 0x4
	  bne-      .loc_0x118
	  lwz       r3, 0x8(r31)
	  lwz       r0, 0xC(r31)
	  cmplw     r3, r0
	  beq-      .loc_0x58
	  li        r0, 0
	  sth       r0, 0x2(r4)
	  lfs       f0, -0x7F80(r2)
	  stfs      f0, 0x4(r4)
	  lfs       f0, 0x8(r4)
	  stfs      f0, 0xC(r4)

	.loc_0x58:
	  lwz       r0, 0xC(r31)
	  cmplwi    r0, 0
	  bne-      .loc_0x78
	  lhz       r0, 0x14(r4)
	  cmplwi    r0, 0
	  bne-      .loc_0x78
	  li        r0, 0x10
	  sth       r0, 0x14(r4)

	.loc_0x78:
	  lhz       r0, 0x14(r4)
	  cmplwi    r0, 0
	  beq-      .loc_0x110
	  li        r3, 0x8
	  lis       r0, 0x4330
	  stb       r3, 0x0(r4)
	  lhz       r3, 0x14(r4)
	  rlwinm    r3,r3,18,30,31
	  stb       r3, 0x1(r4)
	  lfs       f1, -0x8000(r13)
	  lfs       f0, -0x7F7C(r2)
	  lhz       r3, 0x14(r4)
	  fdivs     f1, f1, f0
	  lfs       f0, -0x7F78(r2)
	  rlwinm    r3,r3,0,18,31
	  lfd       f3, -0x7F88(r2)
	  xoris     r3, r3, 0x8000
	  stw       r3, 0x1C(r1)
	  stw       r0, 0x18(r1)
	  lfd       f2, 0x18(r1)
	  fdivs     f0, f1, f0
	  fsubs     f1, f2, f3
	  fmuls     f1, f1, f0
	  stfs      f1, 0x4(r4)
	  lfs       f1, 0x4(r4)
	  lfs       f0, -0x7F98(r2)
	  fcmpo     cr0, f1, f0
	  bge-      .loc_0xEC
	  stfs      f0, 0x4(r4)

	.loc_0xEC:
	  lfs       f0, -0x7F80(r2)
	  stfs      f0, 0xC(r4)
	  lfs       f2, 0xC(r4)
	  lfs       f1, 0x8(r4)
	  lfs       f0, 0x4(r4)
	  fsubs     f1, f2, f1
	  fdivs     f0, f1, f0
	  stfs      f0, 0x10(r4)
	  b         .loc_0x118

	.loc_0x110:
	  li        r0, 0x5
	  stb       r0, 0x0(r4)

	.loc_0x118:
	  lbz       r0, 0x0(r4)
	  cmplwi    r0, 0x6
	  bne-      .loc_0x144
	  li        r3, 0
	  li        r0, 0x7
	  sth       r3, 0x2(r4)
	  lfs       f0, -0x7F80(r2)
	  stfs      f0, 0x4(r4)
	  lfs       f0, 0x8(r4)
	  stfs      f0, 0xC(r4)
	  stb       r0, 0x0(r4)

	.loc_0x144:
	  lbz       r5, 0x0(r4)
	  cmplwi    r5, 0x5
	  bne-      .loc_0x158
	  lwz       r8, 0xC(r31)
	  b         .loc_0x174

	.loc_0x158:
	  cmplwi    r5, 0x7
	  bne-      .loc_0x170
	  lis       r3, 0x8022
	  addi      r0, r3, 0x5018
	  mr        r8, r0
	  b         .loc_0x174

	.loc_0x170:
	  lwz       r8, 0x8(r31)

	.loc_0x174:
	  cmplwi    r8, 0
	  bne-      .loc_0x190
	  cmplwi    r5, 0x8
	  beq-      .loc_0x190
	  lfs       f1, -0x7F98(r2)
	  stfs      f1, 0x8(r4)
	  b         .loc_0x3E4

	.loc_0x190:
	  cmplwi    r5, 0
	  bne-      .loc_0x1A0
	  lfs       f1, -0x7F98(r2)
	  b         .loc_0x3E4

	.loc_0x1A0:
	  cmplwi    r5, 0x3
	  bne-      .loc_0x1BC
	  lfs       f2, 0x8(r4)
	  lfs       f1, 0x10(r31)
	  lfs       f0, 0x14(r31)
	  fmadds    f1, f2, f1, f0
	  b         .loc_0x3E4

	.loc_0x1BC:
	  cmplwi    r5, 0x1
	  bne-      .loc_0x1EC
	  li        r3, 0x2
	  li        r0, 0
	  stb       r3, 0x0(r4)
	  sth       r0, 0x2(r4)
	  lfs       f0, -0x7F80(r2)
	  stfs      f0, 0x4(r4)
	  stfs      f0, 0xC(r4)
	  sth       r0, 0x14(r4)
	  lfs       f1, 0x4(r31)
	  b         .loc_0x1F0

	.loc_0x1EC:
	  lfs       f1, 0x4(r31)

	.loc_0x1F0:
	  lbz       r0, 0x0(r4)
	  cmplwi    r0, 0x7
	  bne-      .loc_0x200
	  lfs       f1, -0x7F98(r2)

	.loc_0x200:
	  lfs       f0, 0x4(r4)
	  lis       r5, 0x4330
	  fsubs     f0, f0, f1
	  stfs      f0, 0x4(r4)
	  lfd       f8, -0x7F88(r2)
	  lfs       f7, -0x7F74(r2)
	  lfd       f6, -0x7F90(r2)
	  lfs       f5, -0x7F7C(r2)
	  lfs       f4, -0x7F78(r2)
	  lfs       f0, -0x7F80(r2)
	  b         .loc_0x350

	.loc_0x22C:
	  lhz       r0, 0x2(r4)
	  lfs       f1, 0xC(r4)
	  mulli     r3, r0, 0x3
	  stfs      f1, 0x8(r4)
	  lbz       r0, 0x0(r4)
	  cmplwi    r0, 0x8
	  bne-      .loc_0x254
	  li        r0, 0
	  stb       r0, 0x0(r4)
	  b         .loc_0x360

	.loc_0x254:
	  rlwinm    r0,r3,1,0,30
	  add       r3, r8, r0
	  lha       r6, 0x0(r3)
	  lha       r7, 0x2(r3)
	  cmpwi     r6, 0xD
	  lha       r3, 0x4(r3)
	  bne-      .loc_0x278
	  sth       r3, 0x2(r4)
	  b         .loc_0x350

	.loc_0x278:
	  cmpwi     r6, 0xF
	  bne-      .loc_0x28C
	  li        r0, 0
	  stb       r0, 0x0(r4)
	  b         .loc_0x360

	.loc_0x28C:
	  cmpwi     r6, 0xE
	  bne-      .loc_0x2B0
	  li        r0, 0x3
	  stb       r0, 0x0(r4)
	  lfs       f2, 0x8(r4)
	  lfs       f1, 0x10(r31)
	  lfs       f0, 0x14(r31)
	  fmadds    f1, f2, f1, f0
	  b         .loc_0x3E4

	.loc_0x2B0:
	  extsh.    r0, r7
	  stb       r6, 0x1(r4)
	  bne-      .loc_0x2E8
	  xoris     r0, r3, 0x8000
	  stw       r0, 0x1C(r1)
	  stw       r5, 0x18(r1)
	  lfd       f1, 0x18(r1)
	  fsubs     f1, f1, f8
	  fdivs     f1, f1, f7
	  stfs      f1, 0xC(r4)
	  lhz       r3, 0x2(r4)
	  addi      r0, r3, 0x1
	  sth       r0, 0x2(r4)
	  b         .loc_0x350

	.loc_0x2E8:
	  lfs       f1, -0x8000(r13)
	  xoris     r0, r3, 0x8000
	  stw       r0, 0x14(r1)
	  rlwinm    r0,r7,0,16,31
	  fdivs     f2, f1, f5
	  stw       r5, 0x10(r1)
	  lfd       f1, 0x10(r1)
	  stw       r0, 0x1C(r1)
	  stw       r5, 0x18(r1)
	  lfd       f3, 0x18(r1)
	  fdivs     f2, f2, f4
	  fsubs     f1, f1, f8
	  fsubs     f3, f3, f6
	  fdivs     f1, f1, f7
	  fmuls     f3, f3, f2
	  stfs      f3, 0x4(r4)
	  stfs      f1, 0xC(r4)
	  lfs       f3, 0xC(r4)
	  lfs       f2, 0x8(r4)
	  lfs       f1, 0x4(r4)
	  fsubs     f2, f3, f2
	  fdivs     f1, f2, f1
	  stfs      f1, 0x10(r4)
	  lhz       r3, 0x2(r4)
	  addi      r0, r3, 0x1
	  sth       r0, 0x2(r4)

	.loc_0x350:
	  lfs       f1, 0x4(r4)
	  fcmpo     cr0, f1, f0
	  cror      2, 0, 0x2
	  beq+      .loc_0x22C

	.loc_0x360:
	  lfs       f2, 0x10(r4)
	  lfs       f1, 0x4(r4)
	  lfs       f0, 0xC(r4)
	  fnmsubs   f0, f2, f1, f0
	  stfs      f0, 0x8(r4)
	  fmr       f1, f0
	  lbz       r0, 0x1(r4)
	  cmpwi     r0, 0x1
	  beq-      .loc_0x398
	  bge-      .loc_0x38C
	  b         .loc_0x3D8

	.loc_0x38C:
	  cmpwi     r0, 0x3
	  bge-      .loc_0x3D8
	  b         .loc_0x3B8

	.loc_0x398:
	  lfs       f0, -0x7F80(r2)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x3AC
	  fmuls     f1, f1, f1
	  b         .loc_0x3D8

	.loc_0x3AC:
	  fneg      f0, f1
	  fmuls     f1, f0, f1
	  b         .loc_0x3D8

	.loc_0x3B8:
	  lfs       f0, -0x7F80(r2)
	  fcmpo     cr0, f1, f0
	  ble-      .loc_0x3CC
	  bl        0x51C
	  b         .loc_0x3D8

	.loc_0x3CC:
	  fneg      f1, f1
	  bl        0x510
	  fneg      f1, f1

	.loc_0x3D8:
	  lfs       f2, 0x10(r31)
	  lfs       f0, 0x14(r31)
	  fmadds    f1, f1, f2, f0

	.loc_0x3E4:
	  lwz       r0, 0x2C(r1)
	  lwz       r31, 0x24(r1)
	  addi      r1, r1, 0x28
	  mtlr      r0
	  blr
	*/
}
