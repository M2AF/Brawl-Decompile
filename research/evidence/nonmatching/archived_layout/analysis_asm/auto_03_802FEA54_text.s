.include "macros.inc"
.file "auto_03_802FEA54_text"

# 0x802FEA54..0x802FEA60 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x802FEA54 | size: 0xC
.fn fn_802FEA54, global
/* 802FEA54 002F47D4  3C A0 80 30 */	lis r5, fn_802FE97C@ha
/* 802FEA58 002F47D8  38 A5 E9 7C */	addi r5, r5, fn_802FE97C@l
/* 802FEA5C 002F47DC  4B FF FB 64 */	b fn_802FE5C0
.endfn fn_802FEA54
