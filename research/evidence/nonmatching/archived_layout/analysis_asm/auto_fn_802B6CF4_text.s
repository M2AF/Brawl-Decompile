.include "macros.inc"
.file "auto_fn_802B6CF4_text"

# 0x800075A4..0x800075BC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800075A4 | size: 0x18
.obj "@etb_800075A4", local
.hidden "@etb_800075A4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_800075A4"

# 0x8000A570..0x8000A57C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A570 | size: 0xC
.obj "@eti_8000A570", local
.hidden "@eti_8000A570"
	.4byte fn_802B6CF4
	.4byte 0x00000048
	.4byte "@etb_800075A4"
.endobj "@eti_8000A570"

# 0x802B6CF4..0x802B6D3C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B6CF4 | size: 0x48
.fn fn_802B6CF4, global
/* 802B6CF4 002ACA74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B6CF8 002ACA78  7C 08 02 A6 */	mflr r0
/* 802B6CFC 002ACA7C  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802B6D00 002ACA80  C0 02 AC 38 */	lfs f0, lbl_805A3F58@sda21(r0)
/* 802B6D04 002ACA84  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B6D08 002ACA88  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802B6D0C 002ACA8C  7C 60 1B 78 */	mr r0, r3
/* 802B6D10 002ACA90  7C 83 23 78 */	mr r3, r4
/* 802B6D14 002ACA94  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B6D18 002ACA98  7C 04 03 78 */	mr r4, r0
/* 802B6D1C 002ACA9C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B6D20 002ACAA0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B6D24 002ACAA4  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B6D28 002ACAA8  4B FF E5 79 */	bl fn_802B52A0
/* 802B6D2C 002ACAAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B6D30 002ACAB0  7C 08 03 A6 */	mtlr r0
/* 802B6D34 002ACAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B6D38 002ACAB8  4E 80 00 20 */	blr
.endfn fn_802B6CF4
