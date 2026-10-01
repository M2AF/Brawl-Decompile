.include "macros.inc"
.file "auto_fn_803D48E0_text"

# 0x80009414..0x8000941C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009414 | size: 0x8
.obj "@etb_80009414", local
.hidden "@etb_80009414"
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
.endobj "@etb_80009414"

# 0x8000C3B8..0x8000C3C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C3B8 | size: 0xC
.obj "@eti_8000C3B8", local
.hidden "@eti_8000C3B8"
	.4byte fn_803D48E0
	.4byte 0x00000070
	.4byte "@etb_80009414"
.endobj "@eti_8000C3B8"

# 0x803D48E0..0x803D4950 | size: 0x70
.text
.balign 4

# .text:0x0 | 0x803D48E0 | size: 0x70
.fn fn_803D48E0, global
/* 803D48E0 003CA660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D48E4 003CA664  7C 08 02 A6 */	mflr r0
/* 803D48E8 003CA668  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D48EC 003CA66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D48F0 003CA670  93 C1 00 08 */	stw r30, 0x8(r1)
/* 803D48F4 003CA674  7C 7E 1B 78 */	mr r30, r3
/* 803D48F8 003CA678  4B FF 89 B1 */	bl fn_803CD2A8
/* 803D48FC 003CA67C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 803D4900 003CA680  7C 7E 1B 78 */	mr r30, r3
/* 803D4904 003CA684  41 82 00 1C */	beq .L_803D4920
/* 803D4908 003CA688  3B E0 00 03 */	li r31, 0x3
/* 803D490C 003CA68C  4B FF 8A 19 */	bl fn_803CD324
/* 803D4910 003CA690  93 E3 1B 40 */	stw r31, 0x1b40(r3)
/* 803D4914 003CA694  38 60 00 01 */	li r3, 0x1
/* 803D4918 003CA698  4B FF 8A F9 */	bl fn_803CD410
/* 803D491C 003CA69C  48 00 00 10 */	b .L_803D492C
.L_803D4920:
/* 803D4920 003CA6A0  3B E0 00 00 */	li r31, 0x0
/* 803D4924 003CA6A4  4B FF 8A 01 */	bl fn_803CD324
/* 803D4928 003CA6A8  93 E3 1B 40 */	stw r31, 0x1b40(r3)
.L_803D492C:
/* 803D492C 003CA6AC  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 803D4930 003CA6B0  38 60 00 00 */	li r3, 0x0
/* 803D4934 003CA6B4  4B FF B2 B1 */	bl fn_803CFBE4
/* 803D4938 003CA6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D493C 003CA6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D4940 003CA6C0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803D4944 003CA6C4  7C 08 03 A6 */	mtlr r0
/* 803D4948 003CA6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D494C 003CA6CC  4E 80 00 20 */	blr
.endfn fn_803D48E0
