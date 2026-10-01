.include "macros.inc"
.file "auto_03_803F8C3C_text"

# 0x803F8C3C..0x803F8C64 | size: 0x28
.text
.balign 4

# .text:0x0 | 0x803F8C3C | size: 0x20
.fn fn_803F8C3C, global
/* 803F8C3C 003EE9BC  3C 60 41 C6 */	lis r3, 0x41c6
/* 803F8C40 003EE9C0  80 8D BB 38 */	lwz r4, lbl_8059FF58@sda21(r0)
/* 803F8C44 003EE9C4  38 03 4E 6D */	addi r0, r3, 0x4e6d
/* 803F8C48 003EE9C8  7C 64 01 D6 */	mullw r3, r4, r0
/* 803F8C4C 003EE9CC  38 03 30 39 */	addi r0, r3, 0x3039
/* 803F8C50 003EE9D0  90 0D BB 38 */	stw r0, lbl_8059FF58@sda21(r0)
/* 803F8C54 003EE9D4  54 03 84 7E */	extrwi r3, r0, 15, 1
/* 803F8C58 003EE9D8  4E 80 00 20 */	blr
.endfn fn_803F8C3C

# .text:0x20 | 0x803F8C5C | size: 0x8
.fn fn_803F8C5C, global
/* 803F8C5C 003EE9DC  90 6D BB 38 */	stw r3, lbl_8059FF58@sda21(r0)
/* 803F8C60 003EE9E0  4E 80 00 20 */	blr
.endfn fn_803F8C5C
