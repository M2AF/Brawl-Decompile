.include "macros.inc"
.file "auto_fn_802CD798_text"

# 0x800082D0..0x800082D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082D0 | size: 0x8
.obj "@etb_800082D0", local
.hidden "@etb_800082D0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082D0"

# 0x8000AFC0..0x8000AFCC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFC0 | size: 0xC
.obj "@eti_8000AFC0", local
.hidden "@eti_8000AFC0"
	.4byte fn_802CD798
	.4byte 0x00000050
	.4byte "@etb_800082D0"
.endobj "@eti_8000AFC0"

# 0x802CD798..0x802CD7E8 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802CD798 | size: 0x50
.fn fn_802CD798, global
/* 802CD798 002C3518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD79C 002C351C  7C 08 02 A6 */	mflr r0
/* 802CD7A0 002C3520  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD7A4 002C3524  4B FF FF 79 */	bl fn_802CD71C
/* 802CD7A8 002C3528  3D 00 80 41 */	lis r8, lbl_80410238@ha
/* 802CD7AC 002C352C  3C E0 80 53 */	lis r7, lbl_80532650@ha
/* 802CD7B0 002C3530  3C C0 80 2D */	lis r6, fn_802CD6C8@ha
/* 802CD7B4 002C3534  3C 80 80 2D */	lis r4, fn_802CD708@ha
/* 802CD7B8 002C3538  39 08 02 38 */	addi r8, r8, lbl_80410238@l
/* 802CD7BC 002C353C  38 A7 26 50 */	addi r5, r7, lbl_80532650@l
/* 802CD7C0 002C3540  38 C6 D6 C8 */	addi r6, r6, fn_802CD6C8@l
/* 802CD7C4 002C3544  38 84 D7 08 */	addi r4, r4, fn_802CD708@l
/* 802CD7C8 002C3548  91 07 26 50 */	stw r8, lbl_80532650@l(r7)
/* 802CD7CC 002C354C  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802CD7D0 002C3550  90 85 00 08 */	stw r4, 0x8(r5)
/* 802CD7D4 002C3554  90 65 00 0C */	stw r3, 0xc(r5)
/* 802CD7D8 002C3558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD7DC 002C355C  7C 08 03 A6 */	mtlr r0
/* 802CD7E0 002C3560  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD7E4 002C3564  4E 80 00 20 */	blr
.endfn fn_802CD798

# 0x80406644..0x80406648 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CD798
