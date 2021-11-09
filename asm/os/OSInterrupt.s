.include "macros.inc"
.section .text, "ax"  # 0x80005560 - 0x80221F60
.global OSDisableInterrupts
OSDisableInterrupts:
/* 801F8F7C 001F5EDC  7C 60 00 A6 */	mfmsr r3
/* 801F8F80 001F5EE0  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 801F8F84 001F5EE4  7C 80 01 24 */	mtmsr r4
/* 801F8F88 001F5EE8  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
.global lbl_801F8F8C
lbl_801F8F8C:
/* 801F8F8C 001F5EEC  4E 80 00 20 */	blr 

.global OSEnableInterrupts
OSEnableInterrupts:
/* 801F8F90 001F5EF0  7C 60 00 A6 */	mfmsr r3
/* 801F8F94 001F5EF4  60 64 80 00 */	ori r4, r3, 0x8000
/* 801F8F98 001F5EF8  7C 80 01 24 */	mtmsr r4
/* 801F8F9C 001F5EFC  54 63 8F FE */	rlwinm r3, r3, 0x11, 0x1f, 0x1f
/* 801F8FA0 001F5F00  4E 80 00 20 */	blr 

.global OSRestoreInterrupts
OSRestoreInterrupts:
/* 801F8FA4 001F5F04  2C 03 00 00 */	cmpwi r3, 0
/* 801F8FA8 001F5F08  7C 80 00 A6 */	mfmsr r4
/* 801F8FAC 001F5F0C  41 82 00 0C */	beq lbl_801F8FB8
/* 801F8FB0 001F5F10  60 85 80 00 */	ori r5, r4, 0x8000
/* 801F8FB4 001F5F14  48 00 00 08 */	b lbl_801F8FBC
lbl_801F8FB8:
/* 801F8FB8 001F5F18  54 85 04 5E */	rlwinm r5, r4, 0, 0x11, 0xf
lbl_801F8FBC:
/* 801F8FBC 001F5F1C  7C A0 01 24 */	mtmsr r5
/* 801F8FC0 001F5F20  54 84 8F FE */	rlwinm r4, r4, 0x11, 0x1f, 0x1f
/* 801F8FC4 001F5F24  4E 80 00 20 */	blr 

.global __OSSetInterruptHandler
__OSSetInterruptHandler:
/* 801F8FC8 001F5F28  7C 60 07 34 */	extsh r0, r3
/* 801F8FCC 001F5F2C  80 6D 31 F8 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 801F8FD0 001F5F30  54 00 10 3A */	slwi r0, r0, 2
/* 801F8FD4 001F5F34  7C A3 02 14 */	add r5, r3, r0
/* 801F8FD8 001F5F38  80 65 00 00 */	lwz r3, 0(r5)
/* 801F8FDC 001F5F3C  90 85 00 00 */	stw r4, 0(r5)
/* 801F8FE0 001F5F40  4E 80 00 20 */	blr 

.global __OSGetInterruptHandler
__OSGetInterruptHandler:
/* 801F8FE4 001F5F44  7C 60 07 34 */	extsh r0, r3
/* 801F8FE8 001F5F48  80 6D 31 F8 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 801F8FEC 001F5F4C  54 00 10 3A */	slwi r0, r0, 2
/* 801F8FF0 001F5F50  7C 63 00 2E */	lwzx r3, r3, r0
/* 801F8FF4 001F5F54  4E 80 00 20 */	blr 

.global __OSInterruptInit
__OSInterruptInit:
/* 801F8FF8 001F5F58  7C 08 02 A6 */	mflr r0
/* 801F8FFC 001F5F5C  90 01 00 04 */	stw r0, 4(r1)
/* 801F9000 001F5F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9004 001F5F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F9008 001F5F68  3F E0 80 00 */	lis r31, 0x80003040@ha
/* 801F900C 001F5F6C  38 1F 30 40 */	addi r0, r31, 0x80003040@l
/* 801F9010 001F5F70  90 0D 31 F8 */	stw r0, InterruptHandlerTable@sda21(r13)
/* 801F9014 001F5F74  38 80 00 00 */	li r4, 0
/* 801F9018 001F5F78  38 A0 00 80 */	li r5, 0x80
/* 801F901C 001F5F7C  80 6D 31 F8 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 801F9020 001F5F80  4B E0 A3 01 */	bl memset
/* 801F9024 001F5F84  38 00 00 00 */	li r0, 0
/* 801F9028 001F5F88  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 801F902C 001F5F8C  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801F9030 001F5F90  38 83 30 00 */	addi r4, r3, 0xCC003000@l
/* 801F9034 001F5F94  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801F9038 001F5F98  38 00 00 F0 */	li r0, 0xf0
/* 801F903C 001F5F9C  38 60 FF E0 */	li r3, -32
/* 801F9040 001F5FA0  90 04 00 04 */	stw r0, 4(r4)
/* 801F9044 001F5FA4  48 00 02 D9 */	bl __OSMaskInterrupts
/* 801F9048 001F5FA8  3C 60 80 20 */	lis r3, ExternalInterruptHandler@ha
/* 801F904C 001F5FAC  38 83 97 50 */	addi r4, r3, ExternalInterruptHandler@l
/* 801F9050 001F5FB0  38 60 00 04 */	li r3, 4
/* 801F9054 001F5FB4  4B FF CF 01 */	bl __OSSetExceptionHandler
/* 801F9058 001F5FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F905C 001F5FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F9060 001F5FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F9064 001F5FC4  7C 08 03 A6 */	mtlr r0
/* 801F9068 001F5FC8  4E 80 00 20 */	blr 

