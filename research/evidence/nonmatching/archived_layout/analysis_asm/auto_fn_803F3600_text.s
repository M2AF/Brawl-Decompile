.include "macros.inc"
.file "auto_fn_803F3600_text"

# 0x80009594..0x8000959C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009594 | size: 0x8
.obj "@etb_80009594", local
.hidden "@etb_80009594"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80009594"

# 0x8000C5A4..0x8000C5B0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C5A4 | size: 0xC
.obj "@eti_8000C5A4", local
.hidden "@eti_8000C5A4"
	.4byte fn_803F3600
	.4byte 0x00000084
	.4byte "@etb_80009594"
.endobj "@eti_8000C5A4"

# 0x803F3600..0x803F3684 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x803F3600 | size: 0x84
.fn fn_803F3600, global
/* 803F3600 003E9380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3604 003E9384  7C 08 02 A6 */	mflr r0
/* 803F3608 003E9388  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F360C 003E938C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F3610 003E9390  3B E0 00 00 */	li r31, 0x0
/* 803F3614 003E9394  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803F3618 003E9398  3F C0 80 49 */	lis r30, __files@ha
/* 803F361C 003E939C  3B DE 3E 60 */	addi r30, r30, __files@l
/* 803F3620 003E93A0  48 00 00 40 */	b .L_803F3660
.L_803F3624:
/* 803F3624 003E93A4  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 803F3628 003E93A8  54 60 57 7F */	extrwi. r0, r3, 3, 7
/* 803F362C 003E93AC  41 82 00 30 */	beq .L_803F365C
/* 803F3630 003E93B0  54 60 3F FF */	extrwi. r0, r3, 1, 6
/* 803F3634 003E93B4  41 82 00 28 */	beq .L_803F365C
/* 803F3638 003E93B8  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 803F363C 003E93BC  54 00 1F 7E */	srwi r0, r0, 29
/* 803F3640 003E93C0  28 00 00 01 */	cmplwi r0, 0x1
/* 803F3644 003E93C4  40 82 00 18 */	bne .L_803F365C
/* 803F3648 003E93C8  7F C3 F3 78 */	mr r3, r30
/* 803F364C 003E93CC  48 00 23 09 */	bl fn_803F5954
/* 803F3650 003E93D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F3654 003E93D4  41 82 00 08 */	beq .L_803F365C
/* 803F3658 003E93D8  3B E0 FF FF */	li r31, -0x1
.L_803F365C:
/* 803F365C 003E93DC  83 DE 00 4C */	lwz r30, 0x4c(r30)
.L_803F3660:
/* 803F3660 003E93E0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803F3664 003E93E4  40 82 FF C0 */	bne .L_803F3624
/* 803F3668 003E93E8  7F E3 FB 78 */	mr r3, r31
/* 803F366C 003E93EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F3670 003E93F0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803F3674 003E93F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3678 003E93F8  7C 08 03 A6 */	mtlr r0
/* 803F367C 003E93FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3680 003E9400  4E 80 00 20 */	blr
.endfn fn_803F3600
