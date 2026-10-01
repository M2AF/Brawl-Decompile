.include "macros.inc"
.file "auto_fn_802C0644_text"

# 0x80007B7C..0x80007B84 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B7C | size: 0x8
.obj "@etb_80007B7C", local
.hidden "@etb_80007B7C"
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
.endobj "@etb_80007B7C"

# 0x8000A918..0x8000A924 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A918 | size: 0xC
.obj "@eti_8000A918", local
.hidden "@eti_8000A918"
	.4byte fn_802C0644
	.4byte 0x00000048
	.4byte "@etb_80007B7C"
.endobj "@eti_8000A918"

# 0x802C0644..0x802C068C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C0644 | size: 0x48
.fn fn_802C0644, global
/* 802C0644 002B63C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0648 002B63C8  7C 08 02 A6 */	mflr r0
/* 802C064C 002B63CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0650 002B63D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0654 002B63D4  3F E0 80 53 */	lis r31, lbl_805325BC@ha
/* 802C0658 002B63D8  38 7F 25 BC */	addi r3, r31, lbl_805325BC@l
/* 802C065C 002B63DC  4B FF FF 35 */	bl fn_802C0590
/* 802C0660 002B63E0  3C 80 80 2C */	lis r4, fn_802C05E8@ha
/* 802C0664 002B63E4  3C A0 80 53 */	lis r5, lbl_805325B0@ha
/* 802C0668 002B63E8  38 7F 25 BC */	addi r3, r31, lbl_805325BC@l
/* 802C066C 002B63EC  38 84 05 E8 */	addi r4, r4, fn_802C05E8@l
/* 802C0670 002B63F0  38 A5 25 B0 */	addi r5, r5, lbl_805325B0@l
/* 802C0674 002B63F4  48 13 00 B1 */	bl __register_global_object
/* 802C0678 002B63F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C067C 002B63FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0680 002B6400  7C 08 03 A6 */	mtlr r0
/* 802C0684 002B6404  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0688 002B6408  4E 80 00 20 */	blr
.endfn fn_802C0644

# 0x80406630..0x80406634 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802C0644
