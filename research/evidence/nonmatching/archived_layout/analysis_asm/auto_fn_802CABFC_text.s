.include "macros.inc"
.file "auto_fn_802CABFC_text"

# 0x800081B0..0x800081B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800081B0 | size: 0x8
.obj "@etb_800081B0", local
.hidden "@etb_800081B0"
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
.endobj "@etb_800081B0"

# 0x8000AE58..0x8000AE64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE58 | size: 0xC
.obj "@eti_8000AE58", local
.hidden "@eti_8000AE58"
	.4byte fn_802CABFC
	.4byte 0x00000050
	.4byte "@etb_800081B0"
.endobj "@eti_8000AE58"

# 0x802CABFC..0x802CAC4C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802CABFC | size: 0x50
.fn fn_802CABFC, global
/* 802CABFC 002C097C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CAC00 002C0980  7C 08 02 A6 */	mflr r0
/* 802CAC04 002C0984  7C 66 1B 78 */	mr r6, r3
/* 802CAC08 002C0988  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CAC0C 002C098C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CAC10 002C0990  7C BF 2B 78 */	mr r31, r5
/* 802CAC14 002C0994  80 A6 00 04 */	lwz r5, 0x4(r6)
/* 802CAC18 002C0998  80 64 00 04 */	lwz r3, 0x4(r4)
/* 802CAC1C 002C099C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 802CAC20 002C09A0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CAC24 002C09A4  80 C6 00 08 */	lwz r6, 0x8(r6)
/* 802CAC28 002C09A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CAC2C 002C09AC  7D 89 03 A6 */	mtctr r12
/* 802CAC30 002C09B0  4E 80 04 21 */	bctrl
/* 802CAC34 002C09B4  7F E3 FB 78 */	mr r3, r31
/* 802CAC38 002C09B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CAC3C 002C09BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CAC40 002C09C0  7C 08 03 A6 */	mtlr r0
/* 802CAC44 002C09C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAC48 002C09C8  4E 80 00 20 */	blr
.endfn fn_802CABFC
