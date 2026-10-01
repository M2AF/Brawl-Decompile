.include "macros.inc"
.file "auto_fn_80325BE4_text"

# 0x80008DC4..0x80008DCC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008DC4 | size: 0x8
.obj "@etb_80008DC4", local
.hidden "@etb_80008DC4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008DC4"

# 0x8000BD94..0x8000BDA0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BD94 | size: 0xC
.obj "@eti_8000BD94", local
.hidden "@eti_8000BD94"
	.4byte fn_80325BE4
	.4byte 0x0000003C
	.4byte "@etb_80008DC4"
.endobj "@eti_8000BD94"

# 0x80325BE4..0x80325C20 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x80325BE4 | size: 0x3C
.fn fn_80325BE4, global
/* 80325BE4 0031B964  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80325BE8 0031B968  7C 2C 0B 78 */	mr r12, r1
/* 80325BEC 0031B96C  21 6B FE B0 */	subfic r11, r11, -0x150
/* 80325BF0 0031B970  7C 21 59 6E */	stwux r1, r1, r11
/* 80325BF4 0031B974  34 01 00 10 */	addic. r0, r1, 0x10
/* 80325BF8 0031B978  41 82 00 18 */	beq .L_80325C10
/* 80325BFC 0031B97C  3C 60 80 49 */	lis r3, lbl_80488CB8@ha
/* 80325C00 0031B980  38 00 00 01 */	li r0, 0x1
/* 80325C04 0031B984  38 63 8C B8 */	addi r3, r3, lbl_80488CB8@l
/* 80325C08 0031B988  B0 01 00 16 */	sth r0, 0x16(r1)
/* 80325C0C 0031B98C  90 61 00 10 */	stw r3, 0x10(r1)
.L_80325C10:
/* 80325C10 0031B990  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80325C14 0031B994  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80325C18 0031B998  7D 41 53 78 */	mr r1, r10
/* 80325C1C 0031B99C  4E 80 00 20 */	blr
.endfn fn_80325BE4
