.include "macros.inc"
.file "auto_fn_802FB2E8_text"

# 0x80008664..0x8000866C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008664 | size: 0x8
.obj "@etb_80008664", local
.hidden "@etb_80008664"
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
.endobj "@etb_80008664"

# 0x8000B4E8..0x8000B4F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B4E8 | size: 0xC
.obj "@eti_8000B4E8", local
.hidden "@eti_8000B4E8"
	.4byte fn_802FB2E8
	.4byte 0x0000003C
	.4byte "@etb_80008664"
.endobj "@eti_8000B4E8"

# 0x802FB2E8..0x802FB324 | size: 0x3C
.text
.balign 4

# .text:0x0 | 0x802FB2E8 | size: 0x3C
.fn fn_802FB2E8, global
/* 802FB2E8 002F1068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB2EC 002F106C  7C 08 02 A6 */	mflr r0
/* 802FB2F0 002F1070  2C 05 00 00 */	cmpwi r5, 0x0
/* 802FB2F4 002F1074  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB2F8 002F1078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB2FC 002F107C  7C BF 2B 78 */	mr r31, r5
/* 802FB300 002F1080  41 82 00 0C */	beq .L_802FB30C
/* 802FB304 002F1084  7F E3 FB 78 */	mr r3, r31
/* 802FB308 002F1088  4B FA 6A 81 */	bl fn_802A1D88
.L_802FB30C:
/* 802FB30C 002F108C  38 7F 00 50 */	addi r3, r31, 0x50
/* 802FB310 002F1090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB314 002F1094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB318 002F1098  7C 08 03 A6 */	mtlr r0
/* 802FB31C 002F109C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB320 002F10A0  4E 80 00 20 */	blr
.endfn fn_802FB2E8