.global SetInterruptMask
SetInterruptMask:
/* 801F906C 001F5FCC  7C 60 00 34 */	cntlzw r0, r3
/* 801F9070 001F5FD0  28 00 00 1A */	cmplwi r0, 0x1a
/* 801F9074 001F5FD4  41 81 02 A4 */	bgt lbl_801F9318
/* 801F9078 001F5FD8  3C A0 80 2E */	lis r5, lbl_802E7B54@ha
/* 801F907C 001F5FDC  38 A5 7B 54 */	addi r5, r5, lbl_802E7B54@l
/* 801F9080 001F5FE0  54 00 10 3A */	slwi r0, r0, 2
/* 801F9084 001F5FE4  7C 05 00 2E */	lwzx r0, r5, r0
/* 801F9088 001F5FE8  7C 09 03 A6 */	mtctr r0
/* 801F908C 001F5FEC  4E 80 04 20 */	bctr 
.global lbl_801F9090
lbl_801F9090:
/* 801F9090 001F5FF0  54 80 00 00 */	rlwinm r0, r4, 0, 0, 0
/* 801F9094 001F5FF4  28 00 00 00 */	cmplwi r0, 0
/* 801F9098 001F5FF8  38 A0 00 00 */	li r5, 0
/* 801F909C 001F5FFC  40 82 00 08 */	bne lbl_801F90A4
/* 801F90A0 001F6000  60 A5 00 01 */	ori r5, r5, 1
lbl_801F90A4:
/* 801F90A4 001F6004  54 80 00 42 */	rlwinm r0, r4, 0, 1, 1
/* 801F90A8 001F6008  28 00 00 00 */	cmplwi r0, 0
/* 801F90AC 001F600C  40 82 00 08 */	bne lbl_801F90B4
/* 801F90B0 001F6010  60 A5 00 02 */	ori r5, r5, 2
lbl_801F90B4:
/* 801F90B4 001F6014  54 80 00 84 */	rlwinm r0, r4, 0, 2, 2
/* 801F90B8 001F6018  28 00 00 00 */	cmplwi r0, 0
/* 801F90BC 001F601C  40 82 00 08 */	bne lbl_801F90C4
/* 801F90C0 001F6020  60 A5 00 04 */	ori r5, r5, 4
lbl_801F90C4:
/* 801F90C4 001F6024  54 80 00 C6 */	rlwinm r0, r4, 0, 3, 3
/* 801F90C8 001F6028  28 00 00 00 */	cmplwi r0, 0
/* 801F90CC 001F602C  40 82 00 08 */	bne lbl_801F90D4
/* 801F90D0 001F6030  60 A5 00 08 */	ori r5, r5, 8
lbl_801F90D4:
/* 801F90D4 001F6034  54 80 01 08 */	rlwinm r0, r4, 0, 4, 4
/* 801F90D8 001F6038  28 00 00 00 */	cmplwi r0, 0
/* 801F90DC 001F603C  40 82 00 08 */	bne lbl_801F90E4
/* 801F90E0 001F6040  60 A5 00 10 */	ori r5, r5, 0x10
lbl_801F90E4:
/* 801F90E4 001F6044  3C 80 CC 00 */	lis r4, 0xCC004000@ha
/* 801F90E8 001F6048  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 801F90EC 001F604C  38 84 40 00 */	addi r4, r4, 0xCC004000@l
/* 801F90F0 001F6050  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 801F90F4 001F6054  54 63 01 7E */	clrlwi r3, r3, 5
/* 801F90F8 001F6058  48 00 02 20 */	b lbl_801F9318
.global lbl_801F90FC
lbl_801F90FC:
/* 801F90FC 001F605C  3C A0 CC 00 */	lis r5, 0xCC005000@ha
/* 801F9100 001F6060  38 A5 50 00 */	addi r5, r5, 0xCC005000@l
/* 801F9104 001F6064  38 A5 00 0A */	addi r5, r5, 0xa
/* 801F9108 001F6068  54 80 01 4A */	rlwinm r0, r4, 0, 5, 5
/* 801F910C 001F606C  A0 C5 00 00 */	lhz r6, 0(r5)
/* 801F9110 001F6070  28 00 00 00 */	cmplwi r0, 0
/* 801F9114 001F6074  54 C6 07 6C */	rlwinm r6, r6, 0, 0x1d, 0x16
/* 801F9118 001F6078  40 82 00 08 */	bne lbl_801F9120
/* 801F911C 001F607C  60 C6 00 10 */	ori r6, r6, 0x10
lbl_801F9120:
/* 801F9120 001F6080  54 80 01 8C */	rlwinm r0, r4, 0, 6, 6
/* 801F9124 001F6084  28 00 00 00 */	cmplwi r0, 0
/* 801F9128 001F6088  40 82 00 08 */	bne lbl_801F9130
/* 801F912C 001F608C  60 C6 00 40 */	ori r6, r6, 0x40
lbl_801F9130:
/* 801F9130 001F6090  54 80 01 CE */	rlwinm r0, r4, 0, 7, 7
/* 801F9134 001F6094  28 00 00 00 */	cmplwi r0, 0
/* 801F9138 001F6098  40 82 00 08 */	bne lbl_801F9140
/* 801F913C 001F609C  60 C6 01 00 */	ori r6, r6, 0x100
lbl_801F9140:
/* 801F9140 001F60A0  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 801F9144 001F60A4  B0 05 00 00 */	sth r0, 0(r5)
/* 801F9148 001F60A8  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 801F914C 001F60AC  48 00 01 CC */	b lbl_801F9318
.global lbl_801F9150
lbl_801F9150:
/* 801F9150 001F60B0  54 80 02 10 */	rlwinm r0, r4, 0, 8, 8
/* 801F9154 001F60B4  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 801F9158 001F60B8  28 00 00 00 */	cmplwi r0, 0
/* 801F915C 001F60BC  80 A4 6C 00 */	lwz r5, 0xCC006C00@l(r4)
/* 801F9160 001F60C0  38 00 FF D3 */	li r0, -45
/* 801F9164 001F60C4  7C A5 00 38 */	and r5, r5, r0
/* 801F9168 001F60C8  40 82 00 08 */	bne lbl_801F9170
/* 801F916C 001F60CC  60 A5 00 04 */	ori r5, r5, 4
lbl_801F9170:
/* 801F9170 001F60D0  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 801F9174 001F60D4  90 A4 6C 00 */	stw r5, 0xCC006C00@l(r4)
/* 801F9178 001F60D8  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 801F917C 001F60DC  48 00 01 9C */	b lbl_801F9318
.global lbl_801F9180
lbl_801F9180:
/* 801F9180 001F60E0  54 80 02 52 */	rlwinm r0, r4, 0, 9, 9
/* 801F9184 001F60E4  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 801F9188 001F60E8  28 00 00 00 */	cmplwi r0, 0
/* 801F918C 001F60EC  80 A5 68 00 */	lwz r5, 0xCC006800@l(r5)
/* 801F9190 001F60F0  38 00 D3 F0 */	li r0, -11280
/* 801F9194 001F60F4  7C A5 00 38 */	and r5, r5, r0
/* 801F9198 001F60F8  40 82 00 08 */	bne lbl_801F91A0
/* 801F919C 001F60FC  60 A5 00 01 */	ori r5, r5, 1
lbl_801F91A0:
/* 801F91A0 001F6100  54 80 02 94 */	rlwinm r0, r4, 0, 0xa, 0xa
/* 801F91A4 001F6104  28 00 00 00 */	cmplwi r0, 0
/* 801F91A8 001F6108  40 82 00 08 */	bne lbl_801F91B0
/* 801F91AC 001F610C  60 A5 00 04 */	ori r5, r5, 4
lbl_801F91B0:
/* 801F91B0 001F6110  54 80 02 D6 */	rlwinm r0, r4, 0, 0xb, 0xb
/* 801F91B4 001F6114  28 00 00 00 */	cmplwi r0, 0
/* 801F91B8 001F6118  40 82 00 08 */	bne lbl_801F91C0
/* 801F91BC 001F611C  60 A5 04 00 */	ori r5, r5, 0x400
lbl_801F91C0:
/* 801F91C0 001F6120  3C 80 CC 00 */	lis r4, 0xCC006800@ha
/* 801F91C4 001F6124  90 A4 68 00 */	stw r5, 0xCC006800@l(r4)
/* 801F91C8 001F6128  54 63 03 10 */	rlwinm r3, r3, 0, 0xc, 8
/* 801F91CC 001F612C  48 00 01 4C */	b lbl_801F9318
.global lbl_801F91D0
lbl_801F91D0:
/* 801F91D0 001F6130  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 801F91D4 001F6134  38 C5 68 00 */	addi r6, r5, 0xCC006800@l
/* 801F91D8 001F6138  38 C6 00 14 */	addi r6, r6, 0x14
/* 801F91DC 001F613C  54 80 03 18 */	rlwinm r0, r4, 0, 0xc, 0xc
/* 801F91E0 001F6140  80 E6 00 00 */	lwz r7, 0(r6)
/* 801F91E4 001F6144  38 A0 F3 F0 */	li r5, -3088
/* 801F91E8 001F6148  28 00 00 00 */	cmplwi r0, 0
/* 801F91EC 001F614C  7C E7 28 38 */	and r7, r7, r5
/* 801F91F0 001F6150  40 82 00 08 */	bne lbl_801F91F8
/* 801F91F4 001F6154  60 E7 00 01 */	ori r7, r7, 1
lbl_801F91F8:
/* 801F91F8 001F6158  54 80 03 5A */	rlwinm r0, r4, 0, 0xd, 0xd
/* 801F91FC 001F615C  28 00 00 00 */	cmplwi r0, 0
/* 801F9200 001F6160  40 82 00 08 */	bne lbl_801F9208
/* 801F9204 001F6164  60 E7 00 04 */	ori r7, r7, 4
lbl_801F9208:
/* 801F9208 001F6168  54 80 03 9C */	rlwinm r0, r4, 0, 0xe, 0xe
/* 801F920C 001F616C  28 00 00 00 */	cmplwi r0, 0
/* 801F9210 001F6170  40 82 00 08 */	bne lbl_801F9218
/* 801F9214 001F6174  60 E7 04 00 */	ori r7, r7, 0x400
lbl_801F9218:
/* 801F9218 001F6178  90 E6 00 00 */	stw r7, 0(r6)
/* 801F921C 001F617C  54 63 03 D6 */	rlwinm r3, r3, 0, 0xf, 0xb
/* 801F9220 001F6180  48 00 00 F8 */	b lbl_801F9318
.global lbl_801F9224
lbl_801F9224:
/* 801F9224 001F6184  3C A0 CC 00 */	lis r5, 0xCC006800@ha
/* 801F9228 001F6188  38 A5 68 00 */	addi r5, r5, 0xCC006800@l
/* 801F922C 001F618C  38 A5 00 28 */	addi r5, r5, 0x28
/* 801F9230 001F6190  54 80 03 DE */	rlwinm r0, r4, 0, 0xf, 0xf
/* 801F9234 001F6194  80 C5 00 00 */	lwz r6, 0(r5)
/* 801F9238 001F6198  28 00 00 00 */	cmplwi r0, 0
/* 801F923C 001F619C  54 C6 00 36 */	rlwinm r6, r6, 0, 0, 0x1b
/* 801F9240 001F61A0  40 82 00 08 */	bne lbl_801F9248
/* 801F9244 001F61A4  60 C6 00 01 */	ori r6, r6, 1
lbl_801F9248:
/* 801F9248 001F61A8  54 80 04 20 */	rlwinm r0, r4, 0, 0x10, 0x10
/* 801F924C 001F61AC  28 00 00 00 */	cmplwi r0, 0
/* 801F9250 001F61B0  40 82 00 08 */	bne lbl_801F9258
/* 801F9254 001F61B4  60 C6 00 04 */	ori r6, r6, 4
lbl_801F9258:
/* 801F9258 001F61B8  90 C5 00 00 */	stw r6, 0(r5)
/* 801F925C 001F61BC  54 63 04 5C */	rlwinm r3, r3, 0, 0x11, 0xe
/* 801F9260 001F61C0  48 00 00 B8 */	b lbl_801F9318
.global lbl_801F9264
lbl_801F9264:
/* 801F9264 001F61C4  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 801F9268 001F61C8  28 00 00 00 */	cmplwi r0, 0
/* 801F926C 001F61CC  38 A0 00 F0 */	li r5, 0xf0
/* 801F9270 001F61D0  40 82 00 08 */	bne lbl_801F9278
/* 801F9274 001F61D4  60 A5 08 00 */	ori r5, r5, 0x800
lbl_801F9278:
/* 801F9278 001F61D8  54 80 05 28 */	rlwinm r0, r4, 0, 0x14, 0x14
/* 801F927C 001F61DC  28 00 00 00 */	cmplwi r0, 0
/* 801F9280 001F61E0  40 82 00 08 */	bne lbl_801F9288
/* 801F9284 001F61E4  60 A5 00 08 */	ori r5, r5, 8
lbl_801F9288:
/* 801F9288 001F61E8  54 80 05 6A */	rlwinm r0, r4, 0, 0x15, 0x15
/* 801F928C 001F61EC  28 00 00 00 */	cmplwi r0, 0
/* 801F9290 001F61F0  40 82 00 08 */	bne lbl_801F9298
/* 801F9294 001F61F4  60 A5 00 04 */	ori r5, r5, 4
lbl_801F9298:
/* 801F9298 001F61F8  54 80 05 AC */	rlwinm r0, r4, 0, 0x16, 0x16
/* 801F929C 001F61FC  28 00 00 00 */	cmplwi r0, 0
/* 801F92A0 001F6200  40 82 00 08 */	bne lbl_801F92A8
/* 801F92A4 001F6204  60 A5 00 02 */	ori r5, r5, 2
lbl_801F92A8:
/* 801F92A8 001F6208  54 80 05 EE */	rlwinm r0, r4, 0, 0x17, 0x17
/* 801F92AC 001F620C  28 00 00 00 */	cmplwi r0, 0
/* 801F92B0 001F6210  40 82 00 08 */	bne lbl_801F92B8
/* 801F92B4 001F6214  60 A5 00 01 */	ori r5, r5, 1
lbl_801F92B8:
/* 801F92B8 001F6218  54 80 06 30 */	rlwinm r0, r4, 0, 0x18, 0x18
/* 801F92BC 001F621C  28 00 00 00 */	cmplwi r0, 0
/* 801F92C0 001F6220  40 82 00 08 */	bne lbl_801F92C8
/* 801F92C4 001F6224  60 A5 01 00 */	ori r5, r5, 0x100
lbl_801F92C8:
/* 801F92C8 001F6228  54 80 06 72 */	rlwinm r0, r4, 0, 0x19, 0x19
/* 801F92CC 001F622C  28 00 00 00 */	cmplwi r0, 0
/* 801F92D0 001F6230  40 82 00 08 */	bne lbl_801F92D8
/* 801F92D4 001F6234  60 A5 10 00 */	ori r5, r5, 0x1000
lbl_801F92D8:
/* 801F92D8 001F6238  54 80 04 A4 */	rlwinm r0, r4, 0, 0x12, 0x12
/* 801F92DC 001F623C  28 00 00 00 */	cmplwi r0, 0
/* 801F92E0 001F6240  40 82 00 08 */	bne lbl_801F92E8
/* 801F92E4 001F6244  60 A5 02 00 */	ori r5, r5, 0x200
lbl_801F92E8:
/* 801F92E8 001F6248  54 80 04 E6 */	rlwinm r0, r4, 0, 0x13, 0x13
/* 801F92EC 001F624C  28 00 00 00 */	cmplwi r0, 0
/* 801F92F0 001F6250  40 82 00 08 */	bne lbl_801F92F8
/* 801F92F4 001F6254  60 A5 04 00 */	ori r5, r5, 0x400
lbl_801F92F8:
/* 801F92F8 001F6258  54 80 06 B4 */	rlwinm r0, r4, 0, 0x1a, 0x1a
/* 801F92FC 001F625C  28 00 00 00 */	cmplwi r0, 0
/* 801F9300 001F6260  40 82 00 08 */	bne lbl_801F9308
/* 801F9304 001F6264  60 A5 20 00 */	ori r5, r5, 0x2000
lbl_801F9308:
/* 801F9308 001F6268  3C 80 CC 00 */	lis r4, 0xCC003000@ha
/* 801F930C 001F626C  38 84 30 00 */	addi r4, r4, 0xCC003000@l
/* 801F9310 001F6270  90 A4 00 04 */	stw r5, 4(r4)
/* 801F9314 001F6274  54 63 06 E0 */	rlwinm r3, r3, 0, 0x1b, 0x10
.global lbl_801F9318
lbl_801F9318:
/* 801F9318 001F6278  4E 80 00 20 */	blr 

