SECTIONS
{
    .init      : ALIGN(32)  { *(.init) }
    extab      : ALIGN(32)  { *(extab) }
    extabindex : ALIGN(32)  { *(extabindex) }
    .text      : ALIGN(32)  { *(.text) }
    .ctors     : ALIGN(32)  { *(.ctors) }
    .dtors     : ALIGN(32)  { *(.dtors) }
    .rodata    : ALIGN(32)  { *(.rodata) }
    .data      : ALIGN(32)  { *(.data) }
    .bss       : ALIGN(32)  { *(.bss) }
    .sdata     : ALIGN(32)  { *(.sdata) }
    .sbss      : ALIGN(32)  { *(.sbss) }
    .sdata2    : ALIGN(32)  { *(.sdata2) }
    .sbss2     : ALIGN(32)  { *(.sbss2) }
    .stack     : ALIGN(256) { *(.stack) }

    _stack_end     = 0; /* _f_sdata2 + SIZEOF(.sdata2) */
    _stack_addr    = 0; /* (_stack_end + 0x10000 + 0x7) & ~0x7 */
    _db_stack_addr = 0; /* (_stack_addr + 0x2000) */
    _db_stack_end  = 0; /* _stack_addr */
    __ArenaLo      = 0; /* (_db_stack_addr + 0x1f) & ~0x1f */
    __ArenaHi      = 0; /* 0x81700000 */

    __OSEVStart               = 0;
    __DBVECTOR                = 0;
    __OSEVSetNumber           = 0;
    __OSEVEnd                 = 0;
    __OSDBINTSTART            = 0;
    __OSDBINTEND              = 0;
    __OSDBJUMPSTART           = 0;
    __OSDBJUMPEND             = 0;
    __OSSystemCallVectorStart = 0;
    __OSSystemCallVectorEnd   = 0;

    PROVIDE("__DSPRegs"                = 0xCC005000);
    PROVIDE("__DIRegs"                 = 0xCC006000);
    PROVIDE("__PIRegs"                 = 0xCC003000);
    PROVIDE("__AIRegs"                 = 0xCC006C00);
    PROVIDE("__EXIRegs"                = 0xCC006800);
    PROVIDE("__VIRegs"                 = 0xCC002000);
    PROVIDE("__MEMRegs"                = 0xCC004000);
    PROVIDE("__SIRegs"                 = 0xCC006400);
    PROVIDE("__OSBusClock"             = 0x800000F8);
    PROVIDE("__OSCoreClock"            = 0x800000FC);
    PROVIDE("__OSCurrentContext"       = 0x800000D4);
    PROVIDE("__OSFPUContext"           = 0x800000D8);
    PROVIDE("__OSActiveThreadQueue"    = 0x800000DC);
    PROVIDE("__OSCurrentThread"        = 0x800000E4);
    PROVIDE("__EXIProbeStartTime"      = 0x800030C0);
    PROVIDE("__OSTVMode"               = 0x800000CC);
    PROVIDE("__OSPriorInterruptMask"   = 0x800000C4);
    PROVIDE("__OSCurrentInterruptMask" = 0x800000C8);
    PROVIDE("__OSModuleInfoList"       = 0x800030C8);
    PROVIDE("__OSStringTable"          = 0x800030D0);
    PROVIDE("GameChoice"               = 0x800030E3);
    PROVIDE("__OSWirelessPadFixMode"   = 0x800030E0);

    PROVIDE("BOOT_REGION_START"        = 0x812FDFF0);
    PROVIDE("BOOT_REGION_END"          = 0x812FDFEC);
    PROVIDE("OS_RESET_CODE"            = 0x800030F0);
    PROVIDE("OS_REBOOT_BOOL"           = 0x800030E2);
    PROVIDE("OS_UNK_CODE"              = 0x817FFFF8);
    PROVIDE("OS_HOT_RESET_CODE"        = 0x817FFFFC);
    
}
