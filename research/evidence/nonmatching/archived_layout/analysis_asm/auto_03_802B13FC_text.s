.include "macros.inc"
.file "auto_03_802B13FC_text"

# 0x802B13FC..0x802B140C | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802B13FC | size: 0x10
.fn fn_802B13FC, global
/* 802B13FC 002A717C  7C 80 23 78 */	mr r0, r4
/* 802B1400 002A7180  7C A4 2B 78 */	mr r4, r5
/* 802B1404 002A7184  7C 05 03 78 */	mr r5, r0
/* 802B1408 002A7188  48 00 7A 2C */	b fn_802B8E34
.endfn fn_802B13FC
