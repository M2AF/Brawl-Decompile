.include "macros.inc"
.file "auto_03_802AA80C_text"

# 0x802AA80C..0x802AA81C | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802AA80C | size: 0x10
.fn fn_802AA80C, global
/* 802AA80C 002A058C  7C 80 23 78 */	mr r0, r4
/* 802AA810 002A0590  7C A4 2B 78 */	mr r4, r5
/* 802AA814 002A0594  7C 05 03 78 */	mr r5, r0
/* 802AA818 002A0598  4B FF FB 44 */	b fn_802AA35C
.endfn fn_802AA80C
