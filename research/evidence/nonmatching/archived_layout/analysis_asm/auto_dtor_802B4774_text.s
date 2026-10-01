.include "macros.inc"
.file "auto_dtor_802B4774_text"

# 0x800074A4..0x800074AC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074A4 | size: 0x8
.obj "@etb_800074A4", local
.hidden "@etb_800074A4"
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
.endobj "@etb_800074A4"

# 0x8000A4B0..0x8000A4BC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4B0 | size: 0xC
.obj "@eti_8000A4B0", local
.hidden "@eti_8000A4B0"
	.4byte dtor_802B4774
	.4byte 0x0000008C
	.4byte "@etb_800074A4"
.endobj "@eti_8000A4B0"

# 0x802B4774..0x802B4800 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x802B4774 | size: 0x8C
.fn dtor_802B4774, global
/* 802B4774 002AA4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B4778 002AA4F8  7C 08 02 A6 */	mflr r0
/* 802B477C 002AA4FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B4780 002AA500  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B4784 002AA504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B4788 002AA508  7C 9F 23 78 */	mr r31, r4
/* 802B478C 002AA50C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B4790 002AA510  7C 7E 1B 78 */	mr r30, r3
/* 802B4794 002AA514  41 82 00 50 */	beq .L_802B47E4
/* 802B4798 002AA518  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802B479C 002AA51C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802B47A0 002AA520  40 82 00 1C */	bne .L_802B47BC
/* 802B47A4 002AA524  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 802B47A8 002AA528  38 C0 00 15 */	li r6, 0x15
/* 802B47AC 002AA52C  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802B47B0 002AA530  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802B47B4 002AA534  54 05 08 7C */	clrlslwi r5, r0, 2, 1
/* 802B47B8 002AA538  4B FC A3 05 */	bl fn_8027EABC
.L_802B47BC:
/* 802B47BC 002AA53C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B47C0 002AA540  40 81 00 24 */	ble .L_802B47E4
/* 802B47C4 002AA544  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B47C8 002AA548  7F C4 F3 78 */	mr r4, r30
/* 802B47CC 002AA54C  38 A0 00 0C */	li r5, 0xc
/* 802B47D0 002AA550  38 C0 00 15 */	li r6, 0x15
/* 802B47D4 002AA554  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B47D8 002AA558  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802B47DC 002AA55C  7D 89 03 A6 */	mtctr r12
/* 802B47E0 002AA560  4E 80 04 21 */	bctrl
.L_802B47E4:
/* 802B47E4 002AA564  7F C3 F3 78 */	mr r3, r30
/* 802B47E8 002AA568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B47EC 002AA56C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B47F0 002AA570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B47F4 002AA574  7C 08 03 A6 */	mtlr r0
/* 802B47F8 002AA578  38 21 00 10 */	addi r1, r1, 0x10
/* 802B47FC 002AA57C  4E 80 00 20 */	blr
.endfn dtor_802B4774
