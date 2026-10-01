.include "macros.inc"
.file "auto_fn_802D45D0_text"

# 0x8000850C..0x80008514 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000850C | size: 0x8
.obj "@etb_8000850C", local
.hidden "@etb_8000850C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000850C"

# 0x8000B2E4..0x8000B2F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B2E4 | size: 0xC
.obj "@eti_8000B2E4", local
.hidden "@eti_8000B2E4"
	.4byte fn_802D45D0
	.4byte 0x00000064
	.4byte "@etb_8000850C"
.endobj "@eti_8000B2E4"

# 0x802D45D0..0x802D4634 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802D45D0 | size: 0x64
.fn fn_802D45D0, global
/* 802D45D0 002CA350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D45D4 002CA354  7C 08 02 A6 */	mflr r0
/* 802D45D8 002CA358  7C 66 1B 78 */	mr r6, r3
/* 802D45DC 002CA35C  38 A0 00 01 */	li r5, 0x1
/* 802D45E0 002CA360  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D45E4 002CA364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D45E8 002CA368  7C 9F 23 78 */	mr r31, r4
/* 802D45EC 002CA36C  3C 80 80 41 */	lis r4, lbl_80410778@ha
/* 802D45F0 002CA370  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D45F4 002CA374  38 84 07 78 */	addi r4, r4, lbl_80410778@l
/* 802D45F8 002CA378  7F E3 FB 78 */	mr r3, r31
/* 802D45FC 002CA37C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D4600 002CA380  38 84 00 10 */	addi r4, r4, 0x10
/* 802D4604 002CA384  7D 89 03 A6 */	mtctr r12
/* 802D4608 002CA388  4E 80 04 21 */	bctrl
/* 802D460C 002CA38C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D4610 002CA390  7F E3 FB 78 */	mr r3, r31
/* 802D4614 002CA394  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D4618 002CA398  7D 89 03 A6 */	mtctr r12
/* 802D461C 002CA39C  4E 80 04 21 */	bctrl
/* 802D4620 002CA3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4624 002CA3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4628 002CA3A8  7C 08 03 A6 */	mtlr r0
/* 802D462C 002CA3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4630 002CA3B0  4E 80 00 20 */	blr
.endfn fn_802D45D0
