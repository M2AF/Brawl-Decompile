.include "macros.inc"
.file "auto_03_80299C04_text"

# 0x80299C04..0x80299C10 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x80299C04 | size: 0xC
.fn fn_80299C04, global
/* 80299C04 0028F984  1C 04 00 30 */	mulli r0, r4, 0x30
/* 80299C08 0028F988  7C 63 02 14 */	add r3, r3, r0
/* 80299C0C 0028F98C  4E 80 00 20 */	blr
.endfn fn_80299C04
