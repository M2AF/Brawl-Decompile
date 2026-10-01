.include "macros.inc"
.file "auto_dtor_80328DC0_text"

# 0x80008F7C..0x80008F84 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008F7C | size: 0x8
.obj "@etb_80008F7C", local
.hidden "@etb_80008F7C"
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
.endobj "@etb_80008F7C"

# 0x8000BE9C..0x8000BEA8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BE9C | size: 0xC
.obj "@eti_8000BE9C", local
.hidden "@eti_8000BE9C"
	.4byte dtor_80328DC0
	.4byte 0x00000090
	.4byte "@etb_80008F7C"
.endobj "@eti_8000BE9C"

# 0x80328DC0..0x80328E50 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x80328DC0 | size: 0x90
.fn dtor_80328DC0, global
/* 80328DC0 0031EB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80328DC4 0031EB44  7C 08 02 A6 */	mflr r0
/* 80328DC8 0031EB48  2C 03 00 00 */	cmpwi r3, 0x0
/* 80328DCC 0031EB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80328DD0 0031EB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80328DD4 0031EB54  7C 9F 23 78 */	mr r31, r4
/* 80328DD8 0031EB58  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80328DDC 0031EB5C  7C 7E 1B 78 */	mr r30, r3
/* 80328DE0 0031EB60  41 82 00 54 */	beq .L_80328E34
/* 80328DE4 0031EB64  41 82 00 28 */	beq .L_80328E0C
/* 80328DE8 0031EB68  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80328DEC 0031EB6C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 80328DF0 0031EB70  40 82 00 1C */	bne .L_80328E0C
/* 80328DF4 0031EB74  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80328DF8 0031EB78  38 C0 00 15 */	li r6, 0x15
/* 80328DFC 0031EB7C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80328E00 0031EB80  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80328E04 0031EB84  54 05 10 3A */	slwi r5, r0, 2
/* 80328E08 0031EB88  4B F5 5C B5 */	bl fn_8027EABC
.L_80328E0C:
/* 80328E0C 0031EB8C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80328E10 0031EB90  40 81 00 24 */	ble .L_80328E34
/* 80328E14 0031EB94  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 80328E18 0031EB98  7F C4 F3 78 */	mr r4, r30
/* 80328E1C 0031EB9C  38 A0 01 0C */	li r5, 0x10c
/* 80328E20 0031EBA0  38 C0 00 15 */	li r6, 0x15
/* 80328E24 0031EBA4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80328E28 0031EBA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80328E2C 0031EBAC  7D 89 03 A6 */	mtctr r12
/* 80328E30 0031EBB0  4E 80 04 21 */	bctrl
.L_80328E34:
/* 80328E34 0031EBB4  7F C3 F3 78 */	mr r3, r30
/* 80328E38 0031EBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80328E3C 0031EBBC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80328E40 0031EBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80328E44 0031EBC4  7C 08 03 A6 */	mtlr r0
/* 80328E48 0031EBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80328E4C 0031EBCC  4E 80 00 20 */	blr
.endfn dtor_80328DC0
