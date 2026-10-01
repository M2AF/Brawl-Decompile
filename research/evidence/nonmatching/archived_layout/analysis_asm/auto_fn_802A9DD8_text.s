.include "macros.inc"
.file "auto_fn_802A9DD8_text"

# 0x80006E54..0x80006E5C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E54 | size: 0x8
.obj "@etb_80006E54", local
.hidden "@etb_80006E54"
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
.endobj "@etb_80006E54"

# 0x8000A054..0x8000A060 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A054 | size: 0xC
.obj "@eti_8000A054", local
.hidden "@eti_8000A054"
	.4byte fn_802A9DD8
	.4byte 0x0000009C
	.4byte "@etb_80006E54"
.endobj "@eti_8000A054"

# 0x802A9DD8..0x802A9E74 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x802A9DD8 | size: 0x9C
.fn fn_802A9DD8, global
/* 802A9DD8 0029FB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9DDC 0029FB5C  7C 08 02 A6 */	mflr r0
/* 802A9DE0 0029FB60  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A9DE4 0029FB64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9DE8 0029FB68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9DEC 0029FB6C  7C 9F 23 78 */	mr r31, r4
/* 802A9DF0 0029FB70  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A9DF4 0029FB74  7C 7E 1B 78 */	mr r30, r3
/* 802A9DF8 0029FB78  41 82 00 60 */	beq .L_802A9E58
/* 802A9DFC 0029FB7C  34 03 00 30 */	addic. r0, r3, 0x30
/* 802A9E00 0029FB80  41 82 00 30 */	beq .L_802A9E30
/* 802A9E04 0029FB84  41 82 00 2C */	beq .L_802A9E30
/* 802A9E08 0029FB88  41 82 00 28 */	beq .L_802A9E30
/* 802A9E0C 0029FB8C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 802A9E10 0029FB90  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802A9E14 0029FB94  40 82 00 1C */	bne .L_802A9E30
/* 802A9E18 0029FB98  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802A9E1C 0029FB9C  38 C0 00 15 */	li r6, 0x15
/* 802A9E20 0029FBA0  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802A9E24 0029FBA4  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802A9E28 0029FBA8  54 05 10 3A */	slwi r5, r0, 2
/* 802A9E2C 0029FBAC  4B FD 4C 91 */	bl fn_8027EABC
.L_802A9E30:
/* 802A9E30 0029FBB0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802A9E34 0029FBB4  40 81 00 24 */	ble .L_802A9E58
/* 802A9E38 0029FBB8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9E3C 0029FBBC  7F C4 F3 78 */	mr r4, r30
/* 802A9E40 0029FBC0  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802A9E44 0029FBC4  38 C0 00 1D */	li r6, 0x1d
/* 802A9E48 0029FBC8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9E4C 0029FBCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A9E50 0029FBD0  7D 89 03 A6 */	mtctr r12
/* 802A9E54 0029FBD4  4E 80 04 21 */	bctrl
.L_802A9E58:
/* 802A9E58 0029FBD8  7F C3 F3 78 */	mr r3, r30
/* 802A9E5C 0029FBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9E60 0029FBE0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A9E64 0029FBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9E68 0029FBE8  7C 08 03 A6 */	mtlr r0
/* 802A9E6C 0029FBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9E70 0029FBF0  4E 80 00 20 */	blr
.endfn fn_802A9DD8
