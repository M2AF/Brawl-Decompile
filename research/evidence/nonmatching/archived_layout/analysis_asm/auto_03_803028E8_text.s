.include "macros.inc"
.file "auto_03_803028E8_text"

# 0x803028E8..0x80302904 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x803028E8 | size: 0x4
.fn fn_803028E8, global
/* 803028E8 002F8668  4E 80 00 20 */	blr
.endfn fn_803028E8

# .text:0x4 | 0x803028EC | size: 0x10
.fn fn_803028EC, global
/* 803028EC 002F866C  54 80 20 36 */	slwi r0, r4, 4
/* 803028F0 002F8670  7C 63 02 14 */	add r3, r3, r0
/* 803028F4 002F8674  38 63 00 20 */	addi r3, r3, 0x20
/* 803028F8 002F8678  4E 80 00 20 */	blr
.endfn fn_803028EC

# .text:0x14 | 0x803028FC | size: 0x8
.fn fn_803028FC, global
/* 803028FC 002F867C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 80302900 002F8680  4E 80 00 20 */	blr
.endfn fn_803028FC
