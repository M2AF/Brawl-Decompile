.include "macros.inc"
.file "auto_fn_802D4634_text"

# 0x80008514..0x8000851C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008514 | size: 0x8
.obj "@etb_80008514", local
.hidden "@etb_80008514"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008514"

# 0x8000B2F0..0x8000B2FC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B2F0 | size: 0xC
.obj "@eti_8000B2F0", local
.hidden "@eti_8000B2F0"
	.4byte fn_802D4634
	.4byte 0x00000054
	.4byte "@etb_80008514"
.endobj "@eti_8000B2F0"

# 0x802D4634..0x802D4688 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D4634 | size: 0x54
.fn fn_802D4634, global
/* 802D4634 002CA3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4638 002CA3B8  7C 08 02 A6 */	mflr r0
/* 802D463C 002CA3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4640 002CA3C0  4B FF E0 8D */	bl fn_802D26CC
/* 802D4644 002CA3C4  3D 00 80 41 */	lis r8, lbl_80410778@ha
/* 802D4648 002CA3C8  3C E0 80 53 */	lis r7, lbl_805327E8@ha
/* 802D464C 002CA3CC  39 08 07 78 */	addi r8, r8, lbl_80410778@l
/* 802D4650 002CA3D0  3C C0 80 2D */	lis r6, fn_802D2628@ha
/* 802D4654 002CA3D4  3C 80 80 2D */	lis r4, fn_802D265C@ha
/* 802D4658 002CA3D8  38 A7 27 E8 */	addi r5, r7, lbl_805327E8@l
/* 802D465C 002CA3DC  38 08 00 19 */	addi r0, r8, 0x19
/* 802D4660 002CA3E0  38 C6 26 28 */	addi r6, r6, fn_802D2628@l
/* 802D4664 002CA3E4  38 84 26 5C */	addi r4, r4, fn_802D265C@l
/* 802D4668 002CA3E8  90 07 27 E8 */	stw r0, lbl_805327E8@l(r7)
/* 802D466C 002CA3EC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D4670 002CA3F0  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D4674 002CA3F4  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D4678 002CA3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D467C 002CA3FC  7C 08 03 A6 */	mtlr r0
/* 802D4680 002CA400  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4684 002CA404  4E 80 00 20 */	blr
.endfn fn_802D4634

# 0x80406678..0x8040667C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4634