.global __OSMaskInterrupts
__OSMaskInterrupts:
/* 801F931C 001F627C  7C 08 02 A6 */	mflr r0
/* 801F9320 001F6280  90 01 00 04 */	stw r0, 4(r1)
/* 801F9324 001F6284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9328 001F6288  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F932C 001F628C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F9330 001F6290  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F9334 001F6294  7C 7F 1B 78 */	mr r31, r3
/* 801F9338 001F6298  4B FF FC 45 */	bl OSDisableInterrupts
/* 801F933C 001F629C  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 801F9340 001F62A0  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 801F9344 001F62A4  7C 7E 1B 78 */	mr r30, r3
/* 801F9348 001F62A8  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 801F934C 001F62AC  7F A0 2B 78 */	or r0, r29, r5
/* 801F9350 001F62B0  7F E3 00 78 */	andc r3, r31, r0
/* 801F9354 001F62B4  7F FF EB 78 */	or r31, r31, r29
/* 801F9358 001F62B8  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 801F935C 001F62BC  7F FF 2B 78 */	or r31, r31, r5
/* 801F9360 001F62C0  48 00 00 04 */	b lbl_801F9364
lbl_801F9364:
/* 801F9364 001F62C4  48 00 00 04 */	b lbl_801F9368
lbl_801F9368:
/* 801F9368 001F62C8  48 00 00 0C */	b lbl_801F9374
lbl_801F936C:
/* 801F936C 001F62CC  7F E4 FB 78 */	mr r4, r31
/* 801F9370 001F62D0  4B FF FC FD */	bl SetInterruptMask
lbl_801F9374:
/* 801F9374 001F62D4  28 03 00 00 */	cmplwi r3, 0
/* 801F9378 001F62D8  40 82 FF F4 */	bne lbl_801F936C
/* 801F937C 001F62DC  7F C3 F3 78 */	mr r3, r30
/* 801F9380 001F62E0  4B FF FC 25 */	bl OSRestoreInterrupts
/* 801F9384 001F62E4  7F A3 EB 78 */	mr r3, r29
/* 801F9388 001F62E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F938C 001F62EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9390 001F62F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F9394 001F62F4  7C 08 03 A6 */	mtlr r0
/* 801F9398 001F62F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F939C 001F62FC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F93A0 001F6300  4E 80 00 20 */	blr 

