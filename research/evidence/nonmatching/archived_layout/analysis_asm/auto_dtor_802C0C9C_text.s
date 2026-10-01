.include "macros.inc"
.file "auto_dtor_802C0C9C_text"

# 0x80007C10..0x80007C18 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007C10 | size: 0x8
.obj "@etb_80007C10", local
.hidden "@etb_80007C10"
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
.endobj "@etb_80007C10"

# 0x8000A990..0x8000A99C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A990 | size: 0xC
.obj "@eti_8000A990", local
.hidden "@eti_8000A990"
	.4byte dtor_802C0C9C
	.4byte 0x00000090
	.4byte "@etb_80007C10"
.endobj "@eti_8000A990"

# 0x802C0C9C..0x802C0D2C | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802C0C9C | size: 0x90
.fn dtor_802C0C9C, global
/* 802C0C9C 002B6A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0CA0 002B6A20  7C 08 02 A6 */	mflr r0
/* 802C0CA4 002B6A24  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C0CA8 002B6A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0CAC 002B6A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0CB0 002B6A30  7C 9F 23 78 */	mr r31, r4
/* 802C0CB4 002B6A34  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802C0CB8 002B6A38  7C 7E 1B 78 */	mr r30, r3
/* 802C0CBC 002B6A3C  41 82 00 54 */	beq .L_802C0D10
/* 802C0CC0 002B6A40  41 82 00 28 */	beq .L_802C0CE8
/* 802C0CC4 002B6A44  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802C0CC8 002B6A48  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802C0CCC 002B6A4C  40 82 00 1C */	bne .L_802C0CE8
/* 802C0CD0 002B6A50  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802C0CD4 002B6A54  38 C0 00 15 */	li r6, 0x15
/* 802C0CD8 002B6A58  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802C0CDC 002B6A5C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802C0CE0 002B6A60  54 05 18 38 */	slwi r5, r0, 3
/* 802C0CE4 002B6A64  4B FB DD D9 */	bl fn_8027EABC
.L_802C0CE8:
/* 802C0CE8 002B6A68  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C0CEC 002B6A6C  40 81 00 24 */	ble .L_802C0D10
/* 802C0CF0 002B6A70  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C0CF4 002B6A74  7F C4 F3 78 */	mr r4, r30
/* 802C0CF8 002B6A78  38 A0 00 2C */	li r5, 0x2c
/* 802C0CFC 002B6A7C  38 C0 00 15 */	li r6, 0x15
/* 802C0D00 002B6A80  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0D04 002B6A84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0D08 002B6A88  7D 89 03 A6 */	mtctr r12
/* 802C0D0C 002B6A8C  4E 80 04 21 */	bctrl
.L_802C0D10:
/* 802C0D10 002B6A90  7F C3 F3 78 */	mr r3, r30
/* 802C0D14 002B6A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0D18 002B6A98  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802C0D1C 002B6A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0D20 002B6AA0  7C 08 03 A6 */	mtlr r0
/* 802C0D24 002B6AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0D28 002B6AA8  4E 80 00 20 */	blr
.endfn dtor_802C0C9C
