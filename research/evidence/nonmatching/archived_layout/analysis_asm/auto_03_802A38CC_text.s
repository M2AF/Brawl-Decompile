.include "macros.inc"
.file "auto_03_802A38CC_text"

# 0x802A38CC..0x802A38DC | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802A38CC | size: 0x10
.fn fn_802A38CC, global
/* 802A38CC 0029964C  7C 80 23 78 */	mr r0, r4
/* 802A38D0 00299650  7C A4 2B 78 */	mr r4, r5
/* 802A38D4 00299654  7C 05 03 78 */	mr r5, r0
/* 802A38D8 00299658  4B FF F9 B8 */	b fn_802A3290
.endfn fn_802A38CC
