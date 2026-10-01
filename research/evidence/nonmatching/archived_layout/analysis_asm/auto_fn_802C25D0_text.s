.include "macros.inc"
.file "auto_fn_802C25D0_text"

# 0x80007D20..0x80007D28 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D20 | size: 0x8
.obj "@etb_80007D20", local
.hidden "@etb_80007D20"
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
.endobj "@etb_80007D20"

# 0x8000AA98..0x8000AAA4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA98 | size: 0xC
.obj "@eti_8000AA98", local
.hidden "@eti_8000AA98"
	.4byte fn_802C25D0
	.4byte 0x00000068
	.4byte "@etb_80007D20"
.endobj "@eti_8000AA98"

# 0x802C25D0..0x802C2638 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802C25D0 | size: 0x68
.fn fn_802C25D0, global
/* 802C25D0 002B8350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C25D4 002B8354  7C 08 02 A6 */	mflr r0
/* 802C25D8 002B8358  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C25DC 002B835C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C25E0 002B8360  7C 7F 1B 78 */	mr r31, r3
/* 802C25E4 002B8364  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 802C25E8 002B8368  28 04 FF FF */	cmplwi r4, 0xffff
/* 802C25EC 002B836C  41 82 00 18 */	beq .L_802C2604
/* 802C25F0 002B8370  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C25F4 002B8374  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C25F8 002B8378  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C25FC 002B837C  7D 89 03 A6 */	mtctr r12
/* 802C2600 002B8380  4E 80 04 21 */	bctrl
.L_802C2604:
/* 802C2604 002B8384  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C2608 002B8388  41 82 00 1C */	beq .L_802C2624
/* 802C260C 002B838C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C2610 002B8390  7F E3 FB 78 */	mr r3, r31
/* 802C2614 002B8394  38 80 00 01 */	li r4, 0x1
/* 802C2618 002B8398  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C261C 002B839C  7D 89 03 A6 */	mtctr r12
/* 802C2620 002B83A0  4E 80 04 21 */	bctrl
.L_802C2624:
/* 802C2624 002B83A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C2628 002B83A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C262C 002B83AC  7C 08 03 A6 */	mtlr r0
/* 802C2630 002B83B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802C2634 002B83B4  4E 80 00 20 */	blr
.endfn fn_802C25D0
