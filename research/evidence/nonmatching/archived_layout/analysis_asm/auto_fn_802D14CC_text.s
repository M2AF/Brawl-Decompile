.include "macros.inc"
.file "auto_fn_802D14CC_text"

# 0x80008450..0x80008458 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008450 | size: 0x8
.obj "@etb_80008450", local
.hidden "@etb_80008450"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008450"

# 0x8000B1E8..0x8000B1F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1E8 | size: 0xC
.obj "@eti_8000B1E8", local
.hidden "@eti_8000B1E8"
	.4byte fn_802D14CC
	.4byte 0x00000054
	.4byte "@etb_80008450"
.endobj "@eti_8000B1E8"

# 0x802D14CC..0x802D1520 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D14CC | size: 0x54
.fn fn_802D14CC, global
/* 802D14CC 002C724C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D14D0 002C7250  7C 08 02 A6 */	mflr r0
/* 802D14D4 002C7254  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D14D8 002C7258  4B FF F6 BD */	bl fn_802D0B94
/* 802D14DC 002C725C  3D 00 80 41 */	lis r8, lbl_80410580@ha
/* 802D14E0 002C7260  3C E0 80 53 */	lis r7, lbl_80532758@ha
/* 802D14E4 002C7264  39 08 05 80 */	addi r8, r8, lbl_80410580@l
/* 802D14E8 002C7268  3C C0 80 2D */	lis r6, fn_802D0A94@ha
/* 802D14EC 002C726C  3C 80 80 2D */	lis r4, fn_802D0AC0@ha
/* 802D14F0 002C7270  38 A7 27 58 */	addi r5, r7, lbl_80532758@l
/* 802D14F4 002C7274  38 08 00 25 */	addi r0, r8, 0x25
/* 802D14F8 002C7278  38 C6 0A 94 */	addi r6, r6, fn_802D0A94@l
/* 802D14FC 002C727C  38 84 0A C0 */	addi r4, r4, fn_802D0AC0@l
/* 802D1500 002C7280  90 07 27 58 */	stw r0, lbl_80532758@l(r7)
/* 802D1504 002C7284  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802D1508 002C7288  90 85 00 08 */	stw r4, 0x8(r5)
/* 802D150C 002C728C  90 65 00 0C */	stw r3, 0xc(r5)
/* 802D1510 002C7290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1514 002C7294  7C 08 03 A6 */	mtlr r0
/* 802D1518 002C7298  38 21 00 10 */	addi r1, r1, 0x10
/* 802D151C 002C729C  4E 80 00 20 */	blr
.endfn fn_802D14CC

# 0x80406668..0x8040666C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D14CC
