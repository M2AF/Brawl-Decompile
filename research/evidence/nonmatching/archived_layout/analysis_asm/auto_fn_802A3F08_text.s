.include "macros.inc"
.file "auto_fn_802A3F08_text"

# 0x80006A68..0x80006A70 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A68 | size: 0x8
.obj "@etb_80006A68", local
.hidden "@etb_80006A68"
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
.endobj "@etb_80006A68"

# 0x80009DFC..0x80009E08 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009DFC | size: 0xC
.obj "@eti_80009DFC", local
.hidden "@eti_80009DFC"
	.4byte fn_802A3F08
	.4byte 0x00000078
	.4byte "@etb_80006A68"
.endobj "@eti_80009DFC"

# 0x802A3F08..0x802A3F80 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802A3F08 | size: 0x78
.fn fn_802A3F08, global
/* 802A3F08 00299C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3F0C 00299C8C  7C 08 02 A6 */	mflr r0
/* 802A3F10 00299C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3F14 00299C94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A3F18 00299C98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A3F1C 00299C9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A3F20 00299CA0  7C 9D 23 78 */	mr r29, r4
/* 802A3F24 00299CA4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A3F28 00299CA8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802A3F2C 00299CAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802A3F30 00299CB0  7F DF 02 14 */	add r30, r31, r0
/* 802A3F34 00299CB4  48 00 00 28 */	b .L_802A3F5C
.L_802A3F38:
/* 802A3F38 00299CB8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 802A3F3C 00299CBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3F40 00299CC0  41 82 00 18 */	beq .L_802A3F58
/* 802A3F44 00299CC4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3F48 00299CC8  7F A4 EB 78 */	mr r4, r29
/* 802A3F4C 00299CCC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802A3F50 00299CD0  7D 89 03 A6 */	mtctr r12
/* 802A3F54 00299CD4  4E 80 04 21 */	bctrl
.L_802A3F58:
/* 802A3F58 00299CD8  3B FF 00 0C */	addi r31, r31, 0xc
.L_802A3F5C:
/* 802A3F5C 00299CDC  7C 1F F0 40 */	cmplw r31, r30
/* 802A3F60 00299CE0  40 82 FF D8 */	bne .L_802A3F38
/* 802A3F64 00299CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A3F68 00299CE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A3F6C 00299CEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A3F70 00299CF0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A3F74 00299CF4  7C 08 03 A6 */	mtlr r0
/* 802A3F78 00299CF8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3F7C 00299CFC  4E 80 00 20 */	blr
.endfn fn_802A3F08
