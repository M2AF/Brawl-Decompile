.include "macros.inc"
.file "auto_fn_802B8E34_text"

# 0x800076FC..0x80007704 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800076FC | size: 0x8
.obj "@etb_800076FC", local
.hidden "@etb_800076FC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800076FC"

# 0x8000A63C..0x8000A648 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A63C | size: 0xC
.obj "@eti_8000A63C", local
.hidden "@eti_8000A63C"
	.4byte fn_802B8E34
	.4byte 0x00000044
	.4byte "@etb_800076FC"
.endobj "@eti_8000A63C"

# 0x802B8E34..0x802B8E78 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x802B8E34 | size: 0x44
.fn fn_802B8E34, global
/* 802B8E34 002AEBB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8E38 002AEBB8  7C 08 02 A6 */	mflr r0
/* 802B8E3C 002AEBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8E40 002AEBC0  80 05 00 00 */	lwz r0, 0x0(r5)
/* 802B8E44 002AEBC4  90 81 00 08 */	stw r4, 0x8(r1)
/* 802B8E48 002AEBC8  38 81 00 08 */	addi r4, r1, 0x8
/* 802B8E4C 002AEBCC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802B8E50 002AEBD0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802B8E54 002AEBD4  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802B8E58 002AEBD8  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8E5C 002AEBDC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802B8E60 002AEBE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B8E64 002AEBE4  48 04 5B F1 */	bl fn_802FEA54
/* 802B8E68 002AEBE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8E6C 002AEBEC  7C 08 03 A6 */	mtlr r0
/* 802B8E70 002AEBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8E74 002AEBF4  4E 80 00 20 */	blr
.endfn fn_802B8E34
