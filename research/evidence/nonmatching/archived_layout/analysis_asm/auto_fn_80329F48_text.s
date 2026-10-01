.include "macros.inc"
.file "auto_fn_80329F48_text"

# 0x80008FAC..0x80008FB4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008FAC | size: 0x8
.obj "@etb_80008FAC", local
.hidden "@etb_80008FAC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008FAC"

# 0x8000BEE4..0x8000BEF0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BEE4 | size: 0xC
.obj "@eti_8000BEE4", local
.hidden "@eti_8000BEE4"
	.4byte fn_80329F48
	.4byte 0x000000C0
	.4byte "@etb_80008FAC"
.endobj "@eti_8000BEE4"

# 0x80329F48..0x8032A008 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x80329F48 | size: 0xC0
.fn fn_80329F48, global
/* 80329F48 0031FCC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80329F4C 0031FCCC  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80329F50 0031FCD0  1D 4C 00 0C */	mulli r10, r12, 0xc
/* 80329F54 0031FCD4  48 00 00 A0 */	b .L_80329FF4
.L_80329F58:
/* 80329F58 0031FCD8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 80329F5C 0031FCDC  81 05 00 00 */	lwz r8, 0x0(r5)
/* 80329F60 0031FCE0  7C CA 00 2E */	lwzx r6, r10, r0
/* 80329F64 0031FCE4  7D 60 52 14 */	add r11, r0, r10
/* 80329F68 0031FCE8  80 E6 00 28 */	lwz r7, 0x28(r6)
/* 80329F6C 0031FCEC  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 80329F70 0031FCF0  A0 06 00 90 */	lhz r0, 0x90(r6)
/* 80329F74 0031FCF4  7C 08 00 AE */	lbzx r0, r8, r0
/* 80329F78 0031FCF8  28 00 00 08 */	cmplwi r0, 0x8
/* 80329F7C 0031FCFC  40 82 00 70 */	bne .L_80329FEC
/* 80329F80 0031FD00  80 C7 00 08 */	lwz r6, 0x8(r7)
/* 80329F84 0031FD04  A0 06 00 90 */	lhz r0, 0x90(r6)
/* 80329F88 0031FD08  7C 08 00 AE */	lbzx r0, r8, r0
/* 80329F8C 0031FD0C  28 00 00 08 */	cmplwi r0, 0x8
/* 80329F90 0031FD10  40 82 00 5C */	bne .L_80329FEC
/* 80329F94 0031FD14  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 80329F98 0031FD18  38 06 00 01 */	addi r0, r6, 0x1
/* 80329F9C 0031FD1C  90 04 00 00 */	stw r0, 0x0(r4)
/* 80329FA0 0031FD20  1C C6 00 0C */	mulli r6, r6, 0xc
/* 80329FA4 0031FD24  80 E3 00 00 */	lwz r7, 0x0(r3)
/* 80329FA8 0031FD28  80 0B 00 00 */	lwz r0, 0x0(r11)
/* 80329FAC 0031FD2C  7D 27 32 14 */	add r9, r7, r6
/* 80329FB0 0031FD30  7D 07 30 2E */	lwzx r8, r7, r6
/* 80329FB4 0031FD34  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 80329FB8 0031FD38  80 C9 00 08 */	lwz r6, 0x8(r9)
/* 80329FBC 0031FD3C  91 01 00 08 */	stw r8, 0x8(r1)
/* 80329FC0 0031FD40  90 09 00 00 */	stw r0, 0x0(r9)
/* 80329FC4 0031FD44  80 0B 00 04 */	lwz r0, 0x4(r11)
/* 80329FC8 0031FD48  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80329FCC 0031FD4C  90 09 00 04 */	stw r0, 0x4(r9)
/* 80329FD0 0031FD50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80329FD4 0031FD54  C0 2B 00 08 */	lfs f1, 0x8(r11)
/* 80329FD8 0031FD58  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80329FDC 0031FD5C  D0 29 00 08 */	stfs f1, 0x8(r9)
/* 80329FE0 0031FD60  91 0B 00 00 */	stw r8, 0x0(r11)
/* 80329FE4 0031FD64  90 EB 00 04 */	stw r7, 0x4(r11)
/* 80329FE8 0031FD68  D0 0B 00 08 */	stfs f0, 0x8(r11)
.L_80329FEC:
/* 80329FEC 0031FD6C  39 4A 00 0C */	addi r10, r10, 0xc
/* 80329FF0 0031FD70  39 8C 00 01 */	addi r12, r12, 0x1
.L_80329FF4:
/* 80329FF4 0031FD74  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80329FF8 0031FD78  7C 0C 00 00 */	cmpw r12, r0
/* 80329FFC 0031FD7C  41 80 FF 5C */	blt .L_80329F58
/* 8032A000 0031FD80  38 21 00 20 */	addi r1, r1, 0x20
/* 8032A004 0031FD84  4E 80 00 20 */	blr
.endfn fn_80329F48
