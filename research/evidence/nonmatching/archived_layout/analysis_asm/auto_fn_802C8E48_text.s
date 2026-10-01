.include "macros.inc"
.file "auto_fn_802C8E48_text"

# 0x80008030..0x80008038 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008030 | size: 0x8
.obj "@etb_80008030", local
.hidden "@etb_80008030"
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
.endobj "@etb_80008030"

# 0x8000AD2C..0x8000AD38 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD2C | size: 0xC
.obj "@eti_8000AD2C", local
.hidden "@eti_8000AD2C"
	.4byte fn_802C8E48
	.4byte 0x00000054
	.4byte "@etb_80008030"
.endobj "@eti_8000AD2C"

# 0x802C8E48..0x802C8E9C | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802C8E48 | size: 0x54
.fn fn_802C8E48, global
/* 802C8E48 002BEBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8E4C 002BEBCC  7C 08 02 A6 */	mflr r0
/* 802C8E50 002BEBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8E54 002BEBD4  7C 80 23 78 */	mr r0, r4
/* 802C8E58 002BEBD8  7C A4 2B 78 */	mr r4, r5
/* 802C8E5C 002BEBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C8E60 002BEBE0  7C 7F 1B 78 */	mr r31, r3
/* 802C8E64 002BEBE4  7C 05 03 78 */	mr r5, r0
/* 802C8E68 002BEBE8  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C8E6C 002BEBEC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8E70 002BEBF0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C8E74 002BEBF4  7D 89 03 A6 */	mtctr r12
/* 802C8E78 002BEBF8  4E 80 04 21 */	bctrl
/* 802C8E7C 002BEBFC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802C8E80 002BEC00  88 03 00 04 */	lbz r0, 0x4(r3)
/* 802C8E84 002BEC04  98 1F 00 04 */	stb r0, 0x4(r31)
/* 802C8E88 002BEC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C8E8C 002BEC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8E90 002BEC10  7C 08 03 A6 */	mtlr r0
/* 802C8E94 002BEC14  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8E98 002BEC18  4E 80 00 20 */	blr
.endfn fn_802C8E48
