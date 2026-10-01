.include "macros.inc"
.file "auto_fn_802D1680_text"

# 0x80008468..0x80008470 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008468 | size: 0x8
.obj "@etb_80008468", local
.hidden "@etb_80008468"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008468"

# 0x8000B20C..0x8000B218 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B20C | size: 0xC
.obj "@eti_8000B20C", local
.hidden "@eti_8000B20C"
	.4byte fn_802D1680
	.4byte 0x0000003C
	.4byte "@etb_80008468"
.endobj "@eti_8000B20C"

# 0x802D1680..0x802D16BC | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802D1680 | size: 0x3C
.fn fn_802D1680, global
/* 802D1680 002C7400  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D1684 002C7404  7C 2C 0B 78 */	mr r12, r1
/* 802D1688 002C7408  21 6B FF A0 */	subfic r11, r11, -0x60
/* 802D168C 002C740C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D1690 002C7410  34 01 00 10 */	addic. r0, r1, 0x10
/* 802D1694 002C7414  41 82 00 18 */	beq .L_802D16AC
/* 802D1698 002C7418  3C 60 80 48 */	lis r3, lbl_80487508@ha
/* 802D169C 002C741C  38 00 00 01 */	li r0, 0x1
/* 802D16A0 002C7420  38 63 75 08 */	addi r3, r3, lbl_80487508@l
/* 802D16A4 002C7424  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802D16A8 002C7428  90 61 00 10 */	stw r3, 0x10(r1)
.L_802D16AC:
/* 802D16AC 002C742C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802D16B0 002C7430  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D16B4 002C7434  7D 41 53 78 */	mr r1, r10
/* 802D16B8 002C7438  4E 80 00 20 */	blr
.endfn fn_802D1680
