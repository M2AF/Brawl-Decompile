.include "macros.inc"
.file "auto_fn_802D00F0_text"

# 0x800083A8..0x800083B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083A8 | size: 0x8
.obj "@etb_800083A8", local
.hidden "@etb_800083A8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800083A8"

# 0x8000B0EC..0x8000B0F8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B0EC | size: 0xC
.obj "@eti_8000B0EC", local
.hidden "@eti_8000B0EC"
	.4byte fn_802D00F0
	.4byte 0x00000054
	.4byte "@etb_800083A8"
.endobj "@eti_8000B0EC"

# 0x802D00F0..0x802D0144 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D00F0 | size: 0x54
.fn fn_802D00F0, global
/* 802D00F0 002C5E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D00F4 002C5E74  7C 08 02 A6 */	mflr r0
/* 802D00F8 002C5E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D00FC 002C5E7C  4B FF EA A9 */	bl fn_802CEBA4
/* 802D0100 002C5E80  3D 00 80 41 */	lis r8, lbl_804103F8@ha
/* 802D0104 002C5E84  3C E0 80 53 */	lis r7, lbl_805326D0@ha
/* 802D0108 002C5E88  39 08 03 F8 */	addi r8, r8, lbl_804103F8@l
/* 802D010C 002C5E8C  3C C0 80 2D */	lis r6, fn_802CEB14@ha
/* 802D0110 002C5E90  3C 80 80 2D */	lis r4, fn_802CEB34@ha
/* 802D0114 002C5E94  38 A7 26 D0 */	addi r5, r7, lbl_805326D0@l
/* 802D0118 002C5E98  38 08 00 1C */	addi r0, r8, 0x1c
/* 802D011C 002C5E9C  38 C6 EB 14 */	addi r6, r6, fn_802CEB14@l
/* 802D0120 002C5EA0  38 84 EB 34 */	addi r4, r4, fn_802CEB34@l
/* 802D0124 002C5EA4  90 07 26 D0 */	stw r0, lbl_805326D0@l(r7)
/* 802D0128 002C5EA8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D012C 002C5EAC  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D0130 002C5EB0  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D0134 002C5EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0138 002C5EB8  7C 08 03 A6 */	mtlr r0
/* 802D013C 002C5EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0140 002C5EC0  4E 80 00 20 */	blr
.endfn fn_802D00F0

# 0x80406658..0x8040665C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D00F0
