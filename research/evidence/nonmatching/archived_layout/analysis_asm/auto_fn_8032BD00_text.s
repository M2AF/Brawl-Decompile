.include "macros.inc"
.file "auto_fn_8032BD00_text"

# 0x80009120..0x80009128 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009120 | size: 0x8
.obj "@etb_80009120", local
.hidden "@etb_80009120"
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
.endobj "@etb_80009120"

# 0x8000BF80..0x8000BF8C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF80 | size: 0xC
.obj "@eti_8000BF80", local
.hidden "@eti_8000BF80"
	.4byte fn_8032BD00
	.4byte 0x0000005C
	.4byte "@etb_80009120"
.endobj "@eti_8000BF80"

# 0x8032BD00..0x8032BD5C | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x8032BD00 | size: 0x5C
.fn fn_8032BD00, global
/* 8032BD00 00321A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BD04 00321A84  7C 08 02 A6 */	mflr r0
/* 8032BD08 00321A88  2C 03 00 00 */	cmpwi r3, 0x0
/* 8032BD0C 00321A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BD10 00321A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BD14 00321A94  7C 7F 1B 78 */	mr r31, r3
/* 8032BD18 00321A98  41 82 00 2C */	beq .L_8032BD44
/* 8032BD1C 00321A9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8032BD20 00321AA0  40 81 00 24 */	ble .L_8032BD44
/* 8032BD24 00321AA4  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032BD28 00321AA8  7F E4 FB 78 */	mr r4, r31
/* 8032BD2C 00321AAC  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 8032BD30 00321AB0  38 C0 00 13 */	li r6, 0x13
/* 8032BD34 00321AB4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032BD38 00321AB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8032BD3C 00321ABC  7D 89 03 A6 */	mtctr r12
/* 8032BD40 00321AC0  4E 80 04 21 */	bctrl
.L_8032BD44:
/* 8032BD44 00321AC4  7F E3 FB 78 */	mr r3, r31
/* 8032BD48 00321AC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BD4C 00321ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BD50 00321AD0  7C 08 03 A6 */	mtlr r0
/* 8032BD54 00321AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BD58 00321AD8  4E 80 00 20 */	blr
.endfn fn_8032BD00
