.include "macros.inc"
.file "auto_fn_80308894_text"

# 0x8000886C..0x80008874 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000886C | size: 0x8
.obj "@etb_8000886C", local
.hidden "@etb_8000886C"
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
.endobj "@etb_8000886C"

# 0x8000B7DC..0x8000B7E8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B7DC | size: 0xC
.obj "@eti_8000B7DC", local
.hidden "@eti_8000B7DC"
	.4byte fn_80308894
	.4byte 0x00000088
	.4byte "@etb_8000886C"
.endobj "@eti_8000B7DC"

# 0x80308894..0x8030891C | size: 0x88
.text
.balign 4

# .text:0x0 | 0x80308894 | size: 0x88
.fn fn_80308894, global
/* 80308894 002FE614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80308898 002FE618  7C 08 02 A6 */	mflr r0
/* 8030889C 002FE61C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803088A0 002FE620  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803088A4 002FE624  7C BF 2B 78 */	mr r31, r5
/* 803088A8 002FE628  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803088AC 002FE62C  7C 9E 23 78 */	mr r30, r4
/* 803088B0 002FE630  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803088B4 002FE634  7C 7D 1B 78 */	mr r29, r3
/* 803088B8 002FE638  80 05 00 08 */	lwz r0, 0x8(r5)
/* 803088BC 002FE63C  80 65 00 04 */	lwz r3, 0x4(r5)
/* 803088C0 002FE640  54 00 00 BE */	clrlwi r0, r0, 2
/* 803088C4 002FE644  7C 03 00 00 */	cmpw r3, r0
/* 803088C8 002FE648  40 82 00 10 */	bne .L_803088D8
/* 803088CC 002FE64C  7F E3 FB 78 */	mr r3, r31
/* 803088D0 002FE650  38 80 00 08 */	li r4, 0x8
/* 803088D4 002FE654  4B F7 45 69 */	bl fn_8027CE3C
.L_803088D8:
/* 803088D8 002FE658  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 803088DC 002FE65C  80 BF 00 00 */	lwz r5, 0x0(r31)
/* 803088E0 002FE660  38 64 00 01 */	addi r3, r4, 0x1
/* 803088E4 002FE664  54 80 18 38 */	slwi r0, r4, 3
/* 803088E8 002FE668  90 7F 00 04 */	stw r3, 0x4(r31)
/* 803088EC 002FE66C  7C 65 02 14 */	add r3, r5, r0
/* 803088F0 002FE670  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803088F4 002FE674  90 03 00 00 */	stw r0, 0x0(r3)
/* 803088F8 002FE678  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803088FC 002FE67C  90 03 00 04 */	stw r0, 0x4(r3)
/* 80308900 002FE680  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80308904 002FE684  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80308908 002FE688  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8030890C 002FE68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80308910 002FE690  7C 08 03 A6 */	mtlr r0
/* 80308914 002FE694  38 21 00 20 */	addi r1, r1, 0x20
/* 80308918 002FE698  4E 80 00 20 */	blr
.endfn fn_80308894
