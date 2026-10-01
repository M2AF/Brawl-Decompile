.include "macros.inc"
.file "auto_03_802B8D70_text"

# 0x802B8D70..0x802B8D84 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802B8D70 | size: 0x14
.fn fn_802B8D70, global
/* 802B8D70 002AEAF0  7C 83 23 78 */	mr r3, r4
/* 802B8D74 002AEAF4  7C A4 2B 78 */	mr r4, r5
/* 802B8D78 002AEAF8  7C C5 33 78 */	mr r5, r6
/* 802B8D7C 002AEAFC  7C E6 3B 78 */	mr r6, r7
/* 802B8D80 002AEB00  48 00 00 04 */	b fn_802B8D84
.endfn fn_802B8D70
