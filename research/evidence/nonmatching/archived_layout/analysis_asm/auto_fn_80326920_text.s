.include "macros.inc"
.file "auto_fn_80326920_text"

# 0x80008E54..0x80008E5C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008E54 | size: 0x8
.obj "@etb_80008E54", local
.hidden "@etb_80008E54"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80008E54"

# 0x8000BE0C..0x8000BE18 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BE0C | size: 0xC
.obj "@eti_8000BE0C", local
.hidden "@eti_8000BE0C"
	.4byte fn_80326920
	.4byte 0x00000078
	.4byte "@etb_80008E54"
.endobj "@eti_8000BE0C"

# 0x80326920..0x80326998 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x80326920 | size: 0x78
.fn fn_80326920, global
/* 80326920 0031C6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80326924 0031C6A4  7C 08 02 A6 */	mflr r0
/* 80326928 0031C6A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032692C 0031C6AC  88 07 00 00 */	lbz r0, 0x0(r7)
/* 80326930 0031C6B0  38 E1 00 08 */	addi r7, r1, 0x8
/* 80326934 0031C6B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80326938 0031C6B8  7C BF 2B 78 */	mr r31, r5
/* 8032693C 0031C6BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80326940 0031C6C0  7C 9E 23 78 */	mr r30, r4
/* 80326944 0031C6C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80326948 0031C6C8  7C 7D 1B 78 */	mr r29, r3
/* 8032694C 0031C6CC  98 01 00 08 */	stb r0, 0x8(r1)
/* 80326950 0031C6D0  4B FC BF 6D */	bl fn_802F28BC
/* 80326954 0031C6D4  2C 1F 00 01 */	cmpwi r31, 0x1
/* 80326958 0031C6D8  41 82 00 18 */	beq .L_80326970
/* 8032695C 0031C6DC  7F A3 EB 78 */	mr r3, r29
/* 80326960 0031C6E0  7F C4 F3 78 */	mr r4, r30
/* 80326964 0031C6E4  7F E5 FB 78 */	mr r5, r31
/* 80326968 0031C6E8  48 00 14 85 */	bl fn_80327DEC
/* 8032696C 0031C6EC  48 00 00 10 */	b .L_8032697C
.L_80326970:
/* 80326970 0031C6F0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80326974 0031C6F4  7F A3 EB 78 */	mr r3, r29
/* 80326978 0031C6F8  48 00 16 69 */	bl fn_80327FE0
.L_8032697C:
/* 8032697C 0031C6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80326980 0031C700  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80326984 0031C704  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80326988 0031C708  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8032698C 0031C70C  7C 08 03 A6 */	mtlr r0
/* 80326990 0031C710  38 21 00 20 */	addi r1, r1, 0x20
/* 80326994 0031C714  4E 80 00 20 */	blr
.endfn fn_80326920
