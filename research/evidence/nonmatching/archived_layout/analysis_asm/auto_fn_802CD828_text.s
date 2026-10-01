.include "macros.inc"
.file "auto_fn_802CD828_text"

# 0x800082D8..0x800082E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800082D8 | size: 0x8
.obj "@etb_800082D8", local
.hidden "@etb_800082D8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800082D8"

# 0x8000AFCC..0x8000AFD8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AFCC | size: 0xC
.obj "@eti_8000AFCC", local
.hidden "@eti_8000AFCC"
	.4byte fn_802CD828
	.4byte 0x0000005C
	.4byte "@etb_800082D8"
.endobj "@eti_8000AFCC"

# 0x802CD828..0x802CD884 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802CD828 | size: 0x5C
.fn fn_802CD828, global
/* 802CD828 002C35A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CD82C 002C35AC  7C 08 02 A6 */	mflr r0
/* 802CD830 002C35B0  3C 60 80 53 */	lis r3, lbl_80532660@ha
/* 802CD834 002C35B4  3C 80 80 41 */	lis r4, lbl_80410250@ha
/* 802CD838 002C35B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CD83C 002C35BC  38 00 00 00 */	li r0, 0x0
/* 802CD840 002C35C0  3C A0 80 53 */	lis r5, lbl_80532628@ha
/* 802CD844 002C35C4  38 63 26 60 */	addi r3, r3, lbl_80532660@l
/* 802CD848 002C35C8  90 01 00 08 */	stw r0, 0x8(r1)
/* 802CD84C 002C35CC  38 84 02 50 */	addi r4, r4, lbl_80410250@l
/* 802CD850 002C35D0  38 A5 26 28 */	addi r5, r5, lbl_80532628@l
/* 802CD854 002C35D4  38 C0 00 18 */	li r6, 0x18
/* 802CD858 002C35D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CD85C 002C35DC  38 E0 00 00 */	li r7, 0x0
/* 802CD860 002C35E0  39 00 00 00 */	li r8, 0x0
/* 802CD864 002C35E4  39 20 00 00 */	li r9, 0x0
/* 802CD868 002C35E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CD86C 002C35EC  39 40 00 00 */	li r10, 0x0
/* 802CD870 002C35F0  4B FA EF 99 */	bl fn_8027C808
/* 802CD874 002C35F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CD878 002C35F8  7C 08 03 A6 */	mtlr r0
/* 802CD87C 002C35FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CD880 002C3600  4E 80 00 20 */	blr
.endfn fn_802CD828

# 0x80406648..0x8040664C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802CD828
