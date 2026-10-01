.include "macros.inc"
.file "auto_03_80291270_text"

# 0x80291270..0x80291284 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x80291270 | size: 0x14
.fn fn_80291270, global
/* 80291270 00286FF0  54 A0 20 36 */	slwi r0, r5, 4
/* 80291274 00286FF4  54 84 10 3A */	slwi r4, r4, 2
/* 80291278 00286FF8  7C 03 02 14 */	add r0, r3, r0
/* 8029127C 00286FFC  7C 64 02 14 */	add r3, r4, r0
/* 80291280 00287000  4E 80 00 20 */	blr
.endfn fn_80291270
