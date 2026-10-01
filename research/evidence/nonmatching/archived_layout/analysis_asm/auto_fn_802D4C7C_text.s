.include "macros.inc"
.file "auto_fn_802D4C7C_text"

# 0x80008554..0x8000855C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008554 | size: 0x8
.obj "@etb_80008554", local
.hidden "@etb_80008554"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008554"

# 0x8000B350..0x8000B35C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B350 | size: 0xC
.obj "@eti_8000B350", local
.hidden "@eti_8000B350"
	.4byte fn_802D4C7C
	.4byte 0x00000068
	.4byte "@etb_80008554"
.endobj "@eti_8000B350"

# 0x802D4C7C..0x802D4CE4 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802D4C7C | size: 0x68
.fn fn_802D4C7C, global
/* 802D4C7C 002CA9FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D4C80 002CAA00  7C 08 02 A6 */	mflr r0
/* 802D4C84 002CAA04  3C A0 80 41 */	lis r5, lbl_804109C4@ha
/* 802D4C88 002CAA08  3C 60 80 53 */	lis r3, lbl_80532830@ha
/* 802D4C8C 002CAA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D4C90 002CAA10  38 A5 09 C4 */	addi r5, r5, lbl_804109C4@l
/* 802D4C94 002CAA14  3C 80 80 41 */	lis r4, lbl_804109D8@ha
/* 802D4C98 002CAA18  38 C0 00 01 */	li r6, 0x1
/* 802D4C9C 002CAA1C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D4CA0 002CAA20  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 802D4CA4 002CAA24  38 00 00 00 */	li r0, 0x0
/* 802D4CA8 002CAA28  38 63 28 30 */	addi r3, r3, lbl_80532830@l
/* 802D4CAC 002CAA2C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D4CB0 002CAA30  38 84 09 D8 */	addi r4, r4, lbl_804109D8@l
/* 802D4CB4 002CAA34  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 802D4CB8 002CAA38  38 C0 00 0C */	li r6, 0xc
/* 802D4CBC 002CAA3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D4CC0 002CAA40  38 E0 00 00 */	li r7, 0x0
/* 802D4CC4 002CAA44  39 00 00 00 */	li r8, 0x0
/* 802D4CC8 002CAA48  39 20 00 00 */	li r9, 0x0
/* 802D4CCC 002CAA4C  39 40 00 00 */	li r10, 0x0
/* 802D4CD0 002CAA50  4B FA 7B 39 */	bl fn_8027C808
/* 802D4CD4 002CAA54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4CD8 002CAA58  7C 08 03 A6 */	mtlr r0
/* 802D4CDC 002CAA5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4CE0 002CAA60  4E 80 00 20 */	blr
.endfn fn_802D4C7C

# 0x80406684..0x80406688 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4C7C
