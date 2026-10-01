.include "macros.inc"
.file "auto_fn_802D0F6C_text"

# 0x80008418..0x80008420 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008418 | size: 0x8
.obj "@etb_80008418", local
.hidden "@etb_80008418"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008418"

# 0x8000B194..0x8000B1A0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B194 | size: 0xC
.obj "@eti_8000B194", local
.hidden "@eti_8000B194"
	.4byte fn_802D0F6C
	.4byte 0x00000110
	.4byte "@etb_80008418"
.endobj "@eti_8000B194"

# 0x802D0F6C..0x802D107C | size: 0x110
.text
.balign 4

# .text:0x0 | 0x802D0F6C | size: 0x110
.fn fn_802D0F6C, global
/* 802D0F6C 002C6CEC  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D0F70 002C6CF0  7C 2C 0B 78 */	mr r12, r1
/* 802D0F74 002C6CF4  21 6B FF B0 */	subfic r11, r11, -0x50
/* 802D0F78 002C6CF8  7C 21 59 6E */	stwux r1, r1, r11
/* 802D0F7C 002C6CFC  7C 08 02 A6 */	mflr r0
/* 802D0F80 002C6D00  C1 04 00 00 */	lfs f8, 0x0(r4)
/* 802D0F84 002C6D04  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D0F88 002C6D08  38 00 00 00 */	li r0, 0x0
/* 802D0F8C 002C6D0C  C0 E4 00 04 */	lfs f7, 0x4(r4)
/* 802D0F90 002C6D10  C0 C4 00 08 */	lfs f6, 0x8(r4)
/* 802D0F94 002C6D14  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 802D0F98 002C6D18  C0 84 00 10 */	lfs f4, 0x10(r4)
/* 802D0F9C 002C6D1C  C0 64 00 14 */	lfs f3, 0x14(r4)
/* 802D0FA0 002C6D20  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 802D0FA4 002C6D24  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 802D0FA8 002C6D28  81 24 00 20 */	lwz r9, 0x20(r4)
/* 802D0FAC 002C6D2C  81 04 00 24 */	lwz r8, 0x24(r4)
/* 802D0FB0 002C6D30  38 81 00 20 */	addi r4, r1, 0x20
/* 802D0FB4 002C6D34  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 802D0FB8 002C6D38  80 E5 00 08 */	lwz r7, 0x8(r5)
/* 802D0FBC 002C6D3C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 802D0FC0 002C6D40  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 802D0FC4 002C6D44  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 802D0FC8 002C6D48  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 802D0FCC 002C6D4C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 802D0FD0 002C6D50  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 802D0FD4 002C6D54  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 802D0FD8 002C6D58  91 21 00 40 */	stw r9, 0x40(r1)
/* 802D0FDC 002C6D5C  91 01 00 44 */	stw r8, 0x44(r1)
/* 802D0FE0 002C6D60  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802D0FE4 002C6D64  EC 08 00 28 */	fsubs f0, f8, f0
/* 802D0FE8 002C6D68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802D0FEC 002C6D6C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802D0FF0 002C6D70  EC 07 00 28 */	fsubs f0, f7, f0
/* 802D0FF4 002C6D74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802D0FF8 002C6D78  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802D0FFC 002C6D7C  EC 06 00 28 */	fsubs f0, f6, f0
/* 802D1000 002C6D80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802D1004 002C6D84  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802D1008 002C6D88  EC 05 00 28 */	fsubs f0, f5, f0
/* 802D100C 002C6D8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802D1010 002C6D90  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802D1014 002C6D94  EC 04 00 28 */	fsubs f0, f4, f0
/* 802D1018 002C6D98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802D101C 002C6D9C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802D1020 002C6DA0  EC 03 00 28 */	fsubs f0, f3, f0
/* 802D1024 002C6DA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802D1028 002C6DA8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802D102C 002C6DAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 802D1030 002C6DB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802D1034 002C6DB4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802D1038 002C6DB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802D103C 002C6DBC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 802D1040 002C6DC0  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D1044 002C6DC4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802D1048 002C6DC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802D104C 002C6DCC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D1050 002C6DD0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802D1054 002C6DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1058 002C6DD8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D105C 002C6DDC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D1060 002C6DE0  7D 89 03 A6 */	mtctr r12
/* 802D1064 002C6DE4  4E 80 04 21 */	bctrl
/* 802D1068 002C6DE8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D106C 002C6DEC  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D1070 002C6DF0  7C 08 03 A6 */	mtlr r0
/* 802D1074 002C6DF4  7D 41 53 78 */	mr r1, r10
/* 802D1078 002C6DF8  4E 80 00 20 */	blr
.endfn fn_802D0F6C
