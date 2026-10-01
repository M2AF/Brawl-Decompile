.include "macros.inc"
.file "auto_fn_802D1434_text"

# 0x80008448..0x80008450 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008448 | size: 0x8
.obj "@etb_80008448", local
.hidden "@etb_80008448"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80008448"

# 0x8000B1DC..0x8000B1E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1DC | size: 0xC
.obj "@eti_8000B1DC", local
.hidden "@eti_8000B1DC"
	.4byte fn_802D1434
	.4byte 0x00000098
	.4byte "@etb_80008448"
.endobj "@eti_8000B1DC"

# 0x802D1434..0x802D14CC | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802D1434 | size: 0x98
.fn fn_802D1434, global
/* 802D1434 002C71B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1438 002C71B8  7C 08 02 A6 */	mflr r0
/* 802D143C 002C71BC  38 A0 00 01 */	li r5, 0x1
/* 802D1440 002C71C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1444 002C71C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D1448 002C71C8  3F E0 80 41 */	lis r31, lbl_80410580@ha
/* 802D144C 002C71CC  3B FF 05 80 */	addi r31, r31, lbl_80410580@l
/* 802D1450 002C71D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D1454 002C71D4  7C 9E 23 78 */	mr r30, r4
/* 802D1458 002C71D8  38 9F 00 12 */	addi r4, r31, 0x12
/* 802D145C 002C71DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D1460 002C71E0  7C 7D 1B 78 */	mr r29, r3
/* 802D1464 002C71E4  7F C3 F3 78 */	mr r3, r30
/* 802D1468 002C71E8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D146C 002C71EC  7F A6 EB 78 */	mr r6, r29
/* 802D1470 002C71F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D1474 002C71F4  7D 89 03 A6 */	mtctr r12
/* 802D1478 002C71F8  4E 80 04 21 */	bctrl
/* 802D147C 002C71FC  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D1480 002C7200  7F C3 F3 78 */	mr r3, r30
/* 802D1484 002C7204  38 9F 00 1F */	addi r4, r31, 0x1f
/* 802D1488 002C7208  38 A0 00 01 */	li r5, 0x1
/* 802D148C 002C720C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D1490 002C7210  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 802D1494 002C7214  7D 89 03 A6 */	mtctr r12
/* 802D1498 002C7218  4E 80 04 21 */	bctrl
/* 802D149C 002C721C  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D14A0 002C7220  7F C3 F3 78 */	mr r3, r30
/* 802D14A4 002C7224  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D14A8 002C7228  7D 89 03 A6 */	mtctr r12
/* 802D14AC 002C722C  4E 80 04 21 */	bctrl
/* 802D14B0 002C7230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D14B4 002C7234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D14B8 002C7238  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D14BC 002C723C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D14C0 002C7240  7C 08 03 A6 */	mtlr r0
/* 802D14C4 002C7244  38 21 00 20 */	addi r1, r1, 0x20
/* 802D14C8 002C7248  4E 80 00 20 */	blr
.endfn fn_802D1434
