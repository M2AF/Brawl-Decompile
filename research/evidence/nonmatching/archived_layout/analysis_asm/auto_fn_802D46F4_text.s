.include "macros.inc"
.file "auto_fn_802D46F4_text"

# 0x80008524..0x8000852C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008524 | size: 0x8
.obj "@etb_80008524", local
.hidden "@etb_80008524"
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
.endobj "@etb_80008524"

# 0x8000B308..0x8000B314 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B308 | size: 0xC
.obj "@eti_8000B308", local
.hidden "@eti_8000B308"
	.4byte fn_802D46F4
	.4byte 0x00000054
	.4byte "@etb_80008524"
.endobj "@eti_8000B308"

# 0x802D46F4..0x802D4748 | size: 0x54
.text
.balign 4

# .text:0x0 | 0x802D46F4 | size: 0x54
.fn fn_802D46F4, global
/* 802D46F4 002CA474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D46F8 002CA478  7C 08 02 A6 */	mflr r0
/* 802D46FC 002CA47C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D4700 002CA480  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D4704 002CA484  38 00 00 01 */	li r0, 0x1
/* 802D4708 002CA488  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D470C 002CA48C  7C 7F 1B 78 */	mr r31, r3
/* 802D4710 002CA490  41 82 00 24 */	beq .L_802D4734
/* 802D4714 002CA494  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D4718 002CA498  38 81 00 08 */	addi r4, r1, 0x8
/* 802D471C 002CA49C  48 00 0B 69 */	bl fn_802D5284
/* 802D4720 002CA4A0  3C 60 80 48 */	lis r3, lbl_80487588@ha
/* 802D4724 002CA4A4  38 63 75 88 */	addi r3, r3, lbl_80487588@l
/* 802D4728 002CA4A8  38 03 00 28 */	addi r0, r3, 0x28
/* 802D472C 002CA4AC  90 7F 00 00 */	stw r3, 0x0(r31)
/* 802D4730 002CA4B0  90 1F 00 0C */	stw r0, 0xc(r31)
.L_802D4734:
/* 802D4734 002CA4B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4738 002CA4B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D473C 002CA4BC  7C 08 03 A6 */	mtlr r0
/* 802D4740 002CA4C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4744 002CA4C4  4E 80 00 20 */	blr
.endfn fn_802D46F4
