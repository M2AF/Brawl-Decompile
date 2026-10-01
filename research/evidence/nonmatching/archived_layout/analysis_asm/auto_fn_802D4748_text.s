.include "macros.inc"
.file "auto_fn_802D4748_text"

# 0x8000852C..0x80008534 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000852C | size: 0x8
.obj "@etb_8000852C", local
.hidden "@etb_8000852C"
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
.endobj "@etb_8000852C"

# 0x8000B314..0x8000B320 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B314 | size: 0xC
.obj "@eti_8000B314", local
.hidden "@eti_8000B314"
	.4byte fn_802D4748
	.4byte 0x00000098
	.4byte "@etb_8000852C"
.endobj "@eti_8000B314"

# 0x802D4748..0x802D47E0 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802D4748 | size: 0x98
.fn fn_802D4748, global
/* 802D4748 002CA4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D474C 002CA4CC  7C 08 02 A6 */	mflr r0
/* 802D4750 002CA4D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D4754 002CA4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4758 002CA4D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D475C 002CA4DC  7C 9F 23 78 */	mr r31, r4
/* 802D4760 002CA4E0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D4764 002CA4E4  7C 7E 1B 78 */	mr r30, r3
/* 802D4768 002CA4E8  41 82 00 5C */	beq .L_802D47C4
/* 802D476C 002CA4EC  34 03 00 34 */	addic. r0, r3, 0x34
/* 802D4770 002CA4F0  41 82 00 2C */	beq .L_802D479C
/* 802D4774 002CA4F4  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 802D4778 002CA4F8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802D477C 002CA4FC  40 82 00 20 */	bne .L_802D479C
/* 802D4780 002CA500  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802D4784 002CA504  38 C0 00 15 */	li r6, 0x15
/* 802D4788 002CA508  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802D478C 002CA50C  54 00 00 BE */	clrlwi r0, r0, 2
/* 802D4790 002CA510  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 802D4794 002CA514  1C A0 00 30 */	mulli r5, r0, 0x30
/* 802D4798 002CA518  4B FA A3 25 */	bl fn_8027EABC
.L_802D479C:
/* 802D479C 002CA51C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802D47A0 002CA520  40 81 00 24 */	ble .L_802D47C4
/* 802D47A4 002CA524  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802D47A8 002CA528  7F C4 F3 78 */	mr r4, r30
/* 802D47AC 002CA52C  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802D47B0 002CA530  38 C0 00 25 */	li r6, 0x25
/* 802D47B4 002CA534  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D47B8 002CA538  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D47BC 002CA53C  7D 89 03 A6 */	mtctr r12
/* 802D47C0 002CA540  4E 80 04 21 */	bctrl
.L_802D47C4:
/* 802D47C4 002CA544  7F C3 F3 78 */	mr r3, r30
/* 802D47C8 002CA548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D47CC 002CA54C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D47D0 002CA550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D47D4 002CA554  7C 08 03 A6 */	mtlr r0
/* 802D47D8 002CA558  38 21 00 10 */	addi r1, r1, 0x10
/* 802D47DC 002CA55C  4E 80 00 20 */	blr
.endfn fn_802D4748
