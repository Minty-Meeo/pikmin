.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global setOperateMode_Copy__Q23zen18ogScrFileSelectMgrFv
setOperateMode_Copy__Q23zen18ogScrFileSelectMgrFv:
/* 8019719C 001940FC  7C 08 02 A6 */	mflr r0
/* 801971A0 00194100  38 80 00 05 */	li r4, 5
/* 801971A4 00194104  90 01 00 04 */	stw r0, 4(r1)
/* 801971A8 00194108  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801971AC 0019410C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801971B0 00194110  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801971B4 00194114  3B C3 00 00 */	addi r30, r3, 0
/* 801971B8 00194118  4B FF 1E FD */	bl SetTitleMsg__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr16titleMessageFlag
/* 801971BC 0019411C  A8 1E 01 34 */	lha r0, 0x134(r30)
/* 801971C0 00194120  38 60 00 00 */	li r3, 0
/* 801971C4 00194124  7C 03 00 00 */	cmpw r3, r0
/* 801971C8 00194128  41 82 00 0C */	beq lbl_801971D4
/* 801971CC 0019412C  90 7E 11 9C */	stw r3, 0x119c(r30)
/* 801971D0 00194130  48 00 00 28 */	b lbl_801971F8
lbl_801971D4:
/* 801971D4 00194134  38 60 00 01 */	li r3, 1
/* 801971D8 00194138  7C 03 00 00 */	cmpw r3, r0
/* 801971DC 0019413C  41 82 00 0C */	beq lbl_801971E8
/* 801971E0 00194140  90 7E 11 9C */	stw r3, 0x119c(r30)
/* 801971E4 00194144  48 00 00 14 */	b lbl_801971F8
lbl_801971E8:
/* 801971E8 00194148  38 60 00 02 */	li r3, 2
/* 801971EC 0019414C  7C 03 00 00 */	cmpw r3, r0
/* 801971F0 00194150  41 82 00 08 */	beq lbl_801971F8
/* 801971F4 00194154  90 7E 11 9C */	stw r3, 0x119c(r30)
lbl_801971F8:
/* 801971F8 00194158  80 1E 11 9C */	lwz r0, 0x119c(r30)
/* 801971FC 0019415C  3F E0 7A 30 */	lis r31, 0x7A30306C@ha
/* 80197200 00194160  80 9E 02 BC */	lwz r4, 0x2bc(r30)
/* 80197204 00194164  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80197208 00194168  54 00 10 3A */	slwi r0, r0, 2
/* 8019720C 0019416C  7C FE 02 14 */	add r7, r30, r0
/* 80197210 00194170  80 BE 04 48 */	lwz r5, 0x448(r30)
/* 80197214 00194174  C0 27 01 04 */	lfs f1, 0x104(r7)
/* 80197218 00194178  38 DF 30 6C */	addi r6, r31, 0x7A30306C@l
/* 8019721C 0019417C  C0 47 01 1C */	lfs f2, 0x11c(r7)
/* 80197220 00194180  48 04 3A 1D */	bl init__Q23zen17SpectrumCursorMgrFP9P2DScreenP7P2DPaneUlff
/* 80197224 00194184  80 1E 11 9C */	lwz r0, 0x119c(r30)
/* 80197228 00194188  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8019722C 0019418C  80 9E 02 BC */	lwz r4, 0x2bc(r30)
/* 80197230 00194190  38 DF 30 72 */	addi r6, r31, 0x3072
/* 80197234 00194194  54 00 10 3A */	slwi r0, r0, 2
/* 80197238 00194198  7C FE 02 14 */	add r7, r30, r0
/* 8019723C 0019419C  80 BE 04 48 */	lwz r5, 0x448(r30)
/* 80197240 001941A0  C0 27 01 10 */	lfs f1, 0x110(r7)
/* 80197244 001941A4  C0 47 01 28 */	lfs f2, 0x128(r7)
/* 80197248 001941A8  48 04 39 F5 */	bl init__Q23zen17SpectrumCursorMgrFP9P2DScreenP7P2DPaneUlff
/* 8019724C 001941AC  80 BE 04 48 */	lwz r5, 0x448(r30)
/* 80197250 001941B0  3B E0 00 01 */	li r31, 1
/* 80197254 001941B4  38 7E 00 00 */	addi r3, r30, 0
/* 80197258 001941B8  88 05 00 0C */	lbz r0, 0xc(r5)
/* 8019725C 001941BC  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 80197260 001941C0  38 80 00 00 */	li r4, 0
/* 80197264 001941C4  98 05 00 0C */	stb r0, 0xc(r5)
/* 80197268 001941C8  4B FF 08 5D */	bl paneOnOffXY__Q23zen18ogScrFileSelectMgrFb
/* 8019726C 001941CC  9B FE 11 A0 */	stb r31, 0x11a0(r30)
/* 80197270 001941D0  38 7E 00 A4 */	addi r3, r30, 0xa4
/* 80197274 001941D4  C0 22 B2 78 */	lfs f1, lbl_803EB478@sda21(r2)
/* 80197278 001941D8  C0 42 B2 7C */	lfs f2, lbl_803EB47C@sda21(r2)
/* 8019727C 001941DC  48 04 39 9D */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 80197280 001941E0  C0 22 B2 78 */	lfs f1, lbl_803EB478@sda21(r2)
/* 80197284 001941E4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80197288 001941E8  C0 42 B2 7C */	lfs f2, lbl_803EB47C@sda21(r2)
/* 8019728C 001941EC  48 04 39 8D */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 80197290 001941F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80197294 001941F4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80197298 001941F8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8019729C 001941FC  38 21 00 28 */	addi r1, r1, 0x28
/* 801972A0 00194200  7C 08 03 A6 */	mtlr r0
/* 801972A4 00194204  4E 80 00 20 */	blr 

