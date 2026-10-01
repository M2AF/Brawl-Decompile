.include "macros.inc"
.file "auto_03_802D0818_text"

# 0x802D0818..0x802D0828 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802D0818 | size: 0x10
.fn fn_802D0818, global
/* 802D0818 002C6598  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D081C 002C659C  4D 82 00 20 */	beqlr
/* 802D0820 002C65A0  38 63 00 0C */	addi r3, r3, 0xc
/* 802D0824 002C65A4  4E 80 00 20 */	blr
.endfn fn_802D0818
