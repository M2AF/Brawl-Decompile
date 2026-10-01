.include "macros.inc"
.file "auto_dtor_802A2948_text"

# 0x800068F0..0x800068F8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068F0 | size: 0x8
.obj "@etb_800068F0", local
.hidden "@etb_800068F0"
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
.endobj "@etb_800068F0"

# 0x80009CD0..0x80009CDC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009CD0 | size: 0xC
.obj "@eti_80009CD0", local
.hidden "@eti_80009CD0"
	.4byte dtor_802A2948
	.4byte 0x0000005C
	.4byte "@etb_800068F0"
.endobj "@eti_80009CD0"

# 0x802A2948..0x802A29A4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A2948 | size: 0x5C
.fn dtor_802A2948, global
/* 802A2948 002986C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A294C 002986CC  7C 08 02 A6 */	mflr r0
/* 802A2950 002986D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A2954 002986D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2958 002986D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A295C 002986DC  7C 7F 1B 78 */	mr r31, r3
/* 802A2960 002986E0  41 82 00 2C */	beq .L_802A298C
/* 802A2964 002986E4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A2968 002986E8  40 81 00 24 */	ble .L_802A298C
/* 802A296C 002986EC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A2970 002986F0  7F E4 FB 78 */	mr r4, r31
/* 802A2974 002986F4  38 A0 00 30 */	li r5, 0x30
/* 802A2978 002986F8  38 C0 00 1D */	li r6, 0x1d
/* 802A297C 002986FC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A2980 00298700  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A2984 00298704  7D 89 03 A6 */	mtctr r12
/* 802A2988 00298708  4E 80 04 21 */	bctrl
.L_802A298C:
/* 802A298C 0029870C  7F E3 FB 78 */	mr r3, r31
/* 802A2990 00298710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2994 00298714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2998 00298718  7C 08 03 A6 */	mtlr r0
/* 802A299C 0029871C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A29A0 00298720  4E 80 00 20 */	blr
.endfn dtor_802A2948
