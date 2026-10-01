.include "macros.inc"
.file "auto_03_802AFB60_text"

# 0x802AFB60..0x802AFB74 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802AFB60 | size: 0x14
.fn fn_802AFB60, global
/* 802AFB60 002A58E0  7C 83 23 78 */	mr r3, r4
/* 802AFB64 002A58E4  7C A4 2B 78 */	mr r4, r5
/* 802AFB68 002A58E8  7C C5 33 78 */	mr r5, r6
/* 802AFB6C 002A58EC  7C E6 3B 78 */	mr r6, r7
/* 802AFB70 002A58F0  4B FF FC 60 */	b fn_802AF7D0
.endfn fn_802AFB60
