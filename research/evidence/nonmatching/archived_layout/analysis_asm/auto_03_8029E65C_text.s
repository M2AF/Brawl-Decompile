.include "macros.inc"
.file "auto_03_8029E65C_text"

# 0x8029E65C..0x8029E710 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x8029E65C | size: 0xC
.fn fn_8029E65C, global
/* 8029E65C 002943DC  54 80 30 32 */	slwi r0, r4, 6
/* 8029E660 002943E0  7C 63 02 14 */	add r3, r3, r0
/* 8029E664 002943E4  4E 80 00 20 */	blr
.endfn fn_8029E65C

# .text:0xC | 0x8029E668 | size: 0x8
.fn fn_8029E668, global
/* 8029E668 002943E8  38 63 00 40 */	addi r3, r3, 0x40
/* 8029E66C 002943EC  4E 80 00 20 */	blr
.endfn fn_8029E668

# .text:0x14 | 0x8029E670 | size: 0x8
.fn fn_8029E670, global
/* 8029E670 002943F0  7C 63 22 14 */	add r3, r3, r4
/* 8029E674 002943F4  4E 80 00 20 */	blr
.endfn fn_8029E670

# .text:0x1C | 0x8029E678 | size: 0x4
.fn fn_8029E678, global
/* 8029E678 002943F8  4E 80 00 20 */	blr
.endfn fn_8029E678

# .text:0x20 | 0x8029E67C | size: 0x2C
.fn fn_8029E67C, global
/* 8029E67C 002943FC  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8029E680 00294400  1C C5 00 30 */	mulli r6, r5, 0x30
/* 8029E684 00294404  38 05 00 01 */	addi r0, r5, 0x1
/* 8029E688 00294408  54 03 10 3A */	slwi r3, r0, 2
/* 8029E68C 0029440C  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8029E690 00294410  7C 04 32 14 */	add r0, r4, r6
/* 8029E694 00294414  7C 05 02 14 */	add r0, r5, r0
/* 8029E698 00294418  7C 63 02 14 */	add r3, r3, r0
/* 8029E69C 0029441C  38 03 00 0F */	addi r0, r3, 0xf
/* 8029E6A0 00294420  54 03 00 36 */	clrrwi r3, r0, 4
/* 8029E6A4 00294424  4E 80 00 20 */	blr
.endfn fn_8029E67C

# .text:0x4C | 0x8029E6A8 | size: 0x2C
.fn fn_8029E6A8, global
/* 8029E6A8 00294428  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8029E6AC 0029442C  54 A3 10 3A */	slwi r3, r5, 2
/* 8029E6B0 00294430  38 05 00 01 */	addi r0, r5, 0x1
/* 8029E6B4 00294434  7C 65 18 50 */	subf r3, r5, r3
/* 8029E6B8 00294438  1C C3 00 30 */	mulli r6, r3, 0x30
/* 8029E6BC 0029443C  54 03 20 36 */	slwi r3, r0, 4
/* 8029E6C0 00294440  1C A5 00 90 */	mulli r5, r5, 0x90
/* 8029E6C4 00294444  7C 04 32 14 */	add r0, r4, r6
/* 8029E6C8 00294448  7C 05 02 14 */	add r0, r5, r0
/* 8029E6CC 0029444C  7C 63 02 14 */	add r3, r3, r0
/* 8029E6D0 00294450  4E 80 00 20 */	blr
.endfn fn_8029E6A8

# .text:0x78 | 0x8029E6D4 | size: 0x3C
.fn fn_8029E6D4, global
/* 8029E6D4 00294454  81 03 00 08 */	lwz r8, 0x8(r3)
/* 8029E6D8 00294458  55 03 10 3A */	slwi r3, r8, 2
/* 8029E6DC 0029445C  38 08 00 01 */	addi r0, r8, 0x1
/* 8029E6E0 00294460  7C C8 18 50 */	subf r6, r8, r3
/* 8029E6E4 00294464  1C E6 00 30 */	mulli r7, r6, 0x30
/* 8029E6E8 00294468  54 05 28 34 */	slwi r5, r0, 5
/* 8029E6EC 0029446C  54 C6 28 34 */	slwi r6, r6, 5
/* 8029E6F0 00294470  55 03 28 34 */	slwi r3, r8, 5
/* 8029E6F4 00294474  7C 04 3A 14 */	add r0, r4, r7
/* 8029E6F8 00294478  1C 88 03 C0 */	mulli r4, r8, 0x3c0
/* 8029E6FC 0029447C  7C 06 02 14 */	add r0, r6, r0
/* 8029E700 00294480  7C 04 02 14 */	add r0, r4, r0
/* 8029E704 00294484  7C 05 02 14 */	add r0, r5, r0
/* 8029E708 00294488  7C 63 02 14 */	add r3, r3, r0
/* 8029E70C 0029448C  4E 80 00 20 */	blr
.endfn fn_8029E6D4
