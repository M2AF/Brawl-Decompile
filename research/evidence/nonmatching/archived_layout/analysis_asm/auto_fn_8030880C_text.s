.include "macros.inc"
.file "auto_fn_8030880C_text"

# 0x80008864..0x8000886C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008864 | size: 0x8
.obj "@etb_80008864", local
.hidden "@etb_80008864"
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
.endobj "@etb_80008864"

# 0x8000B7D0..0x8000B7DC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B7D0 | size: 0xC
.obj "@eti_8000B7D0", local
.hidden "@eti_8000B7D0"
	.4byte fn_8030880C
	.4byte 0x00000088
	.4byte "@etb_80008864"
.endobj "@eti_8000B7D0"

# 0x8030880C..0x80308894 | size: 0x88
.text
.balign 4

# .text:0x0 | 0x8030880C | size: 0x88
.fn fn_8030880C, global
/* 8030880C 002FE58C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80308810 002FE590  7C 08 02 A6 */	mflr r0
/* 80308814 002FE594  90 01 00 24 */	stw r0, 0x24(r1)
/* 80308818 002FE598  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030881C 002FE59C  7C BF 2B 78 */	mr r31, r5
/* 80308820 002FE5A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80308824 002FE5A4  7C 9E 23 78 */	mr r30, r4
/* 80308828 002FE5A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8030882C 002FE5AC  7C 7D 1B 78 */	mr r29, r3
/* 80308830 002FE5B0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 80308834 002FE5B4  80 65 00 04 */	lwz r3, 0x4(r5)
/* 80308838 002FE5B8  54 00 00 BE */	clrlwi r0, r0, 2
/* 8030883C 002FE5BC  7C 03 00 00 */	cmpw r3, r0
/* 80308840 002FE5C0  40 82 00 10 */	bne .L_80308850
/* 80308844 002FE5C4  7F E3 FB 78 */	mr r3, r31
/* 80308848 002FE5C8  38 80 00 08 */	li r4, 0x8
/* 8030884C 002FE5CC  4B F7 45 F1 */	bl fn_8027CE3C
.L_80308850:
/* 80308850 002FE5D0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 80308854 002FE5D4  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 80308858 002FE5D8  38 64 00 01 */	addi r3, r4, 0x1
/* 8030885C 002FE5DC  54 80 18 38 */	slwi r0, r4, 3
/* 80308860 002FE5E0  90 7F 00 04 */	stw r3, 0x4(r31)
/* 80308864 002FE5E4  7C 65 02 14 */	add r3, r5, r0
/* 80308868 002FE5E8  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8030886C 002FE5EC  90 03 00 00 */	stw r0, 0x0(r3)
/* 80308870 002FE5F0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80308874 002FE5F4  90 03 00 04 */	stw r0, 0x4(r3)
/* 80308878 002FE5F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8030887C 002FE5FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80308880 002FE600  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80308884 002FE604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80308888 002FE608  7C 08 03 A6 */	mtlr r0
/* 8030888C 002FE60C  38 21 00 20 */	addi r1, r1, 0x20
/* 80308890 002FE610  4E 80 00 20 */	blr
.endfn fn_8030880C
