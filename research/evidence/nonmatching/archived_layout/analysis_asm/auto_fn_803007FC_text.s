.include "macros.inc"
.file "auto_fn_803007FC_text"

# 0x8000875C..0x80008764 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000875C | size: 0x8
.obj "@etb_8000875C", local
.hidden "@etb_8000875C"
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
.endobj "@etb_8000875C"

# 0x8000B65C..0x8000B668 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B65C | size: 0xC
.obj "@eti_8000B65C", local
.hidden "@eti_8000B65C"
	.4byte fn_803007FC
	.4byte 0x000000C0
	.4byte "@etb_8000875C"
.endobj "@eti_8000B65C"

# 0x803007FC..0x803008BC | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x803007FC | size: 0xC0
.fn fn_803007FC, global
/* 803007FC 002F657C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80300800 002F6580  7C 08 02 A6 */	mflr r0
/* 80300804 002F6584  3D 80 80 30 */	lis r12, fn_803009A4@ha
/* 80300808 002F6588  3D 60 80 30 */	lis r11, fn_80300B30@ha
/* 8030080C 002F658C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80300810 002F6590  3D 40 80 30 */	lis r10, fn_80300BAC@ha
/* 80300814 002F6594  3D 20 80 30 */	lis r9, fn_80300BE8@ha
/* 80300818 002F6598  3D 00 80 30 */	lis r8, fn_80300C30@ha
/* 8030081C 002F659C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80300820 002F65A0  3F E0 80 30 */	lis r31, fn_80300C7C@ha
/* 80300824 002F65A4  3C E0 80 30 */	lis r7, fn_80300C6C@ha
/* 80300828 002F65A8  7C A6 2B 78 */	mr r6, r5
/* 8030082C 002F65AC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80300830 002F65B0  3F C0 80 30 */	lis r30, fn_803008BC@ha
/* 80300834 002F65B4  7C 85 23 78 */	mr r5, r4
/* 80300838 002F65B8  3B FF 0C 7C */	addi r31, r31, fn_80300C7C@l
/* 8030083C 002F65BC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80300840 002F65C0  3B A0 00 00 */	li r29, 0x0
/* 80300844 002F65C4  3B DE 08 BC */	addi r30, r30, fn_803008BC@l
/* 80300848 002F65C8  39 8C 09 A4 */	addi r12, r12, fn_803009A4@l
/* 8030084C 002F65CC  39 6B 0B 30 */	addi r11, r11, fn_80300B30@l
/* 80300850 002F65D0  39 4A 0B AC */	addi r10, r10, fn_80300BAC@l
/* 80300854 002F65D4  39 29 0B E8 */	addi r9, r9, fn_80300BE8@l
/* 80300858 002F65D8  39 08 0C 30 */	addi r8, r8, fn_80300C30@l
/* 8030085C 002F65DC  38 E7 0C 6C */	addi r7, r7, fn_80300C6C@l
/* 80300860 002F65E0  38 00 00 01 */	li r0, 0x1
/* 80300864 002F65E4  93 A1 00 20 */	stw r29, 0x20(r1)
/* 80300868 002F65E8  38 81 00 08 */	addi r4, r1, 0x8
/* 8030086C 002F65EC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80300870 002F65F0  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80300874 002F65F4  9B A1 00 35 */	stb r29, 0x35(r1)
/* 80300878 002F65F8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8030087C 002F65FC  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80300880 002F6600  91 81 00 2C */	stw r12, 0x2c(r1)
/* 80300884 002F6604  91 61 00 10 */	stw r11, 0x10(r1)
/* 80300888 002F6608  91 41 00 14 */	stw r10, 0x14(r1)
/* 8030088C 002F660C  91 21 00 18 */	stw r9, 0x18(r1)
/* 80300890 002F6610  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80300894 002F6614  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80300898 002F6618  98 01 00 34 */	stb r0, 0x34(r1)
/* 8030089C 002F661C  4B FC B9 79 */	bl fn_802CC214
/* 803008A0 002F6620  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803008A4 002F6624  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803008A8 002F6628  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803008AC 002F662C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803008B0 002F6630  7C 08 03 A6 */	mtlr r0
/* 803008B4 002F6634  38 21 00 50 */	addi r1, r1, 0x50
/* 803008B8 002F6638  4E 80 00 20 */	blr
.endfn fn_803007FC
