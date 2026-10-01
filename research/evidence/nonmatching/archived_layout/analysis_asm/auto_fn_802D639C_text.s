.include "macros.inc"
.file "auto_fn_802D639C_text"

# 0x800085FC..0x80008604 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800085FC | size: 0x8
.obj "@etb_800085FC", local
.hidden "@etb_800085FC"
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
.endobj "@etb_800085FC"

# 0x8000B44C..0x8000B458 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B44C | size: 0xC
.obj "@eti_8000B44C", local
.hidden "@eti_8000B44C"
	.4byte fn_802D639C
	.4byte 0x00000064
	.4byte "@etb_800085FC"
.endobj "@eti_8000B44C"

# 0x802D639C..0x802D6400 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x802D639C | size: 0x64
.fn fn_802D639C, global
/* 802D639C 002CC11C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D63A0 002CC120  7C 08 02 A6 */	mflr r0
/* 802D63A4 002CC124  7C 66 1B 78 */	mr r6, r3
/* 802D63A8 002CC128  38 A0 00 01 */	li r5, 0x1
/* 802D63AC 002CC12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D63B0 002CC130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D63B4 002CC134  7C 9F 23 78 */	mr r31, r4
/* 802D63B8 002CC138  3C 80 80 41 */	lis r4, lbl_80410F60@ha
/* 802D63BC 002CC13C  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D63C0 002CC140  38 84 0F 60 */	addi r4, r4, lbl_80410F60@l
/* 802D63C4 002CC144  7F E3 FB 78 */	mr r3, r31
/* 802D63C8 002CC148  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D63CC 002CC14C  38 84 00 0E */	addi r4, r4, 0xe
/* 802D63D0 002CC150  7D 89 03 A6 */	mtctr r12
/* 802D63D4 002CC154  4E 80 04 21 */	bctrl
/* 802D63D8 002CC158  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D63DC 002CC15C  7F E3 FB 78 */	mr r3, r31
/* 802D63E0 002CC160  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D63E4 002CC164  7D 89 03 A6 */	mtctr r12
/* 802D63E8 002CC168  4E 80 04 21 */	bctrl
/* 802D63EC 002CC16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D63F0 002CC170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D63F4 002CC174  7C 08 03 A6 */	mtlr r0
/* 802D63F8 002CC178  38 21 00 10 */	addi r1, r1, 0x10
/* 802D63FC 002CC17C  4E 80 00 20 */	blr
.endfn fn_802D639C