.global __OSUnmaskInterrupts
__OSUnmaskInterrupts:
/* 801F93A4 001F6304  7C 08 02 A6 */	mflr r0
/* 801F93A8 001F6308  90 01 00 04 */	stw r0, 4(r1)
/* 801F93AC 001F630C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F93B0 001F6310  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F93B4 001F6314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F93B8 001F6318  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F93BC 001F631C  7C 7F 1B 78 */	mr r31, r3
/* 801F93C0 001F6320  4B FF FB BD */	bl OSDisableInterrupts
/* 801F93C4 001F6324  3C 80 80 00 */	lis r4, 0x800000C4@ha
/* 801F93C8 001F6328  83 A4 00 C4 */	lwz r29, 0x800000C4@l(r4)
/* 801F93CC 001F632C  7C 7E 1B 78 */	mr r30, r3
/* 801F93D0 001F6330  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 801F93D4 001F6334  7F A0 2B 78 */	or r0, r29, r5
/* 801F93D8 001F6338  7F E3 00 38 */	and r3, r31, r0
/* 801F93DC 001F633C  7F BF F8 78 */	andc r31, r29, r31
/* 801F93E0 001F6340  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 801F93E4 001F6344  7F FF 2B 78 */	or r31, r31, r5
/* 801F93E8 001F6348  48 00 00 04 */	b lbl_801F93EC
lbl_801F93EC:
/* 801F93EC 001F634C  48 00 00 04 */	b lbl_801F93F0
lbl_801F93F0:
/* 801F93F0 001F6350  48 00 00 0C */	b lbl_801F93FC
lbl_801F93F4:
/* 801F93F4 001F6354  7F E4 FB 78 */	mr r4, r31
/* 801F93F8 001F6358  4B FF FC 75 */	bl SetInterruptMask
lbl_801F93FC:
/* 801F93FC 001F635C  28 03 00 00 */	cmplwi r3, 0
/* 801F9400 001F6360  40 82 FF F4 */	bne lbl_801F93F4
/* 801F9404 001F6364  7F C3 F3 78 */	mr r3, r30
/* 801F9408 001F6368  4B FF FB 9D */	bl OSRestoreInterrupts
/* 801F940C 001F636C  7F A3 EB 78 */	mr r3, r29
/* 801F9410 001F6370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9414 001F6374  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F9418 001F6378  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F941C 001F637C  7C 08 03 A6 */	mtlr r0
/* 801F9420 001F6380  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F9424 001F6384  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9428 001F6388  4E 80 00 20 */	blr 

