.include "macros.inc"
.file "auto_fn_802CD71C_text"

# 0x800082C8..0x800082D0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082C8 | size: 0x8
.obj "@etb_800082C8", local
.hidden "@etb_800082C8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082C8"

# 0x8000AFB4..0x8000AFC0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFB4 | size: 0xC
.obj "@eti_8000AFB4", local
.hidden "@eti_8000AFB4"
	.4byte fn_802CD71C
	.4byte 0x0000005C
	.4byte "@etb_800082C8"
.endobj "@eti_8000AFB4"

# 0x802CD71C..0x802CD778 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD71C | size: 0x5C
.fn fn_802CD71C, global
/* 802CD71C 002C349C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CD720 002C34A0  7C 2C 0B 78 */	mr r12, r1
/* 802CD724 002C34A4  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802CD728 002C34A8  7C 21 59 6E */	stwux r1, r1, r11
/* 802CD72C 002C34AC  34 01 00 10 */	addic. r0, r1, 0x10
/* 802CD730 002C34B0  41 82 00 38 */	beq .L_802CD768
/* 802CD734 002C34B4  3C C0 80 48 */	lis r6, lbl_80487320@ha
/* 802CD738 002C34B8  38 00 00 01 */	li r0, 0x1
/* 802CD73C 002C34BC  38 C6 73 20 */	addi r6, r6, lbl_80487320@l
/* 802CD740 002C34C0  B0 01 00 16 */	sth r0, 0x16(r1)
/* 802CD744 002C34C4  38 A6 00 10 */	addi r5, r6, 0x10
/* 802CD748 002C34C8  38 86 00 20 */	addi r4, r6, 0x20
/* 802CD74C 002C34CC  38 66 00 30 */	addi r3, r6, 0x30
/* 802CD750 002C34D0  38 06 00 40 */	addi r0, r6, 0x40
/* 802CD754 002C34D4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802CD758 002C34D8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802CD75C 002C34DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802CD760 002C34E0  90 61 00 20 */	stw r3, 0x20(r1)
/* 802CD764 002C34E4  90 01 00 24 */	stw r0, 0x24(r1)
.L_802CD768:
/* 802CD768 002C34E8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD76C 002C34EC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CD770 002C34F0  7D 41 53 78 */	mr r1, r10
/* 802CD774 002C34F4  4E 80 00 20 */	blr
.endfn fn_802CD71C
