.include "macros.inc"
.file "auto_fn_803D4E0C_text"

# 0x8000943C..0x80009444 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000943C | size: 0x8
.obj "@etb_8000943C", local
.hidden "@etb_8000943C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8000943C"

# 0x8000C3F4..0x8000C400 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C3F4 | size: 0xC
.obj "@eti_8000C3F4", local
.hidden "@eti_8000C3F4"
	.4byte fn_803D4E0C
	.4byte 0x000001B8
	.4byte "@etb_8000943C"
.endobj "@eti_8000C3F4"

# 0x803D4E0C..0x803D4FC4 | size: 0x1B8
.text
.balign 4

# .text:0x0 | 0x803D4E0C | size: 0x1B8
.fn fn_803D4E0C, global
/* 803D4E0C 003CAB8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D4E10 003CAB90  7C 08 02 A6 */	mflr r0
/* 803D4E14 003CAB94  A0 A3 00 26 */	lhz r5, 0x26(r3)
/* 803D4E18 003CAB98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D4E1C 003CAB9C  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 803D4E20 003CABA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D4E24 003CABA4  7C 9F 23 78 */	mr r31, r4
/* 803D4E28 003CABA8  A1 63 00 22 */	lhz r11, 0x22(r3)
/* 803D4E2C 003CABAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D4E30 003CABB0  7C 7E 1B 78 */	mr r30, r3
/* 803D4E34 003CABB4  A1 23 00 28 */	lhz r9, 0x28(r3)
/* 803D4E38 003CABB8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D4E3C 003CABBC  A0 E3 00 2A */	lhz r7, 0x2a(r3)
/* 803D4E40 003CABC0  93 81 00 10 */	stw r28, 0x10(r1)
/* 803D4E44 003CABC4  A3 83 00 20 */	lhz r28, 0x20(r3)
/* 803D4E48 003CABC8  A1 84 00 00 */	lhz r12, 0x0(r4)
/* 803D4E4C 003CABCC  53 8C 04 24 */	rlwimi r12, r28, 0, 16, 18
/* 803D4E50 003CABD0  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 803D4E54 003CABD4  53 8C 04 EA */	rlwimi r12, r28, 0, 19, 21
/* 803D4E58 003CABD8  50 06 80 08 */	rlwimi r6, r0, 16, 0, 4
/* 803D4E5C 003CABDC  53 8C 05 B2 */	rlwimi r12, r28, 0, 22, 25
/* 803D4E60 003CABE0  A1 44 00 02 */	lhz r10, 0x2(r4)
/* 803D4E64 003CABE4  50 A6 59 4E */	rlwimi r6, r5, 11, 5, 7
/* 803D4E68 003CABE8  81 04 00 04 */	lwz r8, 0x4(r4)
/* 803D4E6C 003CABEC  50 A6 5A 16 */	rlwimi r6, r5, 11, 8, 11
/* 803D4E70 003CABF0  51 6A 04 2C */	rlwimi r10, r11, 0, 16, 22
/* 803D4E74 003CABF4  50 06 4B 20 */	rlwimi r6, r0, 9, 12, 16
/* 803D4E78 003CABF8  51 28 80 0A */	rlwimi r8, r9, 16, 0, 5
/* 803D4E7C 003CABFC  51 6A 05 F2 */	rlwimi r10, r11, 0, 23, 25
/* 803D4E80 003CAC00  B1 84 00 00 */	sth r12, 0x0(r4)
/* 803D4E84 003CAC04  51 6A 06 B4 */	rlwimi r10, r11, 0, 26, 26
/* 803D4E88 003CAC08  50 A6 5C 68 */	rlwimi r6, r5, 11, 17, 20
/* 803D4E8C 003CAC0C  50 A6 15 72 */	rlwimi r6, r5, 2, 21, 25
/* 803D4E90 003CAC10  50 E8 51 90 */	rlwimi r8, r7, 10, 6, 8
/* 803D4E94 003CAC14  50 E8 52 58 */	rlwimi r8, r7, 10, 9, 12
/* 803D4E98 003CAC18  B1 44 00 02 */	sth r10, 0x2(r4)
/* 803D4E9C 003CAC1C  51 28 4B 62 */	rlwimi r8, r9, 9, 13, 17
/* 803D4EA0 003CAC20  A3 83 00 2C */	lhz r28, 0x2c(r3)
/* 803D4EA4 003CAC24  50 E8 2C AA */	rlwimi r8, r7, 5, 18, 21
/* 803D4EA8 003CAC28  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803D4EAC 003CAC2C  53 80 04 26 */	rlwimi r0, r28, 0, 16, 19
/* 803D4EB0 003CAC30  90 C4 00 08 */	stw r6, 0x8(r4)
/* 803D4EB4 003CAC34  51 28 2D B4 */	rlwimi r8, r9, 5, 22, 26
/* 803D4EB8 003CAC38  88 C3 00 16 */	lbz r6, 0x16(r3)
/* 803D4EBC 003CAC3C  7C 1D 03 78 */	mr r29, r0
/* 803D4EC0 003CAC40  B0 04 00 0C */	sth r0, 0xc(r4)
/* 803D4EC4 003CAC44  88 03 00 17 */	lbz r0, 0x17(r3)
/* 803D4EC8 003CAC48  53 9D 05 2E */	rlwimi r29, r28, 0, 20, 23
/* 803D4ECC 003CAC4C  91 04 00 04 */	stw r8, 0x4(r4)
/* 803D4ED0 003CAC50  53 9D 06 38 */	rlwimi r29, r28, 0, 24, 28
/* 803D4ED4 003CAC54  A1 43 00 32 */	lhz r10, 0x32(r3)
/* 803D4ED8 003CAC58  A1 24 00 10 */	lhz r9, 0x10(r4)
/* 803D4EDC 003CAC5C  51 49 04 22 */	rlwimi r9, r10, 0, 16, 17
/* 803D4EE0 003CAC60  A1 83 00 2E */	lhz r12, 0x2e(r3)
/* 803D4EE4 003CAC64  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 803D4EE8 003CAC68  51 49 04 A6 */	rlwimi r9, r10, 0, 18, 19
/* 803D4EEC 003CAC6C  A1 64 00 0E */	lhz r11, 0xe(r4)
/* 803D4EF0 003CAC70  51 8B 04 28 */	rlwimi r11, r12, 0, 16, 20
/* 803D4EF4 003CAC74  A1 04 00 12 */	lhz r8, 0x12(r4)
/* 803D4EF8 003CAC78  50 A8 04 26 */	rlwimi r8, r5, 0, 16, 19
/* 803D4EFC 003CAC7C  51 8B 05 6C */	rlwimi r11, r12, 0, 21, 22
/* 803D4F00 003CAC80  51 49 05 2C */	rlwimi r9, r10, 0, 20, 22
/* 803D4F04 003CAC84  50 A8 05 2C */	rlwimi r8, r5, 0, 20, 22
/* 803D4F08 003CAC88  A0 63 00 34 */	lhz r3, 0x34(r3)
/* 803D4F0C 003CAC8C  A0 E4 00 14 */	lhz r7, 0x14(r4)
/* 803D4F10 003CAC90  51 8B 05 F4 */	rlwimi r11, r12, 0, 23, 26
/* 803D4F14 003CAC94  50 67 04 20 */	rlwimi r7, r3, 0, 16, 16
/* 803D4F18 003CAC98  51 49 05 F4 */	rlwimi r9, r10, 0, 23, 26
/* 803D4F1C 003CAC9C  50 67 04 68 */	rlwimi r7, r3, 0, 17, 20
/* 803D4F20 003CACA0  50 A8 05 F4 */	rlwimi r8, r5, 0, 23, 26
/* 803D4F24 003CACA4  50 A8 06 FE */	rlwimi r8, r5, 0, 27, 31
/* 803D4F28 003CACA8  51 8B 06 FE */	rlwimi r11, r12, 0, 27, 31
/* 803D4F2C 003CACAC  50 67 2D 72 */	rlwimi r7, r3, 5, 21, 25
/* 803D4F30 003CACB0  51 49 06 FE */	rlwimi r9, r10, 0, 27, 31
/* 803D4F34 003CACB4  50 67 DE BC */	rlwimi r7, r3, 27, 26, 30
/* 803D4F38 003CACB8  B3 A4 00 0C */	sth r29, 0xc(r4)
/* 803D4F3C 003CACBC  38 64 00 18 */	addi r3, r4, 0x18
/* 803D4F40 003CACC0  38 A0 00 14 */	li r5, 0x14
/* 803D4F44 003CACC4  B1 64 00 0E */	sth r11, 0xe(r4)
/* 803D4F48 003CACC8  B1 24 00 10 */	sth r9, 0x10(r4)
/* 803D4F4C 003CACCC  B1 04 00 12 */	sth r8, 0x12(r4)
/* 803D4F50 003CACD0  B0 E4 00 14 */	sth r7, 0x14(r4)
/* 803D4F54 003CACD4  98 C4 00 16 */	stb r6, 0x16(r4)
/* 803D4F58 003CACD8  98 04 00 17 */	stb r0, 0x17(r4)
/* 803D4F5C 003CACDC  38 9E 00 02 */	addi r4, r30, 0x2
/* 803D4F60 003CACE0  4B C2 F3 D9 */	bl memcpy
/* 803D4F64 003CACE4  38 00 00 00 */	li r0, 0x0
/* 803D4F68 003CACE8  38 7F 00 46 */	addi r3, r31, 0x46
/* 803D4F6C 003CACEC  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 803D4F70 003CACF0  38 9E 00 18 */	addi r4, r30, 0x18
/* 803D4F74 003CACF4  38 A0 00 08 */	li r5, 0x8
/* 803D4F78 003CACF8  4B C2 F3 C1 */	bl memcpy
/* 803D4F7C 003CACFC  A0 9E 00 00 */	lhz r4, 0x0(r30)
/* 803D4F80 003CAD00  A0 7F 00 44 */	lhz r3, 0x44(r31)
/* 803D4F84 003CAD04  50 83 0C 20 */	rlwimi r3, r4, 1, 16, 16
/* 803D4F88 003CAD08  A0 1E 00 20 */	lhz r0, 0x20(r30)
/* 803D4F8C 003CAD0C  50 83 0C 68 */	rlwimi r3, r4, 1, 17, 20
/* 803D4F90 003CAD10  50 83 0D 72 */	rlwimi r3, r4, 1, 21, 25
/* 803D4F94 003CAD14  50 83 0E BA */	rlwimi r3, r4, 1, 26, 29
/* 803D4F98 003CAD18  50 83 0F BC */	rlwimi r3, r4, 1, 30, 30
/* 803D4F9C 003CAD1C  50 03 F7 FE */	rlwimi r3, r0, 30, 31, 31
/* 803D4FA0 003CAD20  B0 7F 00 44 */	sth r3, 0x44(r31)
/* 803D4FA4 003CAD24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D4FA8 003CAD28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D4FAC 003CAD2C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D4FB0 003CAD30  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803D4FB4 003CAD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D4FB8 003CAD38  7C 08 03 A6 */	mtlr r0
/* 803D4FBC 003CAD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D4FC0 003CAD40  4E 80 00 20 */	blr
.endfn fn_803D4E0C