.global CopyEffectStart__Q23zen18ogScrFileSelectMgrFv
CopyEffectStart__Q23zen18ogScrFileSelectMgrFv:
/* 801972A8 00194208  7C 08 02 A6 */	mflr r0
/* 801972AC 0019420C  38 80 00 2A */	li r4, 0x2a
/* 801972B0 00194210  90 01 00 04 */	stw r0, 4(r1)
/* 801972B4 00194214  38 C0 00 00 */	li r6, 0
/* 801972B8 00194218  38 E0 00 00 */	li r7, 0
/* 801972BC 0019421C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 801972C0 00194220  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 801972C4 00194224  3F E0 43 30 */	lis r31, 0x4330
/* 801972C8 00194228  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 801972CC 0019422C  93 C1 01 18 */	stw r30, 0x118(r1)
/* 801972D0 00194230  3B C3 00 00 */	addi r30, r3, 0
/* 801972D4 00194234  93 A1 01 14 */	stw r29, 0x114(r1)
/* 801972D8 00194238  C0 A2 B2 80 */	lfs f5, lbl_803EB480@sda21(r2)
/* 801972DC 0019423C  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 801972E0 00194240  D0 A1 00 C4 */	stfs f5, 0xc4(r1)
/* 801972E4 00194244  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 801972E8 00194248  D0 A1 00 BC */	stfs f5, 0xbc(r1)
/* 801972EC 0019424C  D0 A1 00 B8 */	stfs f5, 0xb8(r1)
/* 801972F0 00194250  A8 63 01 34 */	lha r3, 0x134(r3)
/* 801972F4 00194254  80 1E 11 9C */	lwz r0, 0x119c(r30)
/* 801972F8 00194258  54 63 10 3A */	slwi r3, r3, 2
/* 801972FC 0019425C  C0 2D 0E 18 */	lfs f1, lbl_803E5B38@sda21(r13)
/* 80197300 00194260  7D 1E 1A 14 */	add r8, r30, r3
/* 80197304 00194264  C0 0D 0E 1C */	lfs f0, lbl_803E5B3C@sda21(r13)
/* 80197308 00194268  54 00 10 3A */	slwi r0, r0, 2
/* 8019730C 0019426C  81 28 03 B0 */	lwz r9, 0x3b0(r8)
/* 80197310 00194270  7C 7E 02 14 */	add r3, r30, r0
/* 80197314 00194274  81 43 03 D4 */	lwz r10, 0x3d4(r3)
/* 80197318 00194278  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8019731C 0019427C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80197320 00194280  C0 0D 0E 20 */	lfs f0, lbl_803E5B40@sda21(r13)
/* 80197324 00194284  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80197328 00194288  A9 09 00 18 */	lha r8, 0x18(r9)
/* 8019732C 0019428C  A8 09 00 1C */	lha r0, 0x1c(r9)
/* 80197330 00194290  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80197334 00194294  C8 82 B2 90 */	lfd f4, lbl_803EB490@sda21(r2)
/* 80197338 00194298  7C 08 00 50 */	subf r0, r8, r0
/* 8019733C 0019429C  90 61 01 0C */	stw r3, 0x10c(r1)
/* 80197340 001942A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80197344 001942A4  C0 62 B2 84 */	lfs f3, lbl_803EB484@sda21(r2)
/* 80197348 001942A8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8019734C 001942AC  C0 42 B2 88 */	lfs f2, lbl_803EB488@sda21(r2)
/* 80197350 001942B0  93 E1 01 00 */	stw r31, 0x100(r1)
/* 80197354 001942B4  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 80197358 001942B8  93 E1 01 08 */	stw r31, 0x108(r1)
/* 8019735C 001942BC  EC 00 20 28 */	fsubs f0, f0, f4
/* 80197360 001942C0  C8 21 01 08 */	lfd f1, 0x108(r1)
/* 80197364 001942C4  EC 21 20 28 */	fsubs f1, f1, f4
/* 80197368 001942C8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8019736C 001942CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80197370 001942D0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80197374 001942D4  A9 09 00 1A */	lha r8, 0x1a(r9)
/* 80197378 001942D8  A8 09 00 1E */	lha r0, 0x1e(r9)
/* 8019737C 001942DC  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80197380 001942E0  7C 08 00 50 */	subf r0, r8, r0
/* 80197384 001942E4  90 61 00 FC */	stw r3, 0xfc(r1)
/* 80197388 001942E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019738C 001942EC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80197390 001942F0  93 E1 00 F0 */	stw r31, 0xf0(r1)
/* 80197394 001942F4  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80197398 001942F8  93 E1 00 F8 */	stw r31, 0xf8(r1)
/* 8019739C 001942FC  EC 00 20 28 */	fsubs f0, f0, f4
/* 801973A0 00194300  C8 21 00 F8 */	lfd f1, 0xf8(r1)
/* 801973A4 00194304  EC 21 20 28 */	fsubs f1, f1, f4
/* 801973A8 00194308  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801973AC 0019430C  EC 01 00 2A */	fadds f0, f1, f0
/* 801973B0 00194310  EC 02 00 28 */	fsubs f0, f2, f0
/* 801973B4 00194314  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801973B8 00194318  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 801973BC 0019431C  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 801973C0 00194320  D0 A1 00 90 */	stfs f5, 0x90(r1)
/* 801973C4 00194324  C0 0A 00 84 */	lfs f0, 0x84(r10)
/* 801973C8 00194328  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801973CC 0019432C  C0 0A 00 94 */	lfs f0, 0x94(r10)
/* 801973D0 00194330  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801973D4 00194334  C0 0A 00 A4 */	lfs f0, 0xa4(r10)
/* 801973D8 00194338  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801973DC 0019433C  80 01 00 90 */	lwz r0, 0x90(r1)
/* 801973E0 00194340  80 61 00 94 */	lwz r3, 0x94(r1)
/* 801973E4 00194344  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801973E8 00194348  80 01 00 98 */	lwz r0, 0x98(r1)
/* 801973EC 0019434C  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 801973F0 00194350  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801973F4 00194354  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 801973F8 00194358  EC 02 00 28 */	fsubs f0, f2, f0
/* 801973FC 0019435C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80197400 00194360  80 7E 00 00 */	lwz r3, 0(r30)
/* 80197404 00194364  48 05 27 39 */	bl "create__Q23zen11EffectMgr2DFUlR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 80197408 00194368  90 7E 00 04 */	stw r3, 4(r30)
/* 8019740C 0019436C  83 BE 00 04 */	lwz r29, 4(r30)
/* 80197410 00194370  7F A3 EB 78 */	mr r3, r29
/* 80197414 00194374  4B F7 D8 5D */	bl getGPos__Q23zen17particleGeneratorFv
/* 80197418 00194378  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8019741C 0019437C  38 C1 00 68 */	addi r6, r1, 0x68
/* 80197420 00194380  C0 03 00 08 */	lfs f0, 8(r3)
/* 80197424 00194384  38 A1 00 64 */	addi r5, r1, 0x64
/* 80197428 00194388  38 81 00 60 */	addi r4, r1, 0x60
/* 8019742C 0019438C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197430 00194390  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80197434 00194394  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80197438 00194398  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 8019743C 0019439C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80197440 001943A0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80197444 001943A4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80197448 001943A8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8019744C 001943AC  38 61 00 84 */	addi r3, r1, 0x84
/* 80197450 001943B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197454 001943B4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80197458 001943B8  4B E9 FC C5 */	bl __ct__8Vector3fFRCfRCfRCf
/* 8019745C 001943BC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80197460 001943C0  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 80197464 001943C4  38 80 00 29 */	li r4, 0x29
/* 80197468 001943C8  D0 1D 01 70 */	stfs f0, 0x170(r29)
/* 8019746C 001943CC  38 C0 00 00 */	li r6, 0
/* 80197470 001943D0  38 E0 00 00 */	li r7, 0
/* 80197474 001943D4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80197478 001943D8  D0 1D 01 74 */	stfs f0, 0x174(r29)
/* 8019747C 001943DC  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80197480 001943E0  D0 1D 01 78 */	stfs f0, 0x178(r29)
/* 80197484 001943E4  C0 02 B2 8C */	lfs f0, lbl_803EB48C@sda21(r2)
/* 80197488 001943E8  D0 1D 01 7C */	stfs f0, 0x17c(r29)
/* 8019748C 001943EC  80 1D 00 84 */	lwz r0, 0x84(r29)
/* 80197490 001943F0  64 00 00 10 */	oris r0, r0, 0x10
/* 80197494 001943F4  90 1D 00 84 */	stw r0, 0x84(r29)
/* 80197498 001943F8  A8 7E 01 34 */	lha r3, 0x134(r30)
/* 8019749C 001943FC  80 1E 11 9C */	lwz r0, 0x119c(r30)
/* 801974A0 00194400  54 63 10 3A */	slwi r3, r3, 2
/* 801974A4 00194404  C0 2D 0E 24 */	lfs f1, lbl_803E5B44@sda21(r13)
/* 801974A8 00194408  7D 1E 1A 14 */	add r8, r30, r3
/* 801974AC 0019440C  C0 0D 0E 28 */	lfs f0, lbl_803E5B48@sda21(r13)
/* 801974B0 00194410  54 00 10 3A */	slwi r0, r0, 2
/* 801974B4 00194414  81 28 03 BC */	lwz r9, 0x3bc(r8)
/* 801974B8 00194418  7C 7E 02 14 */	add r3, r30, r0
/* 801974BC 0019441C  81 43 03 E0 */	lwz r10, 0x3e0(r3)
/* 801974C0 00194420  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 801974C4 00194424  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801974C8 00194428  C0 0D 0E 2C */	lfs f0, lbl_803E5B4C@sda21(r13)
/* 801974CC 0019442C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801974D0 00194430  A9 09 00 18 */	lha r8, 0x18(r9)
/* 801974D4 00194434  A8 09 00 1C */	lha r0, 0x1c(r9)
/* 801974D8 00194438  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 801974DC 0019443C  C8 82 B2 90 */	lfd f4, lbl_803EB490@sda21(r2)
/* 801974E0 00194440  7C 08 00 50 */	subf r0, r8, r0
/* 801974E4 00194444  90 61 00 EC */	stw r3, 0xec(r1)
/* 801974E8 00194448  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801974EC 0019444C  C0 62 B2 84 */	lfs f3, lbl_803EB484@sda21(r2)
/* 801974F0 00194450  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801974F4 00194454  C0 42 B2 88 */	lfs f2, lbl_803EB488@sda21(r2)
/* 801974F8 00194458  93 E1 00 E0 */	stw r31, 0xe0(r1)
/* 801974FC 0019445C  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80197500 00194460  93 E1 00 E8 */	stw r31, 0xe8(r1)
/* 80197504 00194464  EC 00 20 28 */	fsubs f0, f0, f4
/* 80197508 00194468  C8 21 00 E8 */	lfd f1, 0xe8(r1)
/* 8019750C 0019446C  EC 21 20 28 */	fsubs f1, f1, f4
/* 80197510 00194470  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80197514 00194474  EC 01 00 2A */	fadds f0, f1, f0
/* 80197518 00194478  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8019751C 0019447C  A9 09 00 1A */	lha r8, 0x1a(r9)
/* 80197520 00194480  A8 09 00 1E */	lha r0, 0x1e(r9)
/* 80197524 00194484  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80197528 00194488  7C 08 00 50 */	subf r0, r8, r0
/* 8019752C 0019448C  90 61 00 DC */	stw r3, 0xdc(r1)
/* 80197530 00194490  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80197534 00194494  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80197538 00194498  93 E1 00 D0 */	stw r31, 0xd0(r1)
/* 8019753C 0019449C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80197540 001944A0  93 E1 00 D8 */	stw r31, 0xd8(r1)
/* 80197544 001944A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 80197548 001944A8  C8 21 00 D8 */	lfd f1, 0xd8(r1)
/* 8019754C 001944AC  EC 21 20 28 */	fsubs f1, f1, f4
/* 80197550 001944B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80197554 001944B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80197558 001944B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8019755C 001944BC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80197560 001944C0  C0 02 B2 80 */	lfs f0, lbl_803EB480@sda21(r2)
/* 80197564 001944C4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80197568 001944C8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8019756C 001944CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80197570 001944D0  C0 0A 00 84 */	lfs f0, 0x84(r10)
/* 80197574 001944D4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80197578 001944D8  C0 0A 00 94 */	lfs f0, 0x94(r10)
/* 8019757C 001944DC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80197580 001944E0  C0 0A 00 A4 */	lfs f0, 0xa4(r10)
/* 80197584 001944E4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80197588 001944E8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8019758C 001944EC  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80197590 001944F0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80197594 001944F4  80 01 00 80 */	lwz r0, 0x80(r1)
/* 80197598 001944F8  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 8019759C 001944FC  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801975A0 00194500  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 801975A4 00194504  EC 02 00 28 */	fsubs f0, f2, f0
/* 801975A8 00194508  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801975AC 0019450C  80 7E 00 00 */	lwz r3, 0(r30)
/* 801975B0 00194510  48 05 25 8D */	bl "create__Q23zen11EffectMgr2DFUlR8Vector3fPQ23zen37CallBack1<PQ23zen17particleGenerator>PQ23zen58CallBack2<PQ23zen17particleGenerator,PQ23zen11particleMdl>"
/* 801975B4 00194514  90 7E 00 08 */	stw r3, 8(r30)
/* 801975B8 00194518  83 BE 00 08 */	lwz r29, 8(r30)
/* 801975BC 0019451C  7F A3 EB 78 */	mr r3, r29
/* 801975C0 00194520  4B F7 D6 B1 */	bl getGPos__Q23zen17particleGeneratorFv
/* 801975C4 00194524  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 801975C8 00194528  38 C1 00 5C */	addi r6, r1, 0x5c
/* 801975CC 0019452C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801975D0 00194530  38 A1 00 58 */	addi r5, r1, 0x58
/* 801975D4 00194534  38 81 00 54 */	addi r4, r1, 0x54
/* 801975D8 00194538  EC 01 00 28 */	fsubs f0, f1, f0
/* 801975DC 0019453C  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801975E0 00194540  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801975E4 00194544  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 801975E8 00194548  C0 03 00 04 */	lfs f0, 4(r3)
/* 801975EC 0019454C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801975F0 00194550  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801975F4 00194554  C0 03 00 00 */	lfs f0, 0(r3)
/* 801975F8 00194558  38 61 00 6C */	addi r3, r1, 0x6c
/* 801975FC 0019455C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80197600 00194560  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80197604 00194564  4B E9 FB 19 */	bl __ct__8Vector3fFRCfRCfRCf
/* 80197608 00194568  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8019760C 0019456C  D0 1D 01 70 */	stfs f0, 0x170(r29)
/* 80197610 00194570  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80197614 00194574  D0 1D 01 74 */	stfs f0, 0x174(r29)
/* 80197618 00194578  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8019761C 0019457C  D0 1D 01 78 */	stfs f0, 0x178(r29)
/* 80197620 00194580  C0 02 B2 8C */	lfs f0, lbl_803EB48C@sda21(r2)
/* 80197624 00194584  D0 1D 01 7C */	stfs f0, 0x17c(r29)
/* 80197628 00194588  80 1D 00 84 */	lwz r0, 0x84(r29)
/* 8019762C 0019458C  64 00 00 10 */	oris r0, r0, 0x10
/* 80197630 00194590  90 1D 00 84 */	stw r0, 0x84(r29)
/* 80197634 00194594  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80197638 00194598  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8019763C 0019459C  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 80197640 001945A0  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 80197644 001945A4  38 21 01 20 */	addi r1, r1, 0x120
/* 80197648 001945A8  7C 08 03 A6 */	mtlr r0
/* 8019764C 001945AC  4E 80 00 20 */	blr 

