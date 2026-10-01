.include "macros.inc"
.file "auto_fn_802CEA00_text"

# 0x80008348..0x80008350 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008348 | size: 0x8
.obj "@etb_80008348", local
.hidden "@etb_80008348"
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
.endobj "@etb_80008348"

# 0x8000B074..0x8000B080 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B074 | size: 0xC
.obj "@eti_8000B074", local
.hidden "@eti_8000B074"
	.4byte fn_802CEA00
	.4byte 0x00000098
	.4byte "@etb_80008348"
.endobj "@eti_8000B074"

# 0x802CEA00..0x802CEA98 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802CEA00 | size: 0x98
.fn fn_802CEA00, global
/* 802CEA00 002C4780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CEA04 002C4784  7C 08 02 A6 */	mflr r0
/* 802CEA08 002C4788  38 A0 00 01 */	li r5, 0x1
/* 802CEA0C 002C478C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CEA10 002C4790  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CEA14 002C4794  3F E0 80 41 */	lis r31, lbl_804103D0@ha
/* 802CEA18 002C4798  3B FF 03 D0 */	addi r31, r31, lbl_804103D0@l
/* 802CEA1C 002C479C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CEA20 002C47A0  7C 9E 23 78 */	mr r30, r4
/* 802CEA24 002C47A4  38 9F 00 0F */	addi r4, r31, 0xf
/* 802CEA28 002C47A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CEA2C 002C47AC  7C 7D 1B 78 */	mr r29, r3
/* 802CEA30 002C47B0  7F C3 F3 78 */	mr r3, r30
/* 802CEA34 002C47B4  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802CEA38 002C47B8  7F A6 EB 78 */	mr r6, r29
/* 802CEA3C 002C47BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802CEA40 002C47C0  7D 89 03 A6 */	mtctr r12
/* 802CEA44 002C47C4  4E 80 04 21 */	bctrl
/* 802CEA48 002C47C8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802CEA4C 002C47CC  7F C3 F3 78 */	mr r3, r30
/* 802CEA50 002C47D0  38 9F 00 17 */	addi r4, r31, 0x17
/* 802CEA54 002C47D4  38 A0 00 01 */	li r5, 0x1
/* 802CEA58 002C47D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802CEA5C 002C47DC  80 DD 00 14 */	lwz r6, 0x14(r29)
/* 802CEA60 002C47E0  7D 89 03 A6 */	mtctr r12
/* 802CEA64 002C47E4  4E 80 04 21 */	bctrl
/* 802CEA68 002C47E8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802CEA6C 002C47EC  7F C3 F3 78 */	mr r3, r30
/* 802CEA70 002C47F0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802CEA74 002C47F4  7D 89 03 A6 */	mtctr r12
/* 802CEA78 002C47F8  4E 80 04 21 */	bctrl
/* 802CEA7C 002C47FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CEA80 002C4800  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CEA84 002C4804  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CEA88 002C4808  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CEA8C 002C480C  7C 08 03 A6 */	mtlr r0
/* 802CEA90 002C4810  38 21 00 20 */	addi r1, r1, 0x20
/* 802CEA94 002C4814  4E 80 00 20 */	blr
.endfn fn_802CEA00
