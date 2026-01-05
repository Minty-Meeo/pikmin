SECTIONS
{
    . = 0x80003100;

    .init      : ALIGN(32)  { *(.init) }
    .fini      : ALIGN(32)  { *(.fini) }
    extab      : ALIGN(32)  { *(extab) }
    extabindex : ALIGN(32)  { *(extabindex) }
    .text      : ALIGN(32)  { *(.text) *(.text.*) }
    .ctors     : ALIGN(32)  { *(.ctors) }
    .dtors     : ALIGN(32)  { *(.dtors) }
    .runtime   : ALIGN(32)  { *(.gcc_except_table.*) *(.got2) *(.fixup) *(.eh_frame) }  /* Junk from newlib I can't get to go away */
    .rodata    : ALIGN(32)  { *(.rodata) *(.rodata.*) }
    .data      : ALIGN(32)  { *(.data) *(.data.*) }
    .bss       : ALIGN(32)  { *(.bss) *(.bss.*) }
    .sdata     : ALIGN(32)  { *(.sdata) *(.sdata.*) }
    .sbss      : ALIGN(32)  { *(.sbss) *(.sbss.*) }
    .sdata2    : ALIGN(32)  { *(.sdata2) *(.sdata2.*) }
    .sbss2     : ALIGN(32)  { *(.sbss2) *(.sbss2.*) }

    _stack_end     = .;
    _stack_addr    = (_stack_end + 0x10000 + 0x7) & ~0x7;
    _db_stack_end  = (_stack_addr);
    _db_stack_addr = (_db_stack_end + 0x2000);
    __ArenaLo      = (_db_stack_addr + 0x1f) & ~0x1f;
    __ArenaHi      = 0x81700000;
}
