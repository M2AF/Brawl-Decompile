.include "macros.inc"
.file "auto_fn_802D0144_text"

# 0x800083B0..0x800083B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083B0 | size: 0x8
.obj "@etb_800083B0", local
.hidden "@etb_800083B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800083B0"

# 0x8000B0F8..0x8000B104 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B0F8 | size: 0xC
.obj "@eti_8000B0F8", local
.hidden "@eti_8000B0F8"
	.4byte fn_802D0144
	.4byte 0x0000006C
	.4byte "@etb_800083B0"
.endobj "@eti_8000B0F8"

# 0x802D0144..0x802D01B0 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802D0144 | size: 0x6C
.fn fn_802D0144, global
/* 802D0144 002C5EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0148 002C5EC8  7C 08 02 A6 */	mflr r0
/* 802D014C 002C5ECC  3C A0 80 41 */	lis r5, lbl_80410480@ha
/* 802D0150 002C5ED0  3C 60 80 53 */	lis r3, lbl_805326E0@ha
/* 802D0154 002C5ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0158 002C5ED8  38 A5 04 80 */	addi r5, r5, lbl_80410480@l
/* 802D015C 002C5EDC  3C 80 80 41 */	lis r4, lbl_804104A8@ha
/* 802D0160 002C5EE0  3D 20 80 41 */	lis r9, lbl_80410474@ha
/* 802D0164 002C5EE4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 802D0168 002C5EE8  38 00 00 02 */	li r0, 0x2
/* 802D016C 002C5EEC  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802D0170 002C5EF0  38 63 26 E0 */	addi r3, r3, lbl_805326E0@l
/* 802D0174 002C5EF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D0178 002C5EF8  38 00 00 00 */	li r0, 0x0
/* 802D017C 002C5EFC  38 84 04 A8 */	addi r4, r4, lbl_804104A8@l
/* 802D0180 002C5F00  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802D0184 002C5F04  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D0188 002C5F08  39 29 04 74 */	addi r9, r9, lbl_80410474@l
/* 802D018C 002C5F0C  38 C0 00 30 */	li r6, 0x30
/* 802D0190 002C5F10  38 E0 00 00 */	li r7, 0x0
/* 802D0194 002C5F14  39 00 00 00 */	li r8, 0x0
/* 802D0198 002C5F18  39 40 00 01 */	li r10, 0x1
/* 802D019C 002C5F1C  4B FA C6 6D */	bl fn_8027C808
/* 802D01A0 002C5F20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D01A4 002C5F24  7C 08 03 A6 */	mtlr r0
/* 802D01A8 002C5F28  38 21 00 20 */	addi r1, r1, 0x20
/* 802D01AC 002C5F2C  4E 80 00 20 */	blr
.endfn fn_802D0144

# 0x8040665C..0x80406660 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D0144
