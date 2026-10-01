.include "macros.inc"
.file "auto_fn_802CEB48_text"

# 0x80008358..0x80008360 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008358 | size: 0x8
.obj "@etb_80008358", local
.hidden "@etb_80008358"
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
.endobj "@etb_80008358"

# 0x8000B08C..0x8000B098 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B08C | size: 0xC
.obj "@eti_8000B08C", local
.hidden "@eti_8000B08C"
	.4byte fn_802CEB48
	.4byte 0x0000005C
	.4byte "@etb_80008358"
.endobj "@eti_8000B08C"

# 0x802CEB48..0x802CEBA4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CEB48 | size: 0x5C
.fn fn_802CEB48, global
/* 802CEB48 002C48C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEB4C 002C48CC  7C 08 02 A6 */	mflr r0
/* 802CEB50 002C48D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CEB54 002C48D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEB58 002C48D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CEB5C 002C48DC  7C 7F 1B 78 */	mr r31, r3
/* 802CEB60 002C48E0  41 82 00 2C */	beq .L_802CEB8C
/* 802CEB64 002C48E4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CEB68 002C48E8  40 81 00 24 */	ble .L_802CEB8C
/* 802CEB6C 002C48EC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CEB70 002C48F0  7F E4 FB 78 */	mr r4, r31
/* 802CEB74 002C48F4  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CEB78 002C48F8  38 C0 00 25 */	li r6, 0x25
/* 802CEB7C 002C48FC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CEB80 002C4900  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CEB84 002C4904  7D 89 03 A6 */	mtctr r12
/* 802CEB88 002C4908  4E 80 04 21 */	bctrl
.L_802CEB8C:
/* 802CEB8C 002C490C  7F E3 FB 78 */	mr r3, r31
/* 802CEB90 002C4910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CEB94 002C4914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEB98 002C4918  7C 08 03 A6 */	mtlr r0
/* 802CEB9C 002C491C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEBA0 002C4920  4E 80 00 20 */	blr
.endfn fn_802CEB48
