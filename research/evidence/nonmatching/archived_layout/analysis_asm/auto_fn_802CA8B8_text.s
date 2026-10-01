.include "macros.inc"
.file "auto_fn_802CA8B8_text"

# 0x80008198..0x800081A0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008198 | size: 0x8
.obj "@etb_80008198", local
.hidden "@etb_80008198"
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
.endobj "@etb_80008198"

# 0x8000AE34..0x8000AE40 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AE34 | size: 0xC
.obj "@eti_8000AE34", local
.hidden "@eti_8000AE34"
	.4byte fn_802CA8B8
	.4byte 0x0000005C
	.4byte "@etb_80008198"
.endobj "@eti_8000AE34"

# 0x802CA8B8..0x802CA914 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CA8B8 | size: 0x5C
.fn fn_802CA8B8, global
/* 802CA8B8 002C0638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CA8BC 002C063C  7C 08 02 A6 */	mflr r0
/* 802CA8C0 002C0640  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CA8C4 002C0644  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CA8C8 002C0648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CA8CC 002C064C  7C 7F 1B 78 */	mr r31, r3
/* 802CA8D0 002C0650  41 82 00 2C */	beq .L_802CA8FC
/* 802CA8D4 002C0654  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CA8D8 002C0658  40 81 00 24 */	ble .L_802CA8FC
/* 802CA8DC 002C065C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CA8E0 002C0660  7F E4 FB 78 */	mr r4, r31
/* 802CA8E4 002C0664  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CA8E8 002C0668  38 C0 00 1D */	li r6, 0x1d
/* 802CA8EC 002C066C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CA8F0 002C0670  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CA8F4 002C0674  7D 89 03 A6 */	mtctr r12
/* 802CA8F8 002C0678  4E 80 04 21 */	bctrl
.L_802CA8FC:
/* 802CA8FC 002C067C  7F E3 FB 78 */	mr r3, r31
/* 802CA900 002C0680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CA904 002C0684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CA908 002C0688  7C 08 03 A6 */	mtlr r0
/* 802CA90C 002C068C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CA910 002C0690  4E 80 00 20 */	blr
.endfn fn_802CA8B8
