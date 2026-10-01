.include "macros.inc"
.file "auto_03_803010E4_text"

# 0x803010E4..0x80301100 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x803010E4 | size: 0x18
.fn fn_803010E4, global
/* 803010E4 002F6E64  48 00 00 08 */	b .L_803010EC
.L_803010E8:
/* 803010E8 002F6E68  7C 03 03 78 */	mr r3, r0
.L_803010EC:
/* 803010EC 002F6E6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803010F0 002F6E70  2C 00 00 00 */	cmpwi r0, 0x0
/* 803010F4 002F6E74  40 82 FF F4 */	bne .L_803010E8
/* 803010F8 002F6E78  4E 80 00 20 */	blr
.endfn fn_803010E4

# .text:0x18 | 0x803010FC | size: 0x4
.fn fn_803010FC, global
/* 803010FC 002F6E7C  4E 80 00 20 */	blr
.endfn fn_803010FC
