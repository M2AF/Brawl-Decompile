.include "macros.inc"
.file "auto_dtor_802A4DA4_text"

# 0x80006AE4..0x80006AEC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006AE4 | size: 0x8
.obj "@etb_80006AE4", local
.hidden "@etb_80006AE4"
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
.endobj "@etb_80006AE4"

# 0x80009E44..0x80009E50 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E44 | size: 0xC
.obj "@eti_80009E44", local
.hidden "@eti_80009E44"
	.4byte dtor_802A4DA4
	.4byte 0x00000090
	.4byte "@etb_80006AE4"
.endobj "@eti_80009E44"

# 0x802A4DA4..0x802A4E34 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x802A4DA4 | size: 0x90
.fn dtor_802A4DA4, global
/* 802A4DA4 0029AB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4DA8 0029AB28  7C 08 02 A6 */	mflr r0
/* 802A4DAC 0029AB2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A4DB0 0029AB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4DB4 0029AB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A4DB8 0029AB38  7C 9F 23 78 */	mr r31, r4
/* 802A4DBC 0029AB3C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A4DC0 0029AB40  7C 7E 1B 78 */	mr r30, r3
/* 802A4DC4 0029AB44  41 82 00 54 */	beq .L_802A4E18
/* 802A4DC8 0029AB48  41 82 00 28 */	beq .L_802A4DF0
/* 802A4DCC 0029AB4C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802A4DD0 0029AB50  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A4DD4 0029AB54  40 82 00 1C */	bne .L_802A4DF0
/* 802A4DD8 0029AB58  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802A4DDC 0029AB5C  38 C0 00 15 */	li r6, 0x15
/* 802A4DE0 0029AB60  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A4DE4 0029AB64  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802A4DE8 0029AB68  54 05 10 3A */	slwi r5, r0, 2
/* 802A4DEC 0029AB6C  4B FD 9C D1 */	bl fn_8027EABC
.L_802A4DF0:
/* 802A4DF0 0029AB70  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A4DF4 0029AB74  40 81 00 24 */	ble .L_802A4E18
/* 802A4DF8 0029AB78  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A4DFC 0029AB7C  7F C4 F3 78 */	mr r4, r30
/* 802A4E00 0029AB80  38 A0 02 0C */	li r5, 0x20c
/* 802A4E04 0029AB84  38 C0 00 15 */	li r6, 0x15
/* 802A4E08 0029AB88  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A4E0C 0029AB8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A4E10 0029AB90  7D 89 03 A6 */	mtctr r12
/* 802A4E14 0029AB94  4E 80 04 21 */	bctrl
.L_802A4E18:
/* 802A4E18 0029AB98  7F C3 F3 78 */	mr r3, r30
/* 802A4E1C 0029AB9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A4E20 0029ABA0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A4E24 0029ABA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4E28 0029ABA8  7C 08 03 A6 */	mtlr r0
/* 802A4E2C 0029ABAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4E30 0029ABB0  4E 80 00 20 */	blr
.endfn dtor_802A4DA4
