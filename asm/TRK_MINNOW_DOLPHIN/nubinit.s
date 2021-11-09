.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRKInitializeNub
TRKInitializeNub:
/* 8021C310 00219270  7C 08 02 A6 */	mflr r0
/* 8021C314 00219274  90 01 00 04 */	stw r0, 4(r1)
/* 8021C318 00219278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C31C 0021927C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021C320 00219280  93 C1 00 08 */	stw r30, 8(r1)
/* 8021C324 00219284  48 00 01 0D */	bl TRKInitializeEndian
/* 8021C328 00219288  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021C32C 0021928C  40 82 00 08 */	bne lbl_8021C334
/* 8021C330 00219290  48 00 0B AD */	bl usr_put_initialize
lbl_8021C334:
/* 8021C334 00219294  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C338 00219298  40 82 00 0C */	bne lbl_8021C344
/* 8021C33C 0021929C  4B FF FD 79 */	bl TRKInitializeEventQueue
/* 8021C340 002192A0  7C 7E 1B 78 */	mr r30, r3
lbl_8021C344:
/* 8021C344 002192A4  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C348 002192A8  40 82 00 0C */	bne lbl_8021C354
/* 8021C34C 002192AC  48 00 01 89 */	bl TRKInitializeMessageBuffers
/* 8021C350 002192B0  7C 7E 1B 78 */	mr r30, r3
lbl_8021C354:
/* 8021C354 002192B4  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C358 002192B8  40 82 00 0C */	bne lbl_8021C364
/* 8021C35C 002192BC  48 00 0B 85 */	bl TRKInitializeDispatcher
/* 8021C360 002192C0  7C 7E 1B 78 */	mr r30, r3
lbl_8021C364:
/* 8021C364 002192C4  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C368 002192C8  40 82 00 40 */	bne lbl_8021C3A8
/* 8021C36C 002192CC  3C 60 80 3D */	lis r3, gTRKInputPendingPtr@ha
/* 8021C370 002192D0  3B E3 5C E4 */	addi r31, r3, gTRKInputPendingPtr@l
/* 8021C374 002192D4  3C 60 00 01 */	lis r3, 0x0000E100@ha
/* 8021C378 002192D8  38 DF 00 00 */	addi r6, r31, 0
/* 8021C37C 002192DC  38 63 E1 00 */	addi r3, r3, 0x0000E100@l
/* 8021C380 002192E0  38 80 00 01 */	li r4, 1
/* 8021C384 002192E4  38 A0 00 00 */	li r5, 0
/* 8021C388 002192E8  48 00 42 85 */	bl TRKInitializeIntDrivenUART
/* 8021C38C 002192EC  7C 60 1B 78 */	mr r0, r3
/* 8021C390 002192F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8021C394 002192F4  7C 1F 03 78 */	mr r31, r0
/* 8021C398 002192F8  48 00 3A B9 */	bl TRKTargetSetInputPendingPtr
/* 8021C39C 002192FC  2C 1F 00 00 */	cmpwi r31, 0
/* 8021C3A0 00219300  41 82 00 08 */	beq lbl_8021C3A8
/* 8021C3A4 00219304  7F FE FB 78 */	mr r30, r31
lbl_8021C3A8:
/* 8021C3A8 00219308  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C3AC 0021930C  40 82 00 0C */	bne lbl_8021C3B8
/* 8021C3B0 00219310  48 00 0B 01 */	bl TRKInitializeSerialHandler
/* 8021C3B4 00219314  7C 7E 1B 78 */	mr r30, r3
lbl_8021C3B8:
/* 8021C3B8 00219318  2C 1E 00 00 */	cmpwi r30, 0
/* 8021C3BC 0021931C  40 82 00 0C */	bne lbl_8021C3C8
/* 8021C3C0 00219320  48 00 3C 91 */	bl TRKInitializeTarget
/* 8021C3C4 00219324  7C 7E 1B 78 */	mr r30, r3
lbl_8021C3C8:
/* 8021C3C8 00219328  7F C3 F3 78 */	mr r3, r30
/* 8021C3CC 0021932C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021C3D0 00219330  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021C3D4 00219334  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C3D8 00219338  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C3DC 0021933C  7C 08 03 A6 */	mtlr r0
/* 8021C3E0 00219340  4E 80 00 20 */	blr 

