.include "macros.inc"
.file "auto_03_802AFD30_text"

# 0x802AFD30..0x802AFD44 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x802AFD30 | size: 0x14
.fn fn_802AFD30, global
/* 802AFD30 002A5AB0  7C 83 23 78 */	mr r3, r4
/* 802AFD34 002A5AB4  7C A4 2B 78 */	mr r4, r5
/* 802AFD38 002A5AB8  7C C5 33 78 */	mr r5, r6
/* 802AFD3C 002A5ABC  7C E6 3B 78 */	mr r6, r7
/* 802AFD40 002A5AC0  4B FF FE 34 */	b fn_802AFB74
.endfn fn_802AFD30
