.include "macros.inc"
.file "auto_fn_802CA234_text"

# 0x800080D8..0x800080E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800080D8 | size: 0x8
.obj "@etb_800080D8", local
.hidden "@etb_800080D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_800080D8"

# 0x8000ADD4..0x8000ADE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ADD4 | size: 0xC
.obj "@eti_8000ADD4", local
.hidden "@eti_8000ADD4"
	.4byte fn_802CA234
	.4byte 0x00000094
	.4byte "@etb_800080D8"
.endobj "@eti_8000ADD4"

# 0x802CA234..0x802CA2C8 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x802CA234 | size: 0x94
.fn fn_802CA234, global
/* 802CA234 002BFFB4  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CA238 002BFFB8  7C 2C 0B 78 */	mr r12, r1
/* 802CA23C 002BFFBC  21 6B FF 80 */	subfic r11, r11, -0x80
/* 802CA240 002BFFC0  7C 21 59 6E */	stwux r1, r1, r11
/* 802CA244 002BFFC4  7C 08 02 A6 */	mflr r0
/* 802CA248 002BFFC8  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802CA24C 002BFFCC  BF 6C FF EC */	stmw r27, -0x14(r12)
/* 802CA250 002BFFD0  7C 7B 1B 78 */	mr r27, r3
/* 802CA254 002BFFD4  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 802CA258 002BFFD8  7C 9C 23 78 */	mr r28, r4
/* 802CA25C 002BFFDC  7C BD 2B 78 */	mr r29, r5
/* 802CA260 002BFFE0  80 84 00 08 */	lwz r4, 0x8(r4)
/* 802CA264 002BFFE4  7C DE 33 78 */	mr r30, r6
/* 802CA268 002BFFE8  38 61 00 20 */	addi r3, r1, 0x20
/* 802CA26C 002BFFEC  38 BF 00 30 */	addi r5, r31, 0x30
/* 802CA270 002BFFF0  4B FB D1 79 */	bl fn_802873E8
/* 802CA274 002BFFF4  38 61 00 20 */	addi r3, r1, 0x20
/* 802CA278 002BFFF8  93 81 00 1C */	stw r28, 0x1c(r1)
/* 802CA27C 002BFFFC  80 1C 00 04 */	lwz r0, 0x4(r28)
/* 802CA280 002C0000  7F A5 EB 78 */	mr r5, r29
/* 802CA284 002C0004  90 61 00 18 */	stw r3, 0x18(r1)
/* 802CA288 002C0008  7F C6 F3 78 */	mr r6, r30
/* 802CA28C 002C000C  38 81 00 10 */	addi r4, r1, 0x10
/* 802CA290 002C0010  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802CA294 002C0014  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CA298 002C0018  90 61 00 10 */	stw r3, 0x10(r1)
/* 802CA29C 002C001C  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802CA2A0 002C0020  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA2A4 002C0024  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802CA2A8 002C0028  7D 89 03 A6 */	mtctr r12
/* 802CA2AC 002C002C  4E 80 04 21 */	bctrl
/* 802CA2B0 002C0030  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CA2B4 002C0034  BB 6A FF EC */	lmw r27, -0x14(r10)
/* 802CA2B8 002C0038  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802CA2BC 002C003C  7C 08 03 A6 */	mtlr r0
/* 802CA2C0 002C0040  7D 41 53 78 */	mr r1, r10
/* 802CA2C4 002C0044  4E 80 00 20 */	blr
.endfn fn_802CA234
