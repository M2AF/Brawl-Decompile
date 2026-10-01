.include "macros.inc"
.file "auto_fn_802CD394_text"

# 0x800082A0..0x800082A8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082A0 | size: 0x8
.obj "@etb_800082A0", local
.hidden "@etb_800082A0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800082A0"

# 0x8000AF78..0x8000AF84 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AF78 | size: 0xC
.obj "@eti_8000AF78", local
.hidden "@eti_8000AF78"
	.4byte fn_802CD394
	.4byte 0x0000005C
	.4byte "@etb_800082A0"
.endobj "@eti_8000AF78"

# 0x802CD394..0x802CD3F0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD394 | size: 0x5C
.fn fn_802CD394, global
/* 802CD394 002C3114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD398 002C3118  7C 08 02 A6 */	mflr r0
/* 802CD39C 002C311C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD3A0 002C3120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CD3A4 002C3124  7C 9F 23 78 */	mr r31, r4
/* 802CD3A8 002C3128  7C C4 33 78 */	mr r4, r6
/* 802CD3AC 002C312C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802CD3B0 002C3130  7C 7E 1B 78 */	mr r30, r3
/* 802CD3B4 002C3134  7C A3 2B 78 */	mr r3, r5
/* 802CD3B8 002C3138  81 85 00 00 */	lwz r12, 0x0(r5)
/* 802CD3BC 002C313C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802CD3C0 002C3140  7D 89 03 A6 */	mtctr r12
/* 802CD3C4 002C3144  4E 80 04 21 */	bctrl
/* 802CD3C8 002C3148  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802CD3CC 002C314C  7C 65 1B 78 */	mr r5, r3
/* 802CD3D0 002C3150  7F C3 F3 78 */	mr r3, r30
/* 802CD3D4 002C3154  4B FF FD FD */	bl fn_802CD1D0
/* 802CD3D8 002C3158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD3DC 002C315C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CD3E0 002C3160  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802CD3E4 002C3164  7C 08 03 A6 */	mtlr r0
/* 802CD3E8 002C3168  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD3EC 002C316C  4E 80 00 20 */	blr
.endfn fn_802CD394
