.include "macros.inc"
.file "auto_fn_8030891C_text"

# 0x80008874..0x8000887C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008874 | size: 0x8
.obj "@etb_80008874", local
.hidden "@etb_80008874"
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
.endobj "@etb_80008874"

# 0x8000B7E8..0x8000B7F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B7E8 | size: 0xC
.obj "@eti_8000B7E8", local
.hidden "@eti_8000B7E8"
	.4byte fn_8030891C
	.4byte 0x000000DC
	.4byte "@etb_80008874"
.endobj "@eti_8000B7E8"

# 0x8030891C..0x803089F8 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x8030891C | size: 0xDC
.fn fn_8030891C, global
/* 8030891C 002FE69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80308920 002FE6A0  7C 08 02 A6 */	mflr r0
/* 80308924 002FE6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80308928 002FE6A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030892C 002FE6AC  7C DF 33 78 */	mr r31, r6
/* 80308930 002FE6B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80308934 002FE6B4  7C FE 3B 78 */	mr r30, r7
/* 80308938 002FE6B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8030893C 002FE6BC  7C 9D 23 78 */	mr r29, r4
/* 80308940 002FE6C0  81 06 00 0C */	lwz r8, 0xc(r6)
/* 80308944 002FE6C4  55 00 07 FF */	clrlwi. r0, r8, 31
/* 80308948 002FE6C8  40 82 00 50 */	bne .L_80308998
/* 8030894C 002FE6CC  80 07 00 08 */	lwz r0, 0x8(r7)
/* 80308950 002FE6D0  80 67 00 04 */	lwz r3, 0x4(r7)
/* 80308954 002FE6D4  54 00 00 BE */	clrlwi r0, r0, 2
/* 80308958 002FE6D8  7C 03 00 00 */	cmpw r3, r0
/* 8030895C 002FE6DC  40 82 00 10 */	bne .L_8030896C
/* 80308960 002FE6E0  7F C3 F3 78 */	mr r3, r30
/* 80308964 002FE6E4  38 80 00 08 */	li r4, 0x8
/* 80308968 002FE6E8  4B F7 44 D5 */	bl fn_8027CE3C
.L_8030896C:
/* 8030896C 002FE6EC  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 80308970 002FE6F0  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 80308974 002FE6F4  38 64 00 01 */	addi r3, r4, 0x1
/* 80308978 002FE6F8  54 80 18 38 */	slwi r0, r4, 3
/* 8030897C 002FE6FC  90 7E 00 04 */	stw r3, 0x4(r30)
/* 80308980 002FE700  7C 65 02 14 */	add r3, r5, r0
/* 80308984 002FE704  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80308988 002FE708  90 03 00 00 */	stw r0, 0x0(r3)
/* 8030898C 002FE70C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80308990 002FE710  90 03 00 04 */	stw r0, 0x4(r3)
/* 80308994 002FE714  48 00 00 48 */	b .L_803089DC
.L_80308998:
/* 80308998 002FE718  55 00 00 3C */	clrrwi r0, r8, 1
/* 8030899C 002FE71C  54 BF 04 3E */	clrlwi r31, r5, 16
/* 803089A0 002FE720  7F C3 02 14 */	add r30, r3, r0
/* 803089A4 002FE724  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803089A8 002FE728  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 803089AC 002FE72C  54 00 00 BE */	clrlwi r0, r0, 2
/* 803089B0 002FE730  7C 03 00 00 */	cmpw r3, r0
/* 803089B4 002FE734  40 82 00 10 */	bne .L_803089C4
/* 803089B8 002FE738  38 7E 00 04 */	addi r3, r30, 0x4
/* 803089BC 002FE73C  38 80 00 02 */	li r4, 0x2
/* 803089C0 002FE740  4B F7 44 7D */	bl fn_8027CE3C
.L_803089C4:
/* 803089C4 002FE744  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 803089C8 002FE748  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 803089CC 002FE74C  54 60 08 3C */	slwi r0, r3, 1
/* 803089D0 002FE750  38 63 00 01 */	addi r3, r3, 0x1
/* 803089D4 002FE754  7F E4 03 2E */	sthx r31, r4, r0
/* 803089D8 002FE758  90 7E 00 08 */	stw r3, 0x8(r30)
.L_803089DC:
/* 803089DC 002FE75C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803089E0 002FE760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803089E4 002FE764  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803089E8 002FE768  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803089EC 002FE76C  7C 08 03 A6 */	mtlr r0
/* 803089F0 002FE770  38 21 00 20 */	addi r1, r1, 0x20
/* 803089F4 002FE774  4E 80 00 20 */	blr
.endfn fn_8030891C
