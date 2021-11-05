.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global TRKDoNotifyStopped
TRKDoNotifyStopped:
/* 8021E6B0 0021B610  7C 08 02 A6 */	mflr r0
/* 8021E6B4 0021B614  90 01 00 04 */	stw r0, 4(r1)
/* 8021E6B8 0021B618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021E6BC 0021B61C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021E6C0 0021B620  38 81 00 0C */	addi r4, r1, 0xc
/* 8021E6C4 0021B624  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021E6C8 0021B628  3B C3 00 00 */	addi r30, r3, 0
/* 8021E6CC 0021B62C  38 61 00 08 */	addi r3, r1, 8
/* 8021E6D0 0021B630  4B FF DE 7D */	bl TRKGetFreeBuffer
/* 8021E6D4 0021B634  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021E6D8 0021B638  40 82 00 94 */	bne lbl_8021E76C
/* 8021E6DC 0021B63C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8021E6E0 0021B640  80 65 00 0C */	lwz r3, 0xc(r5)
/* 8021E6E4 0021B644  28 03 08 80 */	cmplwi r3, 0x880
/* 8021E6E8 0021B648  41 80 00 0C */	blt lbl_8021E6F4
/* 8021E6EC 0021B64C  38 80 03 01 */	li r4, 0x301
/* 8021E6F0 0021B650  48 00 00 24 */	b lbl_8021E714
lbl_8021E6F4:
/* 8021E6F4 0021B654  38 03 00 01 */	addi r0, r3, 1
/* 8021E6F8 0021B658  7C 65 1A 14 */	add r3, r5, r3
/* 8021E6FC 0021B65C  90 05 00 0C */	stw r0, 0xc(r5)
/* 8021E700 0021B660  38 80 00 00 */	li r4, 0
/* 8021E704 0021B664  9B C3 00 10 */	stb r30, 0x10(r3)
/* 8021E708 0021B668  80 65 00 08 */	lwz r3, 8(r5)
/* 8021E70C 0021B66C  38 03 00 01 */	addi r0, r3, 1
/* 8021E710 0021B670  90 05 00 08 */	stw r0, 8(r5)
lbl_8021E714:
/* 8021E714 0021B674  2C 04 00 00 */	cmpwi r4, 0
/* 8021E718 0021B678  40 82 00 24 */	bne lbl_8021E73C
/* 8021E71C 0021B67C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8021E720 0021B680  28 00 00 90 */	cmplwi r0, 0x90
/* 8021E724 0021B684  40 82 00 10 */	bne lbl_8021E734
/* 8021E728 0021B688  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021E72C 0021B68C  48 00 0F 55 */	bl TRKTargetAddStopInfo
/* 8021E730 0021B690  48 00 00 0C */	b lbl_8021E73C
lbl_8021E734:
/* 8021E734 0021B694  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021E738 0021B698  48 00 0F D9 */	bl TRKTargetAddExceptionInfo
lbl_8021E73C:
/* 8021E73C 0021B69C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8021E740 0021B6A0  38 81 00 10 */	addi r4, r1, 0x10
/* 8021E744 0021B6A4  38 A0 00 02 */	li r5, 2
/* 8021E748 0021B6A8  38 C0 00 03 */	li r6, 3
/* 8021E74C 0021B6AC  38 E0 00 01 */	li r7, 1
/* 8021E750 0021B6B0  4B FF FD A5 */	bl TRKRequestSend
/* 8021E754 0021B6B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021E758 0021B6B8  40 82 00 0C */	bne lbl_8021E764
/* 8021E75C 0021B6BC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8021E760 0021B6C0  4B FF DE B5 */	bl TRKReleaseBuffer
lbl_8021E764:
/* 8021E764 0021B6C4  80 61 00 08 */	lwz r3, 8(r1)
/* 8021E768 0021B6C8  4B FF DE AD */	bl TRKReleaseBuffer
lbl_8021E76C:
/* 8021E76C 0021B6CC  7F E3 FB 78 */	mr r3, r31
/* 8021E770 0021B6D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021E774 0021B6D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021E778 0021B6D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E77C 0021B6DC  80 01 00 04 */	lwz r0, 4(r1)
/* 8021E780 0021B6E0  7C 08 03 A6 */	mtlr r0
/* 8021E784 0021B6E4  4E 80 00 20 */	blr 