.global TRKTerminateNub
TRKTerminateNub:
/* 8021C3E4 00219344  7C 08 02 A6 */	mflr r0
/* 8021C3E8 00219348  90 01 00 04 */	stw r0, 4(r1)
/* 8021C3EC 0021934C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021C3F0 00219350  48 00 0A E5 */	bl TRKTerminateSerialHandler
/* 8021C3F4 00219354  38 60 00 00 */	li r3, 0
/* 8021C3F8 00219358  38 21 00 08 */	addi r1, r1, 8
/* 8021C3FC 0021935C  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C400 00219360  7C 08 03 A6 */	mtlr r0
/* 8021C404 00219364  4E 80 00 20 */	blr 

.global TRKNubWelcome
TRKNubWelcome:
/* 8021C408 00219368  7C 08 02 A6 */	mflr r0
/* 8021C40C 0021936C  3C 60 80 22 */	lis r3, lbl_80222D50@ha
/* 8021C410 00219370  90 01 00 04 */	stw r0, 4(r1)
/* 8021C414 00219374  38 63 2D 50 */	addi r3, r3, lbl_80222D50@l
/* 8021C418 00219378  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021C41C 0021937C  48 00 43 79 */	bl TRK_board_display
/* 8021C420 00219380  38 21 00 08 */	addi r1, r1, 8
/* 8021C424 00219384  80 01 00 04 */	lwz r0, 4(r1)
/* 8021C428 00219388  7C 08 03 A6 */	mtlr r0
/* 8021C42C 0021938C  4E 80 00 20 */	blr 

.global TRKInitializeEndian
TRKInitializeEndian:
/* 8021C430 00219390  3C 60 80 3D */	lis r3, gTRKBigEndian@ha
/* 8021C434 00219394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021C438 00219398  38 A3 43 18 */	addi r5, r3, gTRKBigEndian@l
/* 8021C43C 0021939C  38 C0 00 01 */	li r6, 1
/* 8021C440 002193A0  90 C5 00 00 */	stw r6, 0(r5)
/* 8021C444 002193A4  38 00 00 12 */	li r0, 0x12
/* 8021C448 002193A8  38 60 00 34 */	li r3, 0x34
/* 8021C44C 002193AC  98 01 00 08 */	stb r0, 8(r1)
/* 8021C450 002193B0  38 80 00 56 */	li r4, 0x56
/* 8021C454 002193B4  38 00 00 78 */	li r0, 0x78
/* 8021C458 002193B8  98 61 00 09 */	stb r3, 9(r1)
/* 8021C45C 002193BC  38 60 00 00 */	li r3, 0
/* 8021C460 002193C0  98 81 00 0A */	stb r4, 0xa(r1)
/* 8021C464 002193C4  98 01 00 0B */	stb r0, 0xb(r1)
/* 8021C468 002193C8  80 81 00 08 */	lwz r4, 8(r1)
/* 8021C46C 002193CC  3C 04 ED CC */	addis r0, r4, 0xedcc
/* 8021C470 002193D0  28 00 56 78 */	cmplwi r0, 0x5678
/* 8021C474 002193D4  40 82 00 0C */	bne lbl_8021C480
/* 8021C478 002193D8  90 C5 00 00 */	stw r6, 0(r5)
/* 8021C47C 002193DC  48 00 00 20 */	b lbl_8021C49C
lbl_8021C480:
/* 8021C480 002193E0  3C 04 87 AA */	addis r0, r4, 0x87aa
/* 8021C484 002193E4  28 00 34 12 */	cmplwi r0, 0x3412
/* 8021C488 002193E8  40 82 00 10 */	bne lbl_8021C498
/* 8021C48C 002193EC  38 00 00 00 */	li r0, 0
/* 8021C490 002193F0  90 05 00 00 */	stw r0, 0(r5)
/* 8021C494 002193F4  48 00 00 08 */	b lbl_8021C49C
lbl_8021C498:
/* 8021C498 002193F8  38 60 00 01 */	li r3, 1
lbl_8021C49C:
/* 8021C49C 002193FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021C4A0 00219400  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x80221FE0 - 0x80222DC0
.balign 0x8
lbl_80222D50:
	.asciz "MetroTRK for Dolphin v0.8"
