.include "macros.inc"
.file "auto_03_802B528C_text"

# 0x802B528C..0x802B52A0 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802B528C | size: 0x14
.fn fn_802B528C, global
/* 802B528C 002AB00C  7C 83 23 78 */	mr r3, r4
/* 802B5290 002AB010  7C A4 2B 78 */	mr r4, r5
/* 802B5294 002AB014  7C C5 33 78 */	mr r5, r6
/* 802B5298 002AB018  7C E6 3B 78 */	mr r6, r7
/* 802B529C 002AB01C  48 00 00 04 */	b fn_802B52A0
.endfn fn_802B528C
