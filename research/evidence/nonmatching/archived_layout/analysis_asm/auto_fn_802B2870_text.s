.include "macros.inc"
.file "auto_fn_802B2870_text"

# 0x800073FC..0x80007404 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800073FC | size: 0x8
.obj "@etb_800073FC", local
.hidden "@etb_800073FC"
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
.endobj "@etb_800073FC"

# 0x8000A444..0x8000A450 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A444 | size: 0xC
.obj "@eti_8000A444", local
.hidden "@eti_8000A444"
	.4byte fn_802B2870
	.4byte 0x00000044
	.4byte "@etb_800073FC"
.endobj "@eti_8000A444"

# 0x802B2870..0x802B28B4 | size: 0x44
.text
.balign 4

# .text:0x0 | 0x802B2870 | size: 0x44
.fn fn_802B2870, global
/* 802B2870 002A85F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B2874 002A85F4  7C 08 02 A6 */	mflr r0
/* 802B2878 002A85F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B287C 002A85FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B2880 002A8600  7C 7F 1B 78 */	mr r31, r3
/* 802B2884 002A8604  4B FF F0 B9 */	bl fn_802B193C
/* 802B2888 002A8608  3C 80 80 48 */	lis r4, lbl_80486B68@ha
/* 802B288C 002A860C  38 00 00 00 */	li r0, 0x0
/* 802B2890 002A8610  38 84 6B 68 */	addi r4, r4, lbl_80486B68@l
/* 802B2894 002A8614  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802B2898 002A8618  7F E3 FB 78 */	mr r3, r31
/* 802B289C 002A861C  90 9F 00 00 */	stw r4, 0x0(r31)
/* 802B28A0 002A8620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B28A4 002A8624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B28A8 002A8628  7C 08 03 A6 */	mtlr r0
/* 802B28AC 002A862C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B28B0 002A8630  4E 80 00 20 */	blr
.endfn fn_802B2870
