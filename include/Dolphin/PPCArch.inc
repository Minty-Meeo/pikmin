# Encodings for the user- and supervisor-level SPRs

.equ SPR_XER,    1
.equ SPR_LR,     8
.equ SPR_CTR,    9
.equ SPR_DSISR,  18
.equ SPR_DAR,    19
.equ SPR_DEC,    22
.equ SPR_SDR1,   25
.equ SPR_SRR0,   26
.equ SPR_SRR1,   27
.equ SPR_UTBL,   268
.equ SPR_UTBU,   269
.equ SPR_SPRG0,  272
.equ SPR_SPRG1,  273
.equ SPR_SPRG2,  274
.equ SPR_SPRG3,  275
.equ SPR_EAR,    282
.equ SPR_TBL,    284
.equ SPR_TBU,    285
.equ SPR_PVR,    287
.equ SPR_IBAT0U, 528
.equ SPR_IBAT0L, 529
.equ SPR_IBAT1U, 530
.equ SPR_IBAT1L, 531
.equ SPR_IBAT2U, 532
.equ SPR_IBAT2L, 533
.equ SPR_IBAT3U, 534
.equ SPR_IBAT3L, 535
.equ SPR_IBAT4U, 560
.equ SPR_IBAT4L, 561
.equ SPR_IBAT5U, 562
.equ SPR_IBAT5L, 563
.equ SPR_IBAT6U, 564
.equ SPR_IBAT6L, 565
.equ SPR_IBAT7U, 566
.equ SPR_IBAT7L, 567
.equ SPR_DBAT0U, 536
.equ SPR_DBAT0L, 537
.equ SPR_DBAT1U, 538
.equ SPR_DBAT1L, 539
.equ SPR_DBAT2U, 540
.equ SPR_DBAT2L, 541
.equ SPR_DBAT3U, 542
.equ SPR_DBAT3L, 543
.equ SPR_DBAT4U, 568
.equ SPR_DBAT4L, 569
.equ SPR_DBAT5U, 570
.equ SPR_DBAT5L, 571
.equ SPR_DBAT6U, 572
.equ SPR_DBAT6L, 573
.equ SPR_DBAT7U, 574
.equ SPR_DBAT7L, 575

# Encodings for the Gekko-specific SPRs

.equ SPR_GQR0,   912
.equ SPR_GQR1,   913
.equ SPR_GQR2,   914
.equ SPR_GQR3,   915
.equ SPR_GQR4,   916
.equ SPR_GQR5,   917
.equ SPR_GQR6,   918
.equ SPR_GQR7,   919
.equ SPR_HID2,   920
.equ SPR_WPAR,   921
.equ SPR_DMA_U,  922
.equ SPR_DMA_L,  923
.equ SPR_UMMCR2, 928 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_UBAMR,  935 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_UMMCR0, 936
.equ SPR_UPMC1,  937
.equ SPR_UPMC2,  938
.equ SPR_USIA,   939
.equ SPR_UMMCR1, 940
.equ SPR_UPMC3,  941
.equ SPR_UPMC4,  942
.equ SPR_USDA,   943
.equ SPR_MMCR2,  944 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_BAMR,   951 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_MMCR0,  952
.equ SPR_PMC1,   953
.equ SPR_PMC2,   954
.equ SPR_SIA,    955
.equ SPR_MMCR1,  956
.equ SPR_PMC3,   957
.equ SPR_PMC4,   958
.equ SPR_SDA,    959
.equ SPR_DMISS,  976 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_DCMP,   977 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_HASH1,  978 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_HASH2,  979 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_IMISS,  980 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_ICMP,   981 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_RPA,    982 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_HID0,   1008
.equ SPR_HID1,   1009
.equ SPR_IABR,   1010
.equ SPR_HID4,   1011
.equ SPR_DABR,   1013
.equ SPR_MSSCR0, 1014 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_MSSCR1, 1015 # Used in MetroTRK "mpc_7xx_603e.c"
.equ SPR_L2CR,   1017
.equ SPR_ICTC,   1019
.equ SPR_THRM1,  1020
.equ SPR_THRM2,  1021
.equ SPR_THRM3,  1022
.equ SPR_PIR,    1023 # Used in MetroTRK "mpc_7xx_603e.c"
