.include "macros.inc"
.file "auto_03_8030A478_text"

# 0x8030A478..0x8030A490 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x8030A478 | size: 0x18
.fn fn_8030A478, global
/* 8030A478 003001F8  38 80 00 00 */	li r4, 0x0
/* 8030A47C 003001FC  3C 00 80 00 */	lis r0, 0x8000
/* 8030A480 00300200  90 83 00 00 */	stw r4, 0x0(r3)
/* 8030A484 00300204  90 83 00 04 */	stw r4, 0x4(r3)
/* 8030A488 00300208  90 03 00 08 */	stw r0, 0x8(r3)
/* 8030A48C 0030020C  4E 80 00 20 */	blr
.endfn fn_8030A478