.global __OSDispatchInterrupt
__OSDispatchInterrupt:
/* 801F942C 001F638C  7C 08 02 A6 */	mflr r0
/* 801F9430 001F6390  90 01 00 04 */	stw r0, 4(r1)
/* 801F9434 001F6394  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801F9438 001F6398  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801F943C 001F639C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801F9440 001F63A0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 801F9444 001F63A4  7C 9E 23 78 */	mr r30, r4
/* 801F9448 001F63A8  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 801F944C 001F63AC  83 E3 30 00 */	lwz r31, 0xCC003000@l(r3)
/* 801F9450 001F63B0  57 FF 04 1C */	rlwinm r31, r31, 0, 0x10, 0xe
/* 801F9454 001F63B4  28 1F 00 00 */	cmplwi r31, 0
/* 801F9458 001F63B8  41 82 00 18 */	beq lbl_801F9470
/* 801F945C 001F63BC  38 63 30 00 */	addi r3, r3, 0x3000
/* 801F9460 001F63C0  80 03 00 04 */	lwz r0, 4(r3)
/* 801F9464 001F63C4  7F E0 00 38 */	and r0, r31, r0
/* 801F9468 001F63C8  28 00 00 00 */	cmplwi r0, 0
/* 801F946C 001F63CC  40 82 00 0C */	bne lbl_801F9478
lbl_801F9470:
/* 801F9470 001F63D0  7F C3 F3 78 */	mr r3, r30
/* 801F9474 001F63D4  4B FF DE E9 */	bl OSLoadContext
lbl_801F9478:
/* 801F9478 001F63D8  57 E0 06 30 */	rlwinm r0, r31, 0, 0x18, 0x18
/* 801F947C 001F63DC  28 00 00 00 */	cmplwi r0, 0
/* 801F9480 001F63E0  38 00 00 00 */	li r0, 0
/* 801F9484 001F63E4  41 82 00 60 */	beq lbl_801F94E4
/* 801F9488 001F63E8  3C 60 CC 00 */	lis r3, 0xCC004000@ha
/* 801F948C 001F63EC  38 63 40 00 */	addi r3, r3, 0xCC004000@l
/* 801F9490 001F63F0  A0 83 00 1E */	lhz r4, 0x1e(r3)
/* 801F9494 001F63F4  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 801F9498 001F63F8  28 03 00 00 */	cmplwi r3, 0
/* 801F949C 001F63FC  41 82 00 08 */	beq lbl_801F94A4
/* 801F94A0 001F6400  64 00 80 00 */	oris r0, r0, 0x8000
lbl_801F94A4:
/* 801F94A4 001F6404  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 801F94A8 001F6408  28 03 00 00 */	cmplwi r3, 0
/* 801F94AC 001F640C  41 82 00 08 */	beq lbl_801F94B4
/* 801F94B0 001F6410  64 00 40 00 */	oris r0, r0, 0x4000
lbl_801F94B4:
/* 801F94B4 001F6414  54 83 07 7A */	rlwinm r3, r4, 0, 0x1d, 0x1d
/* 801F94B8 001F6418  28 03 00 00 */	cmplwi r3, 0
/* 801F94BC 001F641C  41 82 00 08 */	beq lbl_801F94C4
/* 801F94C0 001F6420  64 00 20 00 */	oris r0, r0, 0x2000
lbl_801F94C4:
/* 801F94C4 001F6424  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 801F94C8 001F6428  28 03 00 00 */	cmplwi r3, 0
/* 801F94CC 001F642C  41 82 00 08 */	beq lbl_801F94D4
/* 801F94D0 001F6430  64 00 10 00 */	oris r0, r0, 0x1000
lbl_801F94D4:
/* 801F94D4 001F6434  54 83 06 F6 */	rlwinm r3, r4, 0, 0x1b, 0x1b
/* 801F94D8 001F6438  28 03 00 00 */	cmplwi r3, 0
/* 801F94DC 001F643C  41 82 00 08 */	beq lbl_801F94E4
/* 801F94E0 001F6440  64 00 08 00 */	oris r0, r0, 0x800
lbl_801F94E4:
/* 801F94E4 001F6444  57 E3 06 72 */	rlwinm r3, r31, 0, 0x19, 0x19
/* 801F94E8 001F6448  28 03 00 00 */	cmplwi r3, 0
/* 801F94EC 001F644C  41 82 00 40 */	beq lbl_801F952C
/* 801F94F0 001F6450  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 801F94F4 001F6454  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 801F94F8 001F6458  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 801F94FC 001F645C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 801F9500 001F6460  28 03 00 00 */	cmplwi r3, 0
/* 801F9504 001F6464  41 82 00 08 */	beq lbl_801F950C
/* 801F9508 001F6468  64 00 04 00 */	oris r0, r0, 0x400
lbl_801F950C:
/* 801F950C 001F646C  54 83 06 B4 */	rlwinm r3, r4, 0, 0x1a, 0x1a
/* 801F9510 001F6470  28 03 00 00 */	cmplwi r3, 0
/* 801F9514 001F6474  41 82 00 08 */	beq lbl_801F951C
/* 801F9518 001F6478  64 00 02 00 */	oris r0, r0, 0x200
lbl_801F951C:
/* 801F951C 001F647C  54 83 06 30 */	rlwinm r3, r4, 0, 0x18, 0x18
/* 801F9520 001F6480  28 03 00 00 */	cmplwi r3, 0
/* 801F9524 001F6484  41 82 00 08 */	beq lbl_801F952C
/* 801F9528 001F6488  64 00 01 00 */	oris r0, r0, 0x100
lbl_801F952C:
/* 801F952C 001F648C  57 E3 06 B4 */	rlwinm r3, r31, 0, 0x1a, 0x1a
/* 801F9530 001F6490  28 03 00 00 */	cmplwi r3, 0
/* 801F9534 001F6494  41 82 00 1C */	beq lbl_801F9550
/* 801F9538 001F6498  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 801F953C 001F649C  80 63 6C 00 */	lwz r3, 0xCC006C00@l(r3)
/* 801F9540 001F64A0  54 63 07 38 */	rlwinm r3, r3, 0, 0x1c, 0x1c
/* 801F9544 001F64A4  28 03 00 00 */	cmplwi r3, 0
/* 801F9548 001F64A8  41 82 00 08 */	beq lbl_801F9550
/* 801F954C 001F64AC  64 00 00 80 */	oris r0, r0, 0x80
lbl_801F9550:
/* 801F9550 001F64B0  57 E3 06 F6 */	rlwinm r3, r31, 0, 0x1b, 0x1b
/* 801F9554 001F64B4  28 03 00 00 */	cmplwi r3, 0
/* 801F9558 001F64B8  41 82 00 A4 */	beq lbl_801F95FC
/* 801F955C 001F64BC  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 801F9560 001F64C0  80 83 68 00 */	lwz r4, 0xCC006800@l(r3)
/* 801F9564 001F64C4  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 801F9568 001F64C8  28 03 00 00 */	cmplwi r3, 0
/* 801F956C 001F64CC  41 82 00 08 */	beq lbl_801F9574
/* 801F9570 001F64D0  64 00 00 40 */	oris r0, r0, 0x40
lbl_801F9574:
/* 801F9574 001F64D4  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 801F9578 001F64D8  28 03 00 00 */	cmplwi r3, 0
/* 801F957C 001F64DC  41 82 00 08 */	beq lbl_801F9584
/* 801F9580 001F64E0  64 00 00 20 */	oris r0, r0, 0x20
lbl_801F9584:
/* 801F9584 001F64E4  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 801F9588 001F64E8  28 03 00 00 */	cmplwi r3, 0
/* 801F958C 001F64EC  41 82 00 08 */	beq lbl_801F9594
/* 801F9590 001F64F0  64 00 00 10 */	oris r0, r0, 0x10
lbl_801F9594:
/* 801F9594 001F64F4  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 801F9598 001F64F8  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 801F959C 001F64FC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801F95A0 001F6500  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 801F95A4 001F6504  28 03 00 00 */	cmplwi r3, 0
/* 801F95A8 001F6508  41 82 00 08 */	beq lbl_801F95B0
/* 801F95AC 001F650C  64 00 00 08 */	oris r0, r0, 8
lbl_801F95B0:
/* 801F95B0 001F6510  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 801F95B4 001F6514  28 03 00 00 */	cmplwi r3, 0
/* 801F95B8 001F6518  41 82 00 08 */	beq lbl_801F95C0
/* 801F95BC 001F651C  64 00 00 04 */	oris r0, r0, 4
lbl_801F95C0:
/* 801F95C0 001F6520  54 83 05 28 */	rlwinm r3, r4, 0, 0x14, 0x14
/* 801F95C4 001F6524  28 03 00 00 */	cmplwi r3, 0
/* 801F95C8 001F6528  41 82 00 08 */	beq lbl_801F95D0
/* 801F95CC 001F652C  64 00 00 02 */	oris r0, r0, 2
lbl_801F95D0:
/* 801F95D0 001F6530  3C 60 CC 00 */	lis r3, 0xCC006800@ha
/* 801F95D4 001F6534  38 63 68 00 */	addi r3, r3, 0xCC006800@l
/* 801F95D8 001F6538  80 83 00 28 */	lwz r4, 0x28(r3)
/* 801F95DC 001F653C  54 83 07 BC */	rlwinm r3, r4, 0, 0x1e, 0x1e
/* 801F95E0 001F6540  28 03 00 00 */	cmplwi r3, 0
/* 801F95E4 001F6544  41 82 00 08 */	beq lbl_801F95EC
/* 801F95E8 001F6548  64 00 00 01 */	oris r0, r0, 1
lbl_801F95EC:
/* 801F95EC 001F654C  54 83 07 38 */	rlwinm r3, r4, 0, 0x1c, 0x1c
/* 801F95F0 001F6550  28 03 00 00 */	cmplwi r3, 0
/* 801F95F4 001F6554  41 82 00 08 */	beq lbl_801F95FC
/* 801F95F8 001F6558  60 00 80 00 */	ori r0, r0, 0x8000
lbl_801F95FC:
/* 801F95FC 001F655C  57 E3 04 A4 */	rlwinm r3, r31, 0, 0x12, 0x12
/* 801F9600 001F6560  28 03 00 00 */	cmplwi r3, 0
/* 801F9604 001F6564  41 82 00 08 */	beq lbl_801F960C
/* 801F9608 001F6568  60 00 00 20 */	ori r0, r0, 0x20
lbl_801F960C:
/* 801F960C 001F656C  57 E3 04 E6 */	rlwinm r3, r31, 0, 0x13, 0x13
/* 801F9610 001F6570  28 03 00 00 */	cmplwi r3, 0
/* 801F9614 001F6574  41 82 00 08 */	beq lbl_801F961C
/* 801F9618 001F6578  60 00 00 40 */	ori r0, r0, 0x40
lbl_801F961C:
/* 801F961C 001F657C  57 E3 05 6A */	rlwinm r3, r31, 0, 0x15, 0x15
/* 801F9620 001F6580  28 03 00 00 */	cmplwi r3, 0
/* 801F9624 001F6584  41 82 00 08 */	beq lbl_801F962C
/* 801F9628 001F6588  60 00 10 00 */	ori r0, r0, 0x1000
lbl_801F962C:
/* 801F962C 001F658C  57 E3 05 AC */	rlwinm r3, r31, 0, 0x16, 0x16
/* 801F9630 001F6590  28 03 00 00 */	cmplwi r3, 0
/* 801F9634 001F6594  41 82 00 08 */	beq lbl_801F963C
/* 801F9638 001F6598  60 00 20 00 */	ori r0, r0, 0x2000
lbl_801F963C:
/* 801F963C 001F659C  57 E3 05 EE */	rlwinm r3, r31, 0, 0x17, 0x17
/* 801F9640 001F65A0  28 03 00 00 */	cmplwi r3, 0
/* 801F9644 001F65A4  41 82 00 08 */	beq lbl_801F964C
/* 801F9648 001F65A8  60 00 00 80 */	ori r0, r0, 0x80
lbl_801F964C:
/* 801F964C 001F65AC  57 E3 07 38 */	rlwinm r3, r31, 0, 0x1c, 0x1c
/* 801F9650 001F65B0  28 03 00 00 */	cmplwi r3, 0
/* 801F9654 001F65B4  41 82 00 08 */	beq lbl_801F965C
/* 801F9658 001F65B8  60 00 08 00 */	ori r0, r0, 0x800
lbl_801F965C:
/* 801F965C 001F65BC  57 E3 07 7A */	rlwinm r3, r31, 0, 0x1d, 0x1d
/* 801F9660 001F65C0  28 03 00 00 */	cmplwi r3, 0
/* 801F9664 001F65C4  41 82 00 08 */	beq lbl_801F966C
/* 801F9668 001F65C8  60 00 04 00 */	ori r0, r0, 0x400
lbl_801F966C:
/* 801F966C 001F65CC  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 801F9670 001F65D0  28 03 00 00 */	cmplwi r3, 0
/* 801F9674 001F65D4  41 82 00 08 */	beq lbl_801F967C
/* 801F9678 001F65D8  60 00 02 00 */	ori r0, r0, 0x200
lbl_801F967C:
/* 801F967C 001F65DC  57 E3 05 28 */	rlwinm r3, r31, 0, 0x14, 0x14
/* 801F9680 001F65E0  28 03 00 00 */	cmplwi r3, 0
/* 801F9684 001F65E4  41 82 00 08 */	beq lbl_801F968C
/* 801F9688 001F65E8  60 00 40 00 */	ori r0, r0, 0x4000
lbl_801F968C:
/* 801F968C 001F65EC  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 801F9690 001F65F0  28 03 00 00 */	cmplwi r3, 0
/* 801F9694 001F65F4  41 82 00 08 */	beq lbl_801F969C
/* 801F9698 001F65F8  60 00 01 00 */	ori r0, r0, 0x100
lbl_801F969C:
/* 801F969C 001F65FC  3C 60 80 00 */	lis r3, 0x800000C4@ha
/* 801F96A0 001F6600  80 83 00 C4 */	lwz r4, 0x800000C4@l(r3)
/* 801F96A4 001F6604  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 801F96A8 001F6608  7C 83 1B 78 */	or r3, r4, r3
/* 801F96AC 001F660C  7C 04 18 78 */	andc r4, r0, r3
/* 801F96B0 001F6610  28 04 00 00 */	cmplwi r4, 0
/* 801F96B4 001F6614  41 82 00 78 */	beq lbl_801F972C
/* 801F96B8 001F6618  3C 60 80 2E */	lis r3, InterruptPrioTable@ha
/* 801F96BC 001F661C  38 03 7B 28 */	addi r0, r3, InterruptPrioTable@l
/* 801F96C0 001F6620  7C 03 03 78 */	mr r3, r0
/* 801F96C4 001F6624  48 00 00 04 */	b lbl_801F96C8
lbl_801F96C8:
/* 801F96C8 001F6628  48 00 00 04 */	b lbl_801F96CC
lbl_801F96CC:
/* 801F96CC 001F662C  80 03 00 00 */	lwz r0, 0(r3)
/* 801F96D0 001F6630  7C 80 00 38 */	and r0, r4, r0
/* 801F96D4 001F6634  28 00 00 00 */	cmplwi r0, 0
/* 801F96D8 001F6638  41 82 00 10 */	beq lbl_801F96E8
/* 801F96DC 001F663C  7C 00 00 34 */	cntlzw r0, r0
/* 801F96E0 001F6640  7C 1D 07 34 */	extsh r29, r0
/* 801F96E4 001F6644  48 00 00 0C */	b lbl_801F96F0
lbl_801F96E8:
/* 801F96E8 001F6648  38 63 00 04 */	addi r3, r3, 4
/* 801F96EC 001F664C  4B FF FF E0 */	b lbl_801F96CC
lbl_801F96F0:
/* 801F96F0 001F6650  80 6D 31 F8 */	lwz r3, InterruptHandlerTable@sda21(r13)
/* 801F96F4 001F6654  57 A0 10 3A */	slwi r0, r29, 2
/* 801F96F8 001F6658  7F E3 00 2E */	lwzx r31, r3, r0
/* 801F96FC 001F665C  28 1F 00 00 */	cmplwi r31, 0
/* 801F9700 001F6660  41 82 00 2C */	beq lbl_801F972C
/* 801F9704 001F6664  48 00 24 21 */	bl OSDisableScheduler
/* 801F9708 001F6668  7F A3 EB 78 */	mr r3, r29
/* 801F970C 001F666C  7F C4 F3 78 */	mr r4, r30
/* 801F9710 001F6670  7F EC FB 78 */	mr r12, r31
/* 801F9714 001F6674  7D 88 03 A6 */	mtlr r12
/* 801F9718 001F6678  4E 80 00 21 */	blrl 
/* 801F971C 001F667C  48 00 24 49 */	bl OSEnableScheduler
/* 801F9720 001F6680  48 00 29 39 */	bl __OSReschedule
/* 801F9724 001F6684  7F C3 F3 78 */	mr r3, r30
/* 801F9728 001F6688  4B FF DC 35 */	bl OSLoadContext
lbl_801F972C:
/* 801F972C 001F668C  7F C3 F3 78 */	mr r3, r30
/* 801F9730 001F6690  4B FF DC 2D */	bl OSLoadContext
/* 801F9734 001F6694  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801F9738 001F6698  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801F973C 001F669C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801F9740 001F66A0  7C 08 03 A6 */	mtlr r0
/* 801F9744 001F66A4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 801F9748 001F66A8  38 21 00 28 */	addi r1, r1, 0x28
/* 801F974C 001F66AC  4E 80 00 20 */	blr 

