.include "macros.inc"
.file "auto_fn_8007261C_text"

# 0x8007261C..0x8007266C | size: 0x50
.text
.balign 4

# .text:0x0 | 0x8007261C | size: 0x50
.fn fn_8007261C, global
/* 8007261C 0006839C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072620 000683A0  7C 08 02 A6 */	mflr r0
/* 80072624 000683A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072628 000683A8  88 0D BD AC */	lbz r0, lbl_805A01CC@sda21(r0)
/* 8007262C 000683AC  7C 00 07 75 */	extsb. r0, r0
/* 80072630 000683B0  40 82 00 2C */	bne .L_8007265C
/* 80072634 000683B4  38 6D BD A8 */	li r3, lbl_805A01C8@sda21
/* 80072638 000683B8  4B FF C1 A9 */	bl fn_8006E7E0
/* 8007263C 000683BC  3C 80 80 07 */	lis r4, fn_8006E7F0@ha
/* 80072640 000683C0  3C A0 80 49 */	lis r5, lbl_80497ED8@ha
/* 80072644 000683C4  38 84 E7 F0 */	addi r4, r4, fn_8006E7F0@l
/* 80072648 000683C8  38 6D BD A8 */	li r3, lbl_805A01C8@sda21
/* 8007264C 000683CC  38 A5 7E D8 */	addi r5, r5, lbl_80497ED8@l
/* 80072650 000683D0  48 37 E0 D5 */	bl __register_global_object
/* 80072654 000683D4  38 00 00 01 */	li r0, 0x1
/* 80072658 000683D8  98 0D BD AC */	stb r0, lbl_805A01CC@sda21(r0)
.L_8007265C:
/* 8007265C 000683DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072660 000683E0  7C 08 03 A6 */	mtlr r0
/* 80072664 000683E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80072668 000683E8  4E 80 00 20 */	blr
.endfn fn_8007261C

# 0x8040652C..0x80406530 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8007261C
