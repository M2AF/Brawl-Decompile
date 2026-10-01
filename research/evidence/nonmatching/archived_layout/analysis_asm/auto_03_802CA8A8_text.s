.include "macros.inc"
.file "auto_03_802CA8A8_text"

# 0x802CA8A8..0x802CA8B8 | size: 0x10
.text
.balign 4

# .text:0x0 | 0x802CA8A8 | size: 0x10
.fn fn_802CA8A8, global
/* 802CA8A8 002C0628  7C 80 23 78 */	mr r0, r4
/* 802CA8AC 002C062C  7C A4 2B 78 */	mr r4, r5
/* 802CA8B0 002C0630  7C 05 03 78 */	mr r5, r0
/* 802CA8B4 002C0634  4B FF F9 80 */	b fn_802CA234
.endfn fn_802CA8A8