.global ExternalInterruptHandler
ExternalInterruptHandler:
/* 801F9750 001F66B0  90 04 00 00 */	stw r0, 0(r4)
/* 801F9754 001F66B4  90 24 00 04 */	stw r1, 4(r4)
/* 801F9758 001F66B8  90 44 00 08 */	stw r2, 8(r4)
/* 801F975C 001F66BC  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 801F9760 001F66C0  7C 11 E2 A6 */	mfspr r0, 0x391
/* 801F9764 001F66C4  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 801F9768 001F66C8  7C 12 E2 A6 */	mfspr r0, 0x392
/* 801F976C 001F66CC  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 801F9770 001F66D0  7C 13 E2 A6 */	mfspr r0, 0x393
/* 801F9774 001F66D4  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 801F9778 001F66D8  7C 14 E2 A6 */	mfspr r0, 0x394
/* 801F977C 001F66DC  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 801F9780 001F66E0  7C 15 E2 A6 */	mfspr r0, 0x395
/* 801F9784 001F66E4  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 801F9788 001F66E8  7C 16 E2 A6 */	mfspr r0, 0x396
/* 801F978C 001F66EC  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 801F9790 001F66F0  7C 17 E2 A6 */	mfspr r0, 0x397
/* 801F9794 001F66F4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 801F9798 001F66F8  4B FF FC 94 */	b __OSDispatchInterrupt

.section .data, "wa"  # 0x80222DC0 - 0x802E9640
.balign 0x8
.global InterruptPrioTable
InterruptPrioTable:
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
.global lbl_802E7B54
lbl_802E7B54:
	.4byte lbl_801F9090
	.4byte lbl_801F9090
	.4byte lbl_801F9090
	.4byte lbl_801F9090
	.4byte lbl_801F9318
	.4byte lbl_801F90FC
	.4byte lbl_801F90FC
	.4byte lbl_801F90FC
	.4byte lbl_801F9150
	.4byte lbl_801F9180
	.4byte lbl_801F9180
	.4byte lbl_801F9180
	.4byte lbl_801F91D0
	.4byte lbl_801F91D0
	.4byte lbl_801F91D0
	.4byte lbl_801F9224
	.4byte lbl_801F9224
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264
	.4byte lbl_801F9264

.section .sbss, "wa"
.balign 0x8
.global InterruptHandlerTable
InterruptHandlerTable:
	.skip 0x8