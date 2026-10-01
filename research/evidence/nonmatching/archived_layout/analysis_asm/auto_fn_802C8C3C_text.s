.include "macros.inc"
.file "auto_fn_802C8C3C_text"

# 0x80008018..0x80008020 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008018 | size: 0x8
.obj "@etb_80008018", local
.hidden "@etb_80008018"
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
.endobj "@etb_80008018"

# 0x8000AD08..0x8000AD14 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AD08 | size: 0xC
.obj "@eti_8000AD08", local
.hidden "@eti_8000AD08"
	.4byte fn_802C8C3C
	.4byte 0x0000005C
	.4byte "@etb_80008018"
.endobj "@eti_8000AD08"

# 0x802C8C3C..0x802C8C98 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C8C3C | size: 0x5C
.fn fn_802C8C3C, global
/* 802C8C3C 002BE9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8C40 002BE9C0  7C 08 02 A6 */	mflr r0
/* 802C8C44 002BE9C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C8C48 002BE9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8C4C 002BE9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C8C50 002BE9D0  7C 7F 1B 78 */	mr r31, r3
/* 802C8C54 002BE9D4  41 82 00 2C */	beq .L_802C8C80
/* 802C8C58 002BE9D8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C8C5C 002BE9DC  40 81 00 24 */	ble .L_802C8C80
/* 802C8C60 002BE9E0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C8C64 002BE9E4  7F E4 FB 78 */	mr r4, r31
/* 802C8C68 002BE9E8  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C8C6C 002BE9EC  38 C0 00 1D */	li r6, 0x1d
/* 802C8C70 002BE9F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C8C74 002BE9F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C8C78 002BE9F8  7D 89 03 A6 */	mtctr r12
/* 802C8C7C 002BE9FC  4E 80 04 21 */	bctrl
.L_802C8C80:
/* 802C8C80 002BEA00  7F E3 FB 78 */	mr r3, r31
/* 802C8C84 002BEA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C8C88 002BEA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C8C8C 002BEA0C  7C 08 03 A6 */	mtlr r0
/* 802C8C90 002BEA10  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8C94 002BEA14  4E 80 00 20 */	blr
.endfn fn_802C8C3C
