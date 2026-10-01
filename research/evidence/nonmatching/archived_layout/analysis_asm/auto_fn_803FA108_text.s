.include "macros.inc"
.file "auto_fn_803FA108_text"

# 0x800096D4..0x800096DC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800096D4 | size: 0x8
.obj "@etb_800096D4", local
.hidden "@etb_800096D4"
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
.endobj "@etb_800096D4"

# 0x8000C784..0x8000C790 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C784 | size: 0xC
.obj "@eti_8000C784", local
.hidden "@eti_8000C784"
	.4byte fn_803FA108
	.4byte 0x000000C8
	.4byte "@etb_800096D4"
.endobj "@eti_8000C784"

# 0x803FA108..0x803FA1D0 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x803FA108 | size: 0xC8
.fn fn_803FA108, global
/* 803FA108 003EFE88  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803FA10C 003EFE8C  7C 08 02 A6 */	mflr r0
/* 803FA110 003EFE90  90 01 00 94 */	stw r0, 0x94(r1)
/* 803FA114 003EFE94  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 803FA118 003EFE98  40 86 00 24 */	bne cr1, .L_803FA13C
/* 803FA11C 003EFE9C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803FA120 003EFEA0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803FA124 003EFEA4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803FA128 003EFEA8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803FA12C 003EFEAC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803FA130 003EFEB0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803FA134 003EFEB4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803FA138 003EFEB8  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803FA13C:
/* 803FA13C 003EFEBC  39 61 00 98 */	addi r11, r1, 0x98
/* 803FA140 003EFEC0  38 01 00 08 */	addi r0, r1, 0x8
/* 803FA144 003EFEC4  3D 80 02 00 */	lis r12, 0x200
/* 803FA148 003EFEC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803FA14C 003EFECC  90 61 00 08 */	stw r3, 0x8(r1)
/* 803FA150 003EFED0  3B E1 00 70 */	addi r31, r1, 0x70
/* 803FA154 003EFED4  90 81 00 0C */	stw r4, 0xc(r1)
/* 803FA158 003EFED8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803FA15C 003EFEDC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803FA160 003EFEE0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803FA164 003EFEE4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803FA168 003EFEE8  91 21 00 20 */	stw r9, 0x20(r1)
/* 803FA16C 003EFEEC  91 41 00 24 */	stw r10, 0x24(r1)
/* 803FA170 003EFEF0  91 81 00 70 */	stw r12, 0x70(r1)
/* 803FA174 003EFEF4  91 61 00 74 */	stw r11, 0x74(r1)
/* 803FA178 003EFEF8  90 01 00 78 */	stw r0, 0x78(r1)
/* 803FA17C 003EFEFC  90 61 00 68 */	stw r3, 0x68(r1)
/* 803FA180 003EFF00  41 82 00 10 */	beq .L_803FA190
/* 803FA184 003EFF04  88 03 00 00 */	lbz r0, 0x0(r3)
/* 803FA188 003EFF08  7C 00 07 75 */	extsb. r0, r0
/* 803FA18C 003EFF0C  40 82 00 0C */	bne .L_803FA198
.L_803FA190:
/* 803FA190 003EFF10  38 60 FF FF */	li r3, -0x1
/* 803FA194 003EFF14  48 00 00 28 */	b .L_803FA1BC
.L_803FA198:
/* 803FA198 003EFF18  38 00 00 00 */	li r0, 0x0
/* 803FA19C 003EFF1C  3C 60 80 40 */	lis r3, fn_803FA078@ha
/* 803FA1A0 003EFF20  90 01 00 6C */	stw r0, 0x6c(r1)
/* 803FA1A4 003EFF24  7C 85 23 78 */	mr r5, r4
/* 803FA1A8 003EFF28  7F E6 FB 78 */	mr r6, r31
/* 803FA1AC 003EFF2C  38 63 A0 78 */	addi r3, r3, fn_803FA078@l
/* 803FA1B0 003EFF30  38 81 00 68 */	addi r4, r1, 0x68
/* 803FA1B4 003EFF34  38 E0 00 00 */	li r7, 0x0
/* 803FA1B8 003EFF38  4B FF F1 61 */	bl fn_803F9318
.L_803FA1BC:
/* 803FA1BC 003EFF3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803FA1C0 003EFF40  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 803FA1C4 003EFF44  7C 08 03 A6 */	mtlr r0
/* 803FA1C8 003EFF48  38 21 00 90 */	addi r1, r1, 0x90
/* 803FA1CC 003EFF4C  4E 80 00 20 */	blr
.endfn fn_803FA108
