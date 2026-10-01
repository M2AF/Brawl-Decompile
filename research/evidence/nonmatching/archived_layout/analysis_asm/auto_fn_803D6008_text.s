.include "macros.inc"
.file "auto_fn_803D6008_text"

# 0x800094B4..0x800094BC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800094B4 | size: 0x8
.obj "@etb_800094B4", local
.hidden "@etb_800094B4"
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
.endobj "@etb_800094B4"

# 0x8000C4A8..0x8000C4B4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C4A8 | size: 0xC
.obj "@eti_8000C4A8", local
.hidden "@eti_8000C4A8"
	.4byte fn_803D6008
	.4byte 0x000000F4
	.4byte "@etb_800094B4"
.endobj "@eti_8000C4A8"

# 0x803D6008..0x803D60FC | size: 0xF4
.text
.balign 4

# .text:0x0 | 0x803D6008 | size: 0xF4
.fn fn_803D6008, global
/* 803D6008 003CBD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D600C 003CBD8C  7C 08 02 A6 */	mflr r0
/* 803D6010 003CBD90  38 A0 00 14 */	li r5, 0x14
/* 803D6014 003CBD94  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D6018 003CBD98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803D601C 003CBD9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803D6020 003CBDA0  7C 9E 23 78 */	mr r30, r4
/* 803D6024 003CBDA4  38 84 00 18 */	addi r4, r4, 0x18
/* 803D6028 003CBDA8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803D602C 003CBDAC  7C 7D 1B 78 */	mr r29, r3
/* 803D6030 003CBDB0  4B C2 E3 09 */	bl memcpy
/* 803D6034 003CBDB4  3B E0 00 00 */	li r31, 0x0
/* 803D6038 003CBDB8  38 7D 00 16 */	addi r3, r29, 0x16
/* 803D603C 003CBDBC  B3 FD 00 14 */	sth r31, 0x14(r29)
/* 803D6040 003CBDC0  38 9E 00 2E */	addi r4, r30, 0x2e
/* 803D6044 003CBDC4  38 A0 00 14 */	li r5, 0x14
/* 803D6048 003CBDC8  4B C2 E2 F1 */	bl memcpy
/* 803D604C 003CBDCC  88 9E 00 16 */	lbz r4, 0x16(r30)
/* 803D6050 003CBDD0  A0 7E 00 44 */	lhz r3, 0x44(r30)
/* 803D6054 003CBDD4  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 803D6058 003CBDD8  28 04 00 7F */	cmplwi r4, 0x7f
/* 803D605C 003CBDDC  50 60 80 00 */	rlwimi r0, r3, 16, 0, 0
/* 803D6060 003CBDE0  B3 FD 00 14 */	sth r31, 0x14(r29)
/* 803D6064 003CBDE4  50 60 80 48 */	rlwimi r0, r3, 16, 1, 4
/* 803D6068 003CBDE8  88 DE 00 17 */	lbz r6, 0x17(r30)
/* 803D606C 003CBDEC  50 60 81 52 */	rlwimi r0, r3, 16, 5, 9
/* 803D6070 003CBDF0  50 60 82 9A */	rlwimi r0, r3, 16, 10, 13
/* 803D6074 003CBDF4  50 60 83 9C */	rlwimi r0, r3, 16, 14, 14
/* 803D6078 003CBDF8  90 1D 00 34 */	stw r0, 0x34(r29)
/* 803D607C 003CBDFC  40 81 00 08 */	ble .L_803D6084
/* 803D6080 003CBE00  38 80 00 7F */	li r4, 0x7f
.L_803D6084:
/* 803D6084 003CBE04  28 06 00 7F */	cmplwi r6, 0x7f
/* 803D6088 003CBE08  40 81 00 08 */	ble .L_803D6090
/* 803D608C 003CBE0C  38 C0 00 7F */	li r6, 0x7f
.L_803D6090:
/* 803D6090 003CBE10  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 803D6094 003CBE14  50 80 53 EA */	rlwimi r0, r4, 10, 15, 21
/* 803D6098 003CBE18  50 C0 1D B8 */	rlwimi r0, r6, 3, 22, 28
/* 803D609C 003CBE1C  38 7D 00 2C */	addi r3, r29, 0x2c
/* 803D60A0 003CBE20  90 1D 00 34 */	stw r0, 0x34(r29)
/* 803D60A4 003CBE24  38 9E 00 46 */	addi r4, r30, 0x46
/* 803D60A8 003CBE28  38 A0 00 08 */	li r5, 0x8
/* 803D60AC 003CBE2C  4B C2 E2 8D */	bl memcpy
/* 803D60B0 003CBE30  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 803D60B4 003CBE34  7F C3 F3 78 */	mr r3, r30
/* 803D60B8 003CBE38  54 00 00 38 */	clrrwi r0, r0, 3
/* 803D60BC 003CBE3C  90 1D 00 34 */	stw r0, 0x34(r29)
/* 803D60C0 003CBE40  4B FF A5 65 */	bl fn_803D0624
/* 803D60C4 003CBE44  54 60 46 3E */	srwi r0, r3, 24
/* 803D60C8 003CBE48  98 7D 00 3B */	stb r3, 0x3b(r29)
/* 803D60CC 003CBE4C  98 1D 00 38 */	stb r0, 0x38(r29)
/* 803D60D0 003CBE50  54 60 86 3E */	extrwi r0, r3, 8, 8
/* 803D60D4 003CBE54  98 1D 00 39 */	stb r0, 0x39(r29)
/* 803D60D8 003CBE58  54 60 C6 3E */	extrwi r0, r3, 8, 16
/* 803D60DC 003CBE5C  98 1D 00 3A */	stb r0, 0x3a(r29)
/* 803D60E0 003CBE60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803D60E4 003CBE64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803D60E8 003CBE68  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803D60EC 003CBE6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D60F0 003CBE70  7C 08 03 A6 */	mtlr r0
/* 803D60F4 003CBE74  38 21 00 20 */	addi r1, r1, 0x20
/* 803D60F8 003CBE78  4E 80 00 20 */	blr
.endfn fn_803D6008
