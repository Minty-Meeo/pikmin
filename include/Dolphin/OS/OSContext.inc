.equ OSContext.gpr0,  0x0000 + 4 * 0
.equ OSContext.gpr1,  0x0000 + 4 * 1
.equ OSContext.gpr2,  0x0000 + 4 * 2
.equ OSContext.gpr3,  0x0000 + 4 * 3
.equ OSContext.gpr4,  0x0000 + 4 * 4
.equ OSContext.gpr5,  0x0000 + 4 * 5
.equ OSContext.gpr6,  0x0000 + 4 * 6
.equ OSContext.gpr7,  0x0000 + 4 * 7
.equ OSContext.gpr8,  0x0000 + 4 * 8
.equ OSContext.gpr9,  0x0000 + 4 * 9
.equ OSContext.gpr10, 0x0000 + 4 * 10
.equ OSContext.gpr11, 0x0000 + 4 * 11
.equ OSContext.gpr12, 0x0000 + 4 * 12
.equ OSContext.gpr13, 0x0000 + 4 * 13
.equ OSContext.gpr14, 0x0000 + 4 * 14
.equ OSContext.gpr15, 0x0000 + 4 * 15
.equ OSContext.gpr16, 0x0000 + 4 * 16
.equ OSContext.gpr17, 0x0000 + 4 * 17
.equ OSContext.gpr18, 0x0000 + 4 * 18
.equ OSContext.gpr19, 0x0000 + 4 * 19
.equ OSContext.gpr20, 0x0000 + 4 * 20
.equ OSContext.gpr21, 0x0000 + 4 * 21
.equ OSContext.gpr22, 0x0000 + 4 * 22
.equ OSContext.gpr23, 0x0000 + 4 * 23
.equ OSContext.gpr24, 0x0000 + 4 * 24
.equ OSContext.gpr25, 0x0000 + 4 * 25
.equ OSContext.gpr26, 0x0000 + 4 * 26
.equ OSContext.gpr27, 0x0000 + 4 * 27
.equ OSContext.gpr28, 0x0000 + 4 * 28
.equ OSContext.gpr29, 0x0000 + 4 * 29
.equ OSContext.gpr30, 0x0000 + 4 * 30
.equ OSContext.gpr31, 0x0000 + 4 * 31

.equ OSContext.cr,    0x0080
.equ OSContext.lr,    0x0084
.equ OSContext.ctr,   0x0088
.equ OSContext.xer,   0x008C

.equ OSContext.fpr0,  0x0090 + 8 * 0
.equ OSContext.fpr1,  0x0090 + 8 * 1
.equ OSContext.fpr2,  0x0090 + 8 * 2
.equ OSContext.fpr3,  0x0090 + 8 * 3
.equ OSContext.fpr4,  0x0090 + 8 * 4
.equ OSContext.fpr5,  0x0090 + 8 * 5
.equ OSContext.fpr6,  0x0090 + 8 * 6
.equ OSContext.fpr7,  0x0090 + 8 * 7
.equ OSContext.fpr8,  0x0090 + 8 * 8
.equ OSContext.fpr9,  0x0090 + 8 * 9
.equ OSContext.fpr10, 0x0090 + 8 * 10
.equ OSContext.fpr11, 0x0090 + 8 * 11
.equ OSContext.fpr12, 0x0090 + 8 * 12
.equ OSContext.fpr13, 0x0090 + 8 * 13
.equ OSContext.fpr14, 0x0090 + 8 * 14
.equ OSContext.fpr15, 0x0090 + 8 * 15
.equ OSContext.fpr16, 0x0090 + 8 * 16
.equ OSContext.fpr17, 0x0090 + 8 * 17
.equ OSContext.fpr18, 0x0090 + 8 * 18
.equ OSContext.fpr19, 0x0090 + 8 * 19
.equ OSContext.fpr20, 0x0090 + 8 * 20
.equ OSContext.fpr21, 0x0090 + 8 * 21
.equ OSContext.fpr22, 0x0090 + 8 * 22
.equ OSContext.fpr23, 0x0090 + 8 * 23
.equ OSContext.fpr24, 0x0090 + 8 * 24
.equ OSContext.fpr25, 0x0090 + 8 * 25
.equ OSContext.fpr26, 0x0090 + 8 * 26
.equ OSContext.fpr27, 0x0090 + 8 * 27
.equ OSContext.fpr28, 0x0090 + 8 * 28
.equ OSContext.fpr29, 0x0090 + 8 * 29
.equ OSContext.fpr30, 0x0090 + 8 * 30
.equ OSContext.fpr31, 0x0090 + 8 * 31

.equ OSContext.fpscr, 0x0190
.equ OSContext.srr0,  0x0198
.equ OSContext.srr1,  0x019C
.equ OSContext.move,  0x01A0
.equ OSContext.state, 0x01A2

.equ OSContext.gqr0,  0x01A4 + 4 * 0
.equ OSContext.gqr1,  0x01A4 + 4 * 1
.equ OSContext.gqr2,  0x01A4 + 4 * 2
.equ OSContext.gqr3,  0x01A4 + 4 * 3
.equ OSContext.gqr4,  0x01A4 + 4 * 4
.equ OSContext.gqr5,  0x01A4 + 4 * 5
.equ OSContext.gqr6,  0x01A4 + 4 * 6
.equ OSContext.gqr7,  0x01A4 + 4 * 7

.equ OSContext.psf0,  0x01C8 + 8 * 0
.equ OSContext.psf1,  0x01C8 + 8 * 1
.equ OSContext.psf2,  0x01C8 + 8 * 2
.equ OSContext.psf3,  0x01C8 + 8 * 3
.equ OSContext.psf4,  0x01C8 + 8 * 4
.equ OSContext.psf5,  0x01C8 + 8 * 5
.equ OSContext.psf6,  0x01C8 + 8 * 6
.equ OSContext.psf7,  0x01C8 + 8 * 7
.equ OSContext.psf8,  0x01C8 + 8 * 8
.equ OSContext.psf9,  0x01C8 + 8 * 9
.equ OSContext.psf10, 0x01C8 + 8 * 10
.equ OSContext.psf11, 0x01C8 + 8 * 11
.equ OSContext.psf12, 0x01C8 + 8 * 12
.equ OSContext.psf13, 0x01C8 + 8 * 13
.equ OSContext.psf14, 0x01C8 + 8 * 14
.equ OSContext.psf15, 0x01C8 + 8 * 15
.equ OSContext.psf16, 0x01C8 + 8 * 16
.equ OSContext.psf17, 0x01C8 + 8 * 17
.equ OSContext.psf18, 0x01C8 + 8 * 18
.equ OSContext.psf19, 0x01C8 + 8 * 19
.equ OSContext.psf20, 0x01C8 + 8 * 20
.equ OSContext.psf21, 0x01C8 + 8 * 21
.equ OSContext.psf22, 0x01C8 + 8 * 22
.equ OSContext.psf23, 0x01C8 + 8 * 23
.equ OSContext.psf24, 0x01C8 + 8 * 24
.equ OSContext.psf25, 0x01C8 + 8 * 25
.equ OSContext.psf26, 0x01C8 + 8 * 26
.equ OSContext.psf27, 0x01C8 + 8 * 27
.equ OSContext.psf28, 0x01C8 + 8 * 28
.equ OSContext.psf29, 0x01C8 + 8 * 29
.equ OSContext.psf30, 0x01C8 + 8 * 30
.equ OSContext.psf31, 0x01C8 + 8 * 31
