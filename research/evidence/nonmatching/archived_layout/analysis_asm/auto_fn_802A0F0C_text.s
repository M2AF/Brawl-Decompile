.include "macros.inc"
.file "auto_fn_802A0F0C_text"

# 0x80006824..0x8000682C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006824 | size: 0x8
.obj "@etb_80006824", local
.hidden "@etb_80006824"
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
.endobj "@etb_80006824"

# 0x80009C1C..0x80009C28 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C1C | size: 0xC
.obj "@eti_80009C1C", local
.hidden "@eti_80009C1C"
	.4byte fn_802A0F0C
	.4byte 0x0000005C
	.4byte "@etb_80006824"
.endobj "@eti_80009C1C"

# 0x802A0F0C..0x802A0F68 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A0F0C | size: 0x5C
.fn fn_802A0F0C, global
/* 802A0F0C 00296C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0F10 00296C90  7C 08 02 A6 */	mflr r0
/* 802A0F14 00296C94  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A0F18 00296C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0F1C 00296C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0F20 00296CA0  7C 7F 1B 78 */	mr r31, r3
/* 802A0F24 00296CA4  41 82 00 2C */	beq .L_802A0F50
/* 802A0F28 00296CA8  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A0F2C 00296CAC  40 81 00 24 */	ble .L_802A0F50
/* 802A0F30 00296CB0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A0F34 00296CB4  7F E4 FB 78 */	mr r4, r31
/* 802A0F38 00296CB8  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802A0F3C 00296CBC  38 C0 00 1D */	li r6, 0x1d
/* 802A0F40 00296CC0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A0F44 00296CC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A0F48 00296CC8  7D 89 03 A6 */	mtctr r12
/* 802A0F4C 00296CCC  4E 80 04 21 */	bctrl
.L_802A0F50:
/* 802A0F50 00296CD0  7F E3 FB 78 */	mr r3, r31
/* 802A0F54 00296CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0F58 00296CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0F5C 00296CDC  7C 08 03 A6 */	mtlr r0
/* 802A0F60 00296CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0F64 00296CE4  4E 80 00 20 */	blr
.endfn fn_802A0F0C
