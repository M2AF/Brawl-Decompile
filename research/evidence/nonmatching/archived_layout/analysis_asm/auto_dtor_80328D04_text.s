.include "macros.inc"
.file "auto_dtor_80328D04_text"

# 0x80008F74..0x80008F7C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008F74 | size: 0x8
.obj "@etb_80008F74", local
.hidden "@etb_80008F74"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80008F74"

# 0x8000BE90..0x8000BE9C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BE90 | size: 0xC
.obj "@eti_8000BE90", local
.hidden "@eti_8000BE90"
	.4byte dtor_80328D04
	.4byte 0x000000BC
	.4byte "@etb_80008F74"
.endobj "@eti_8000BE90"

# 0x80328D04..0x80328DC0 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x80328D04 | size: 0xBC
.fn dtor_80328D04, global
/* 80328D04 0031EA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80328D08 0031EA88  7C 08 02 A6 */	mflr r0
/* 80328D0C 0031EA8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80328D10 0031EA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80328D14 0031EA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80328D18 0031EA98  7C 9F 23 78 */	mr r31, r4
/* 80328D1C 0031EA9C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80328D20 0031EAA0  7C 7E 1B 78 */	mr r30, r3
/* 80328D24 0031EAA4  41 82 00 80 */	beq .L_80328DA4
/* 80328D28 0031EAA8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80328D2C 0031EAAC  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80328D30 0031EAB0  90 83 00 10 */	stw r4, 0x10(r3)
/* 80328D34 0031EAB4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80328D38 0031EAB8  7C 04 00 40 */	cmplw r4, r0
/* 80328D3C 0031EABC  40 82 00 14 */	bne .L_80328D50
/* 80328D40 0031EAC0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80328D44 0031EAC4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80328D48 0031EAC8  7D 89 03 A6 */	mtctr r12
/* 80328D4C 0031EACC  4E 80 04 21 */	bctrl
.L_80328D50:
/* 80328D50 0031EAD0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80328D54 0031EAD4  41 82 00 28 */	beq .L_80328D7C
/* 80328D58 0031EAD8  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80328D5C 0031EADC  54 00 00 01 */	clrrwi. r0, r0, 31
/* 80328D60 0031EAE0  40 82 00 1C */	bne .L_80328D7C
/* 80328D64 0031EAE4  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80328D68 0031EAE8  38 C0 00 15 */	li r6, 0x15
/* 80328D6C 0031EAEC  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80328D70 0031EAF0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80328D74 0031EAF4  54 05 00 BE */	clrlwi r5, r0, 2
/* 80328D78 0031EAF8  4B F5 5D 45 */	bl fn_8027EABC
.L_80328D7C:
/* 80328D7C 0031EAFC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80328D80 0031EB00  40 81 00 24 */	ble .L_80328DA4
/* 80328D84 0031EB04  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80328D88 0031EB08  7F C4 F3 78 */	mr r4, r30
/* 80328D8C 0031EB0C  38 A0 00 10 */	li r5, 0x10
/* 80328D90 0031EB10  38 C0 00 15 */	li r6, 0x15
/* 80328D94 0031EB14  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80328D98 0031EB18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80328D9C 0031EB1C  7D 89 03 A6 */	mtctr r12
/* 80328DA0 0031EB20  4E 80 04 21 */	bctrl
.L_80328DA4:
/* 80328DA4 0031EB24  7F C3 F3 78 */	mr r3, r30
/* 80328DA8 0031EB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80328DAC 0031EB2C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80328DB0 0031EB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80328DB4 0031EB34  7C 08 03 A6 */	mtlr r0
/* 80328DB8 0031EB38  38 21 00 10 */	addi r1, r1, 0x10
/* 80328DBC 0031EB3C  4E 80 00 20 */	blr
.endfn dtor_80328D04
