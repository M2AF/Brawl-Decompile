.include "macros.inc"
.file "auto_fn_80300B30_text"

# 0x80008774..0x8000877C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008774 | size: 0x8
.obj "@etb_80008774", local
.hidden "@etb_80008774"
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
.endobj "@etb_80008774"

# 0x8000B680..0x8000B68C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B680 | size: 0xC
.obj "@eti_8000B680", local
.hidden "@eti_8000B680"
	.4byte fn_80300B30
	.4byte 0x0000007C
	.4byte "@etb_80008774"
.endobj "@eti_8000B680"

# 0x80300B30..0x80300BAC | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x80300B30 | size: 0x7C
.fn fn_80300B30, global
/* 80300B30 002F68B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80300B34 002F68B4  7C 08 02 A6 */	mflr r0
/* 80300B38 002F68B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80300B3C 002F68BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80300B40 002F68C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80300B44 002F68C4  7C 9E 23 78 */	mr r30, r4
/* 80300B48 002F68C8  3B FE 00 0C */	addi r31, r30, 0xc
/* 80300B4C 002F68CC  7C A4 2B 78 */	mr r4, r5
/* 80300B50 002F68D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80300B54 002F68D4  7C 7D 1B 78 */	mr r29, r3
/* 80300B58 002F68D8  7F E3 FB 78 */	mr r3, r31
/* 80300B5C 002F68DC  48 01 77 B1 */	bl fn_8031830C
/* 80300B60 002F68E0  88 1F 00 02 */	lbz r0, 0x2(r31)
/* 80300B64 002F68E4  98 1D 00 02 */	stb r0, 0x2(r29)
/* 80300B68 002F68E8  88 7F 00 00 */	lbz r3, 0x0(r31)
/* 80300B6C 002F68EC  88 1F 00 01 */	lbz r0, 0x1(r31)
/* 80300B70 002F68F0  88 9F 00 02 */	lbz r4, 0x2(r31)
/* 80300B74 002F68F4  7C 03 02 14 */	add r0, r3, r0
/* 80300B78 002F68F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80300B7C 002F68FC  54 83 18 38 */	slwi r3, r4, 3
/* 80300B80 002F6900  54 00 08 3C */	slwi r0, r0, 1
/* 80300B84 002F6904  7C 63 02 14 */	add r3, r3, r0
/* 80300B88 002F6908  38 03 00 1F */	addi r0, r3, 0x1f
/* 80300B8C 002F690C  54 00 00 36 */	clrrwi r0, r0, 4
/* 80300B90 002F6910  7C 7E 02 14 */	add r3, r30, r0
/* 80300B94 002F6914  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80300B98 002F6918  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80300B9C 002F691C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80300BA0 002F6920  7C 08 03 A6 */	mtlr r0
/* 80300BA4 002F6924  38 21 00 20 */	addi r1, r1, 0x20
/* 80300BA8 002F6928  4E 80 00 20 */	blr
.endfn fn_80300B30
