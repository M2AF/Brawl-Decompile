.include "macros.inc"
.file "auto_fn_802CD8B8_text"

# 0x800082E0..0x800082E8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082E0 | size: 0x8
.obj "@etb_800082E0", local
.hidden "@etb_800082E0"
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
.endobj "@etb_800082E0"

# 0x8000AFD8..0x8000AFE4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFD8 | size: 0xC
.obj "@eti_8000AFD8", local
.hidden "@eti_8000AFD8"
	.4byte fn_802CD8B8
	.4byte 0x0000005C
	.4byte "@etb_800082E0"
.endobj "@eti_8000AFD8"

# 0x802CD8B8..0x802CD914 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD8B8 | size: 0x5C
.fn fn_802CD8B8, global
/* 802CD8B8 002C3638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD8BC 002C363C  7C 08 02 A6 */	mflr r0
/* 802CD8C0 002C3640  2C 03 00 00 */	cmpwi r3, 0x0
/* 802CD8C4 002C3644  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD8C8 002C3648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD8CC 002C364C  7C 7F 1B 78 */	mr r31, r3
/* 802CD8D0 002C3650  41 82 00 2C */	beq .L_802CD8FC
/* 802CD8D4 002C3654  2C 04 00 00 */	cmpwi r4, 0x0
/* 802CD8D8 002C3658  40 81 00 24 */	ble .L_802CD8FC
/* 802CD8DC 002C365C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802CD8E0 002C3660  7F E4 FB 78 */	mr r4, r31
/* 802CD8E4 002C3664  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802CD8E8 002C3668  38 C0 00 25 */	li r6, 0x25
/* 802CD8EC 002C366C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CD8F0 002C3670  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802CD8F4 002C3674  7D 89 03 A6 */	mtctr r12
/* 802CD8F8 002C3678  4E 80 04 21 */	bctrl
.L_802CD8FC:
/* 802CD8FC 002C367C  7F E3 FB 78 */	mr r3, r31
/* 802CD900 002C3680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD904 002C3684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD908 002C3688  7C 08 03 A6 */	mtlr r0
/* 802CD90C 002C368C  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD910 002C3690  4E 80 00 20 */	blr
.endfn fn_802CD8B8