.global OperateCopy__Q23zen18ogScrFileSelectMgrFP10Controller
OperateCopy__Q23zen18ogScrFileSelectMgrFP10Controller:
/* 80197650 001945B0  7C 08 02 A6 */	mflr r0
/* 80197654 001945B4  90 01 00 04 */	stw r0, 4(r1)
/* 80197658 001945B8  94 21 FF 48 */	stwu r1, -0xb8(r1)
/* 8019765C 001945BC  93 E1 00 B4 */	stw r31, 0xb4(r1)
/* 80197660 001945C0  7C 7F 1B 78 */	mr r31, r3
/* 80197664 001945C4  93 C1 00 B0 */	stw r30, 0xb0(r1)
/* 80197668 001945C8  93 A1 00 AC */	stw r29, 0xac(r1)
/* 8019766C 001945CC  88 03 11 98 */	lbz r0, 0x1198(r3)
/* 80197670 001945D0  28 00 00 00 */	cmplwi r0, 0
/* 80197674 001945D4  41 82 00 64 */	beq lbl_801976D8
/* 80197678 001945D8  80 7F 03 00 */	lwz r3, 0x300(r31)
/* 8019767C 001945DC  38 80 00 01 */	li r4, 1
/* 80197680 001945E0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80197684 001945E4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197688 001945E8  98 03 00 0C */	stb r0, 0xc(r3)
/* 8019768C 001945EC  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 80197690 001945F0  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 80197694 001945F4  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 80197698 001945F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8019769C 001945FC  D0 1F 11 8C */	stfs f0, 0x118c(r31)
/* 801976A0 00194600  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801976A4 00194604  C0 02 B2 80 */	lfs f0, lbl_803EB480@sda21(r2)
/* 801976A8 00194608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801976AC 0019460C  40 80 04 10 */	bge lbl_80197ABC
/* 801976B0 00194610  3B C0 00 00 */	li r30, 0
/* 801976B4 00194614  9B DF 11 98 */	stb r30, 0x1198(r31)
/* 801976B8 00194618  38 7F 00 00 */	addi r3, r31, 0
/* 801976BC 0019461C  38 80 00 00 */	li r4, 0
/* 801976C0 00194620  4B FF 05 CD */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
/* 801976C4 00194624  80 7F 03 00 */	lwz r3, 0x300(r31)
/* 801976C8 00194628  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801976CC 0019462C  53 C0 3E 30 */	rlwimi r0, r30, 7, 0x18, 0x18
/* 801976D0 00194630  98 03 00 0C */	stb r0, 0xc(r3)
/* 801976D4 00194634  48 00 03 E8 */	b lbl_80197ABC
lbl_801976D8:
/* 801976D8 00194638  88 1F 11 97 */	lbz r0, 0x1197(r31)
/* 801976DC 0019463C  28 00 00 00 */	cmplwi r0, 0
/* 801976E0 00194640  41 82 01 88 */	beq lbl_80197868
/* 801976E4 00194644  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 801976E8 00194648  38 80 00 01 */	li r4, 1
/* 801976EC 0019464C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801976F0 00194650  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801976F4 00194654  98 03 00 0C */	stb r0, 0xc(r3)
/* 801976F8 00194658  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 801976FC 0019465C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80197700 00194660  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197704 00194664  98 03 00 0C */	stb r0, 0xc(r3)
/* 80197708 00194668  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 8019770C 0019466C  C0 02 B2 98 */	lfs f0, lbl_803EB498@sda21(r2)
/* 80197710 00194670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80197714 00194674  40 81 00 30 */	ble lbl_80197744
/* 80197718 00194678  EC 21 00 28 */	fsubs f1, f1, f0
/* 8019771C 0019467C  C0 02 B2 A0 */	lfs f0, lbl_803EB4A0@sda21(r2)
/* 80197720 00194680  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197724 00194684  C0 42 B2 9C */	lfs f2, lbl_803EB49C@sda21(r2)
/* 80197728 00194688  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019772C 0019468C  AB A3 00 1A */	lha r29, 0x1a(r3)
/* 80197730 00194690  EC 02 00 32 */	fmuls f0, f2, f0
/* 80197734 00194694  FC 00 00 1E */	fctiwz f0, f0
/* 80197738 00194698  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8019773C 0019469C  83 C1 00 A4 */	lwz r30, 0xa4(r1)
/* 80197740 001946A0  48 00 00 5C */	b lbl_8019779C
lbl_80197744:
/* 80197744 001946A4  C0 42 B2 A0 */	lfs f2, lbl_803EB4A0@sda21(r2)
/* 80197748 001946A8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8019774C 001946AC  40 80 00 44 */	bge lbl_80197790
/* 80197750 001946B0  EC 01 10 28 */	fsubs f0, f1, f2
/* 80197754 001946B4  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197758 001946B8  C0 22 B2 9C */	lfs f1, lbl_803EB49C@sda21(r2)
/* 8019775C 001946BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80197760 001946C0  EC 00 10 24 */	fdivs f0, f0, f2
/* 80197764 001946C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80197768 001946C8  AB A3 00 1A */	lha r29, 0x1a(r3)
/* 8019776C 001946CC  7D 88 03 A6 */	mtlr r12
/* 80197770 001946D0  7F A5 EB 78 */	mr r5, r29
/* 80197774 001946D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80197778 001946D8  FC 00 00 1E */	fctiwz f0, f0
/* 8019777C 001946DC  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80197780 001946E0  83 C1 00 A4 */	lwz r30, 0xa4(r1)
/* 80197784 001946E4  7F C4 F3 78 */	mr r4, r30
/* 80197788 001946E8  4E 80 00 21 */	blrl 
/* 8019778C 001946EC  48 00 00 10 */	b lbl_8019779C
lbl_80197790:
/* 80197790 001946F0  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197794 001946F4  AB C3 00 18 */	lha r30, 0x18(r3)
/* 80197798 001946F8  AB A3 00 1A */	lha r29, 0x1a(r3)
lbl_8019779C:
/* 8019779C 001946FC  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 801977A0 00194700  38 9E 00 00 */	addi r4, r30, 0
/* 801977A4 00194704  38 BD 00 00 */	addi r5, r29, 0
/* 801977A8 00194708  81 83 00 00 */	lwz r12, 0(r3)
/* 801977AC 0019470C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801977B0 00194710  7D 88 03 A6 */	mtlr r12
/* 801977B4 00194714  4E 80 00 21 */	blrl 
/* 801977B8 00194718  80 6D 2D EC */	lwz r3, gsys@sda21(r13)
/* 801977BC 0019471C  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801977C0 00194720  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 801977C4 00194724  EC 01 00 28 */	fsubs f0, f1, f0
/* 801977C8 00194728  D0 1F 11 8C */	stfs f0, 0x118c(r31)
/* 801977CC 0019472C  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801977D0 00194730  C0 02 B2 80 */	lfs f0, lbl_803EB480@sda21(r2)
/* 801977D4 00194734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801977D8 00194738  40 80 02 E4 */	bge lbl_80197ABC
/* 801977DC 0019473C  3C 60 80 3A */	lis r3, gameflow@ha
/* 801977E0 00194740  38 63 D7 B8 */	addi r3, r3, gameflow@l
/* 801977E4 00194744  38 63 00 24 */	addi r3, r3, 0x24
/* 801977E8 00194748  4B ED C2 75 */	bl hasCardFinished__10MemoryCardFv
/* 801977EC 0019474C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801977F0 00194750  41 82 02 CC */	beq lbl_80197ABC
/* 801977F4 00194754  38 60 01 29 */	li r3, 0x129
/* 801977F8 00194758  4B F0 DB 7D */	bl playSysSe__8SeSystemFi
/* 801977FC 0019475C  7F E3 FB 78 */	mr r3, r31
/* 80197800 00194760  4B FE FF 91 */	bl copyCardInfosSub__Q23zen18ogScrFileSelectMgrFv
/* 80197804 00194764  7F E3 FB 78 */	mr r3, r31
/* 80197808 00194768  4B FF 2B E1 */	bl ChkNewData__Q23zen18ogScrFileSelectMgrFv
/* 8019780C 0019476C  38 80 00 00 */	li r4, 0
/* 80197810 00194770  98 9F 11 97 */	stb r4, 0x1197(r31)
/* 80197814 00194774  38 00 00 01 */	li r0, 1
/* 80197818 00194778  98 1F 11 98 */	stb r0, 0x1198(r31)
/* 8019781C 0019477C  C0 02 B2 78 */	lfs f0, lbl_803EB478@sda21(r2)
/* 80197820 00194780  D0 1F 11 8C */	stfs f0, 0x118c(r31)
/* 80197824 00194784  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80197828 00194788  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8019782C 0019478C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197830 00194790  98 03 00 0C */	stb r0, 0xc(r3)
/* 80197834 00194794  80 7F 02 CC */	lwz r3, 0x2cc(r31)
/* 80197838 00194798  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8019783C 0019479C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197840 001947A0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80197844 001947A4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80197848 001947A8  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8019784C 001947AC  60 00 00 02 */	ori r0, r0, 2
/* 80197850 001947B0  90 03 00 80 */	stw r0, 0x80(r3)
/* 80197854 001947B4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80197858 001947B8  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8019785C 001947BC  60 00 00 02 */	ori r0, r0, 2
/* 80197860 001947C0  90 03 00 80 */	stw r0, 0x80(r3)
/* 80197864 001947C4  48 00 02 58 */	b lbl_80197ABC
lbl_80197868:
/* 80197868 001947C8  88 1F 11 A0 */	lbz r0, 0x11a0(r31)
/* 8019786C 001947CC  28 00 00 00 */	cmplwi r0, 0
/* 80197870 001947D0  41 82 01 8C */	beq lbl_801979FC
/* 80197874 001947D4  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80197878 001947D8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8019787C 001947DC  41 82 00 1C */	beq lbl_80197898
/* 80197880 001947E0  38 60 01 1D */	li r3, 0x11d
/* 80197884 001947E4  4B F0 DA F1 */	bl playSysSe__8SeSystemFi
/* 80197888 001947E8  38 7F 00 00 */	addi r3, r31, 0
/* 8019788C 001947EC  38 80 00 00 */	li r4, 0
/* 80197890 001947F0  4B FF 03 FD */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
/* 80197894 001947F4  48 00 02 28 */	b lbl_80197ABC
lbl_80197898:
/* 80197898 001947F8  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 8019789C 001947FC  41 82 00 80 */	beq lbl_8019791C
/* 801978A0 00194800  38 60 01 11 */	li r3, 0x111
/* 801978A4 00194804  4B F0 DA D1 */	bl playSysSe__8SeSystemFi
/* 801978A8 00194808  38 00 00 00 */	li r0, 0
/* 801978AC 0019480C  98 1F 11 A0 */	stb r0, 0x11a0(r31)
/* 801978B0 00194810  38 A0 00 01 */	li r5, 1
/* 801978B4 00194814  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 801978B8 00194818  80 9F 02 D8 */	lwz r4, 0x2d8(r31)
/* 801978BC 0019481C  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801978C0 00194820  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801978C4 00194824  98 04 00 0C */	stb r0, 0xc(r4)
/* 801978C8 00194828  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 801978CC 0019482C  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801978D0 00194830  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801978D4 00194834  98 04 00 0C */	stb r0, 0xc(r4)
/* 801978D8 00194838  80 BF 02 D4 */	lwz r5, 0x2d4(r31)
/* 801978DC 0019483C  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 801978E0 00194840  88 05 00 F7 */	lbz r0, 0xf7(r5)
/* 801978E4 00194844  98 04 00 F0 */	stb r0, 0xf0(r4)
/* 801978E8 00194848  C0 22 B2 80 */	lfs f1, lbl_803EB480@sda21(r2)
/* 801978EC 0019484C  C0 42 B2 7C */	lfs f2, lbl_803EB47C@sda21(r2)
/* 801978F0 00194850  48 04 33 29 */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 801978F4 00194854  C0 22 B2 80 */	lfs f1, lbl_803EB480@sda21(r2)
/* 801978F8 00194858  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 801978FC 0019485C  C0 42 B2 7C */	lfs f2, lbl_803EB47C@sda21(r2)
/* 80197900 00194860  48 04 33 19 */	bl scale__Q23zen17SpectrumCursorMgrFff
/* 80197904 00194864  7F E3 FB 78 */	mr r3, r31
/* 80197908 00194868  4B FF 02 BD */	bl OpenYesNoWindow__Q23zen18ogScrFileSelectMgrFv
/* 8019790C 0019486C  38 7F 00 00 */	addi r3, r31, 0
/* 80197910 00194870  38 80 00 06 */	li r4, 6
/* 80197914 00194874  4B FF 17 A1 */	bl SetTitleMsg__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr16titleMessageFlag
/* 80197918 00194878  48 00 01 A4 */	b lbl_80197ABC
lbl_8019791C:
/* 8019791C 0019487C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80197920 00194880  41 82 00 6C */	beq lbl_8019798C
/* 80197924 00194884  38 00 00 03 */	li r0, 3
/* 80197928 00194888  7C 09 03 A6 */	mtctr r0
/* 8019792C 0019488C  3B A0 00 00 */	li r29, 0
lbl_80197930:
/* 80197930 00194890  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80197934 00194894  7C 1D 00 00 */	cmpw r29, r0
/* 80197938 00194898  41 82 00 14 */	beq lbl_8019794C
/* 8019793C 0019489C  38 60 01 12 */	li r3, 0x112
/* 80197940 001948A0  4B F0 DA 35 */	bl playSysSe__8SeSystemFi
/* 80197944 001948A4  93 BF 11 9C */	stw r29, 0x119c(r31)
/* 80197948 001948A8  48 00 00 0C */	b lbl_80197954
lbl_8019794C:
/* 8019794C 001948AC  3B BD 00 01 */	addi r29, r29, 1
/* 80197950 001948B0  42 00 FF E0 */	bdnz lbl_80197930
lbl_80197954:
/* 80197954 001948B4  80 1F 11 9C */	lwz r0, 0x119c(r31)
/* 80197958 001948B8  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 8019795C 001948BC  C0 62 B2 7C */	lfs f3, lbl_803EB47C@sda21(r2)
/* 80197960 001948C0  54 00 10 3A */	slwi r0, r0, 2
/* 80197964 001948C4  7F DF 02 14 */	add r30, r31, r0
/* 80197968 001948C8  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8019796C 001948CC  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80197970 001948D0  48 04 32 39 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 80197974 001948D4  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 80197978 001948D8  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8019797C 001948DC  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80197980 001948E0  C0 62 B2 7C */	lfs f3, lbl_803EB47C@sda21(r2)
/* 80197984 001948E4  48 04 32 25 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 80197988 001948E8  48 00 01 34 */	b lbl_80197ABC
lbl_8019798C:
/* 8019798C 001948EC  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80197990 001948F0  41 82 01 2C */	beq lbl_80197ABC
/* 80197994 001948F4  38 00 00 03 */	li r0, 3
/* 80197998 001948F8  7C 09 03 A6 */	mtctr r0
/* 8019799C 001948FC  3B A0 00 02 */	li r29, 2
lbl_801979A0:
/* 801979A0 00194900  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 801979A4 00194904  7C 1D 00 00 */	cmpw r29, r0
/* 801979A8 00194908  41 82 00 14 */	beq lbl_801979BC
/* 801979AC 0019490C  38 60 01 12 */	li r3, 0x112
/* 801979B0 00194910  4B F0 D9 C5 */	bl playSysSe__8SeSystemFi
/* 801979B4 00194914  93 BF 11 9C */	stw r29, 0x119c(r31)
/* 801979B8 00194918  48 00 00 0C */	b lbl_801979C4
lbl_801979BC:
/* 801979BC 0019491C  3B BD FF FF */	addi r29, r29, -1
/* 801979C0 00194920  42 00 FF E0 */	bdnz lbl_801979A0
lbl_801979C4:
/* 801979C4 00194924  80 1F 11 9C */	lwz r0, 0x119c(r31)
/* 801979C8 00194928  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 801979CC 0019492C  C0 62 B2 7C */	lfs f3, lbl_803EB47C@sda21(r2)
/* 801979D0 00194930  54 00 10 3A */	slwi r0, r0, 2
/* 801979D4 00194934  7F DF 02 14 */	add r30, r31, r0
/* 801979D8 00194938  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 801979DC 0019493C  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 801979E0 00194940  48 04 31 C9 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 801979E4 00194944  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 801979E8 00194948  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 801979EC 0019494C  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 801979F0 00194950  C0 62 B2 7C */	lfs f3, lbl_803EB47C@sda21(r2)
/* 801979F4 00194954  48 04 31 B5 */	bl move__Q23zen17SpectrumCursorMgrFfff
/* 801979F8 00194958  48 00 00 C4 */	b lbl_80197ABC
lbl_801979FC:
/* 801979FC 0019495C  80 7F 02 6C */	lwz r3, 0x26c(r31)
/* 80197A00 00194960  4B FF F4 59 */	bl update__Q23zen11ogNitakuMgrFP10Controller
/* 80197A04 00194964  3B C3 00 00 */	addi r30, r3, 0
/* 80197A08 00194968  2C 1E 00 04 */	cmpwi r30, 4
/* 80197A0C 0019496C  41 80 00 0C */	blt lbl_80197A18
/* 80197A10 00194970  7F E3 FB 78 */	mr r3, r31
/* 80197A14 00194974  4B FF 02 65 */	bl CloseYesNoWindow__Q23zen18ogScrFileSelectMgrFv
lbl_80197A18:
/* 80197A18 00194978  2C 1E 00 04 */	cmpwi r30, 4
/* 80197A1C 0019497C  40 82 00 1C */	bne lbl_80197A38
/* 80197A20 00194980  38 60 01 1D */	li r3, 0x11d
/* 80197A24 00194984  4B F0 D9 51 */	bl playSysSe__8SeSystemFi
/* 80197A28 00194988  38 7F 00 00 */	addi r3, r31, 0
/* 80197A2C 0019498C  38 80 00 00 */	li r4, 0
/* 80197A30 00194990  4B FF 02 5D */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
/* 80197A34 00194994  48 00 00 88 */	b lbl_80197ABC
lbl_80197A38:
/* 80197A38 00194998  2C 1E 00 05 */	cmpwi r30, 5
/* 80197A3C 0019499C  40 82 00 6C */	bne lbl_80197AA8
/* 80197A40 001949A0  38 00 00 01 */	li r0, 1
/* 80197A44 001949A4  98 1F 11 97 */	stb r0, 0x1197(r31)
/* 80197A48 001949A8  38 60 01 28 */	li r3, 0x128
/* 80197A4C 001949AC  C0 02 B2 A4 */	lfs f0, lbl_803EB4A4@sda21(r2)
/* 80197A50 001949B0  D0 1F 11 8C */	stfs f0, 0x118c(r31)
/* 80197A54 001949B4  4B F0 D9 21 */	bl playSysSe__8SeSystemFi
/* 80197A58 001949B8  A8 7F 01 34 */	lha r3, 0x134(r31)
/* 80197A5C 001949BC  3C 80 80 3A */	lis r4, gameflow@ha
/* 80197A60 001949C0  80 1F 11 9C */	lwz r0, 0x119c(r31)
/* 80197A64 001949C4  38 C4 D7 B8 */	addi r6, r4, gameflow@l
/* 80197A68 001949C8  1C 83 00 28 */	mulli r4, r3, 0x28
/* 80197A6C 001949CC  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80197A70 001949D0  38 84 00 2C */	addi r4, r4, 0x2c
/* 80197A74 001949D4  38 A3 00 2C */	addi r5, r3, 0x2c
/* 80197A78 001949D8  38 66 00 24 */	addi r3, r6, 0x24
/* 80197A7C 001949DC  7C 9F 22 14 */	add r4, r31, r4
/* 80197A80 001949E0  7C BF 2A 14 */	add r5, r31, r5
/* 80197A84 001949E4  4B ED DA 31 */	bl copyFile__10MemoryCardFR13CardQuickInfoR13CardQuickInfo
/* 80197A88 001949E8  7F E3 FB 78 */	mr r3, r31
/* 80197A8C 001949EC  4B FF F8 1D */	bl CopyEffectStart__Q23zen18ogScrFileSelectMgrFv
/* 80197A90 001949F0  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 80197A94 001949F4  38 80 00 00 */	li r4, 0
/* 80197A98 001949F8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80197A9C 001949FC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80197AA0 00194A00  98 03 00 0C */	stb r0, 0xc(r3)
/* 80197AA4 00194A04  48 00 00 18 */	b lbl_80197ABC
lbl_80197AA8:
/* 80197AA8 00194A08  2C 1E 00 06 */	cmpwi r30, 6
/* 80197AAC 00194A0C  40 82 00 10 */	bne lbl_80197ABC
/* 80197AB0 00194A10  38 7F 00 00 */	addi r3, r31, 0
/* 80197AB4 00194A14  38 80 00 00 */	li r4, 0
/* 80197AB8 00194A18  4B FF 01 D5 */	bl setOperateMode__Q23zen18ogScrFileSelectMgrFQ33zen18ogScrFileSelectMgr15FileOperateMode
lbl_80197ABC:
/* 80197ABC 00194A1C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80197AC0 00194A20  83 E1 00 B4 */	lwz r31, 0xb4(r1)
/* 80197AC4 00194A24  83 C1 00 B0 */	lwz r30, 0xb0(r1)
/* 80197AC8 00194A28  83 A1 00 AC */	lwz r29, 0xac(r1)
/* 80197ACC 00194A2C  38 21 00 B8 */	addi r1, r1, 0xb8
/* 80197AD0 00194A30  7C 08 03 A6 */	mtlr r0
/* 80197AD4 00194A34  4E 80 00 20 */	blr 

.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.balign 8
lbl_803E5B38:
	.4byte 0x00000000
lbl_803E5B3C:
	.4byte 0x00000000
lbl_803E5B40:
	.4byte 0x00000000
lbl_803E5B44:
	.4byte 0x00000000
lbl_803E5B48:
	.4byte 0x00000000
lbl_803E5B4C:
	.4byte 0x00000000

.section .sdata2, "a"  # 0x803E8200 - 0x803EC840
.balign 8
lbl_803EB478:
	.4byte 0x3F800000
lbl_803EB47C:
	.4byte 0x3E800000
lbl_803EB480:
	.4byte 0x00000000
lbl_803EB484:
	.4byte 0x3F000000
lbl_803EB488:
	.4byte 0x43F00000
lbl_803EB48C:
	.4byte 0x3B96BB99
lbl_803EB490:
	.4byte 0x43300000
	.4byte 0x80000000
lbl_803EB498:
	.4byte 0x402CCCCD
lbl_803EB49C:
	.4byte 0x44200000
lbl_803EB4A0:
	.4byte 0x3E99999A
lbl_803EB4A4:
	.4byte 0x40400000
