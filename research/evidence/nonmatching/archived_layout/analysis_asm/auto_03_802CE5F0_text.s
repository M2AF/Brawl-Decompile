.include "macros.inc"
.file "auto_03_802CE5F0_text"

# 0x802CE5F0..0x802CE61C | size: 0x2C
.text
.balign 4

# .text:0x0 | 0x802CE5F0 | size: 0x2C
.fn fn_802CE5F0, global
/* 802CE5F0 002C4370  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CE5F4 002C4374  4D 82 00 20 */	beqlr
/* 802CE5F8 002C4378  3C A0 80 48 */	lis r5, lbl_804873C0@ha
/* 802CE5FC 002C437C  3C 80 80 48 */	lis r4, lbl_804873E8@ha
/* 802CE600 002C4380  38 A5 73 C0 */	addi r5, r5, lbl_804873C0@l
/* 802CE604 002C4384  38 00 00 01 */	li r0, 0x1
/* 802CE608 002C4388  38 84 73 E8 */	addi r4, r4, lbl_804873E8@l
/* 802CE60C 002C438C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802CE610 002C4390  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802CE614 002C4394  90 83 00 10 */	stw r4, 0x10(r3)
/* 802CE618 002C4398  4E 80 00 20 */	blr
.endfn fn_802CE5F0
