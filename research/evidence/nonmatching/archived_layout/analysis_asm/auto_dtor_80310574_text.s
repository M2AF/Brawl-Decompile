.include "macros.inc"
.file "auto_dtor_80310574_text"

# 0x80008A78..0x80008A80 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008A78 | size: 0x8
.obj "@etb_80008A78", local
.hidden "@etb_80008A78"
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
.endobj "@etb_80008A78"

# 0x8000B974..0x8000B980 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B974 | size: 0xC
.obj "@eti_8000B974", local
.hidden "@eti_8000B974"
	.4byte dtor_80310574
	.4byte 0x00000090
	.4byte "@etb_80008A78"
.endobj "@eti_8000B974"

# 0x80310574..0x80310604 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x80310574 | size: 0x90
.fn dtor_80310574, global
/* 80310574 003062F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310578 003062F8  7C 08 02 A6 */	mflr r0
/* 8031057C 003062FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80310580 00306300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310584 00306304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80310588 00306308  7C 9F 23 78 */	mr r31, r4
/* 8031058C 0030630C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80310590 00306310  7C 7E 1B 78 */	mr r30, r3
/* 80310594 00306314  41 82 00 54 */	beq .L_803105E8
/* 80310598 00306318  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8031059C 0030631C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 803105A0 00306320  90 83 00 10 */	stw r4, 0x10(r3)
/* 803105A4 00306324  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803105A8 00306328  7C 04 00 40 */	cmplw r4, r0
/* 803105AC 0030632C  40 82 00 14 */	bne .L_803105C0
/* 803105B0 00306330  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803105B4 00306334  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 803105B8 00306338  7D 89 03 A6 */	mtctr r12
/* 803105BC 0030633C  4E 80 04 21 */	bctrl
.L_803105C0:
/* 803105C0 00306340  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803105C4 00306344  40 81 00 24 */	ble .L_803105E8
/* 803105C8 00306348  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 803105CC 0030634C  7F C4 F3 78 */	mr r4, r30
/* 803105D0 00306350  38 A0 00 08 */	li r5, 0x8
/* 803105D4 00306354  38 C0 00 15 */	li r6, 0x15
/* 803105D8 00306358  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803105DC 0030635C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 803105E0 00306360  7D 89 03 A6 */	mtctr r12
/* 803105E4 00306364  4E 80 04 21 */	bctrl
.L_803105E8:
/* 803105E8 00306368  7F C3 F3 78 */	mr r3, r30
/* 803105EC 0030636C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803105F0 00306370  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803105F4 00306374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803105F8 00306378  7C 08 03 A6 */	mtlr r0
/* 803105FC 0030637C  38 21 00 10 */	addi r1, r1, 0x10
/* 80310600 00306380  4E 80 00 20 */	blr
.endfn dtor_80310574
