.include "macros.inc"
.file "auto_fn_802AF698_text"

# 0x80007150..0x80007158 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007150 | size: 0x8
.obj "@etb_80007150", local
.hidden "@etb_80007150"
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
.endobj "@etb_80007150"

# 0x8000A2AC..0x8000A2B8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A2AC | size: 0xC
.obj "@eti_8000A2AC", local
.hidden "@eti_8000A2AC"
	.4byte fn_802AF698
	.4byte 0x000000CC
	.4byte "@etb_80007150"
.endobj "@eti_8000A2AC"

# 0x802AF698..0x802AF764 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x802AF698 | size: 0xCC
.fn fn_802AF698, global
/* 802AF698 002A5418  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802AF69C 002A541C  7C 08 02 A6 */	mflr r0
/* 802AF6A0 002A5420  3C 80 80 2B */	lis r4, fn_802AF4C0@ha
/* 802AF6A4 002A5424  3C A0 80 2B */	lis r5, fn_802B1454@ha
/* 802AF6A8 002A5428  90 01 00 44 */	stw r0, 0x44(r1)
/* 802AF6AC 002A542C  3D 00 80 2B */	lis r8, fn_802B14E4@ha
/* 802AF6B0 002A5430  3C E0 80 2B */	lis r7, fn_802B152C@ha
/* 802AF6B4 002A5434  38 84 F4 C0 */	addi r4, r4, fn_802AF4C0@l
/* 802AF6B8 002A5438  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802AF6BC 002A543C  3B E0 00 01 */	li r31, 0x1
/* 802AF6C0 002A5440  38 A5 14 54 */	addi r5, r5, fn_802B1454@l
/* 802AF6C4 002A5444  39 08 14 E4 */	addi r8, r8, fn_802B14E4@l
/* 802AF6C8 002A5448  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802AF6CC 002A544C  38 E7 15 2C */	addi r7, r7, fn_802B152C@l
/* 802AF6D0 002A5450  7C 7E 1B 78 */	mr r30, r3
/* 802AF6D4 002A5454  38 C0 00 01 */	li r6, 0x1
/* 802AF6D8 002A5458  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802AF6DC 002A545C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802AF6E0 002A5460  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802AF6E4 002A5464  38 A0 00 0D */	li r5, 0xd
/* 802AF6E8 002A5468  91 01 00 24 */	stw r8, 0x24(r1)
/* 802AF6EC 002A546C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802AF6F0 002A5470  9B E1 00 2C */	stb r31, 0x2c(r1)
/* 802AF6F4 002A5474  9B E1 00 2D */	stb r31, 0x2d(r1)
/* 802AF6F8 002A5478  48 01 C9 F5 */	bl fn_802CC0EC
/* 802AF6FC 002A547C  3C 60 80 2B */	lis r3, fn_802AF3F0@ha
/* 802AF700 002A5480  3C 80 80 2B */	lis r4, fn_802AFB74@ha
/* 802AF704 002A5484  3D 00 80 2B */	lis r8, fn_802AF7D0@ha
/* 802AF708 002A5488  3C E0 80 2B */	lis r7, fn_802AFD44@ha
/* 802AF70C 002A548C  38 63 F3 F0 */	addi r3, r3, fn_802AF3F0@l
/* 802AF710 002A5490  38 84 FB 74 */	addi r4, r4, fn_802AFB74@l
/* 802AF714 002A5494  39 08 F7 D0 */	addi r8, r8, fn_802AF7D0@l
/* 802AF718 002A5498  38 E7 FD 44 */	addi r7, r7, fn_802AFD44@l
/* 802AF71C 002A549C  38 00 00 00 */	li r0, 0x0
/* 802AF720 002A54A0  90 61 00 08 */	stw r3, 0x8(r1)
/* 802AF724 002A54A4  7F C3 F3 78 */	mr r3, r30
/* 802AF728 002A54A8  38 A0 00 01 */	li r5, 0x1
/* 802AF72C 002A54AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 802AF730 002A54B0  38 81 00 08 */	addi r4, r1, 0x8
/* 802AF734 002A54B4  38 C0 00 0D */	li r6, 0xd
/* 802AF738 002A54B8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802AF73C 002A54BC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802AF740 002A54C0  98 01 00 18 */	stb r0, 0x18(r1)
/* 802AF744 002A54C4  9B E1 00 19 */	stb r31, 0x19(r1)
/* 802AF748 002A54C8  48 01 C9 A5 */	bl fn_802CC0EC
/* 802AF74C 002A54CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802AF750 002A54D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802AF754 002A54D4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802AF758 002A54D8  7C 08 03 A6 */	mtlr r0
/* 802AF75C 002A54DC  38 21 00 40 */	addi r1, r1, 0x40
/* 802AF760 002A54E0  4E 80 00 20 */	blr
.endfn fn_802AF698
