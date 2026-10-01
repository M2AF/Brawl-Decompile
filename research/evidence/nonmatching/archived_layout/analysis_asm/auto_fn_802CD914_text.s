.include "macros.inc"
.file "auto_fn_802CD914_text"

# 0x800082E8..0x800082F0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082E8 | size: 0x8
.obj "@etb_800082E8", local
.hidden "@etb_800082E8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082E8"

# 0x8000AFE4..0x8000AFF0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFE4 | size: 0xC
.obj "@eti_8000AFE4", local
.hidden "@eti_8000AFE4"
	.4byte fn_802CD914
	.4byte 0x0000003C
	.4byte "@etb_800082E8"
.endobj "@eti_8000AFE4"

# 0x802CD914..0x802CD950 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802CD914 | size: 0x3C
.fn fn_802CD914, global
/* 802CD914 002C3694  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CD918 002C3698  7C 2C 0B 78 */	mr r12, r1
/* 802CD91C 002C369C  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802CD920 002C36A0  7C 21 59 6E */	stwux r1, r1, r11
/* 802CD924 002C36A4  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CD928 002C36A8  41 82 00 18 */	beq .L_802CD940
/* 802CD92C 002C36AC  3C 60 80 48 */	lis r3, lbl_80487380@ha
/* 802CD930 002C36B0  38 00 00 01 */	li r0, 0x1
/* 802CD934 002C36B4  38 63 73 80 */	addi r3, r3, lbl_80487380@l
/* 802CD938 002C36B8  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CD93C 002C36BC  90 61 00 10 */	stw r3, 0x10(r1)
.L_802CD940:
/* 802CD940 002C36C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD944 002C36C4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CD948 002C36C8  7D 41 53 78 */	mr r1, r10
/* 802CD94C 002C36CC  4E 80 00 20 */	blr
.endfn fn_802CD914
