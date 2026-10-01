.include "macros.inc"
.file "auto_03_8030D69C_text"

# 0x8030D69C..0x8030D6A8 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x8030D69C | size: 0xC
.fn fn_8030D69C, global
/* 8030D69C 0030341C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8030D6A0 00303420  38 63 FF FF */	subi r3, r3, 0x1
/* 8030D6A4 00303424  4E 80 00 20 */	blr
.endfn fn_8030D69C
