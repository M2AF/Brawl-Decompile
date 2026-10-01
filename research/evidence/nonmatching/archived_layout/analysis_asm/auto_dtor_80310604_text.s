.include "macros.inc"
.file "auto_dtor_80310604_text"

# 0x80008A80..0x80008A88 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008A80 | size: 0x8
.obj "@etb_80008A80", local
.hidden "@etb_80008A80"
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
.endobj "@etb_80008A80"

# 0x8000B980..0x8000B98C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B980 | size: 0xC
.obj "@eti_8000B980", local
.hidden "@eti_8000B980"
	.4byte dtor_80310604
	.4byte 0x00000090
	.4byte "@etb_80008A80"
.endobj "@eti_8000B980"

# 0x80310604..0x80310694 | size: 0x90
.text
.balign 4

# .text:0x0 | 0x80310604 | size: 0x90
.fn dtor_80310604, global
/* 80310604 00306384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310608 00306388  7C 08 02 A6 */	mflr r0
/* 8031060C 0030638C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80310610 00306390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310614 00306394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80310618 00306398  7C 9F 23 78 */	mr r31, r4
/* 8031061C 0030639C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80310620 003063A0  7C 7E 1B 78 */	mr r30, r3
/* 80310624 003063A4  41 82 00 54 */	beq .L_80310678
/* 80310628 003063A8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8031062C 003063AC  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 80310630 003063B0  90 83 00 10 */	stw r4, 0x10(r3)
/* 80310634 003063B4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80310638 003063B8  7C 04 00 40 */	cmplw r4, r0
/* 8031063C 003063BC  40 82 00 14 */	bne .L_80310650
/* 80310640 003063C0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80310644 003063C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80310648 003063C8  7D 89 03 A6 */	mtctr r12
/* 8031064C 003063CC  4E 80 04 21 */	bctrl
.L_80310650:
/* 80310650 003063D0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80310654 003063D4  40 81 00 24 */	ble .L_80310678
/* 80310658 003063D8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8031065C 003063DC  7F C4 F3 78 */	mr r4, r30
/* 80310660 003063E0  38 A0 00 08 */	li r5, 0x8
/* 80310664 003063E4  38 C0 00 15 */	li r6, 0x15
/* 80310668 003063E8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8031066C 003063EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80310670 003063F0  7D 89 03 A6 */	mtctr r12
/* 80310674 003063F4  4E 80 04 21 */	bctrl
.L_80310678:
/* 80310678 003063F8  7F C3 F3 78 */	mr r3, r30
/* 8031067C 003063FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80310680 00306400  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80310684 00306404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310688 00306408  7C 08 03 A6 */	mtlr r0
/* 8031068C 0030640C  38 21 00 10 */	addi r1, r1, 0x10
/* 80310690 00306410  4E 80 00 20 */	blr
.endfn dtor_80310604
