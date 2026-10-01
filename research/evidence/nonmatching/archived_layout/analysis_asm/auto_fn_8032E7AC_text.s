.include "macros.inc"
.file "auto_fn_8032E7AC_text"

# 0x80009188..0x80009190 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009188 | size: 0x8
.obj "@etb_80009188", local
.hidden "@etb_80009188"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80009188"

# 0x8000C01C..0x8000C028 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C01C | size: 0xC
.obj "@eti_8000C01C", local
.hidden "@eti_8000C01C"
	.4byte fn_8032E7AC
	.4byte 0x000000E4
	.4byte "@etb_80009188"
.endobj "@eti_8000C01C"

# 0x8032E7AC..0x8032E890 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x8032E7AC | size: 0xE4
.fn fn_8032E7AC, global
/* 8032E7AC 0032452C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032E7B0 00324530  7C 08 02 A6 */	mflr r0
/* 8032E7B4 00324534  38 A0 00 00 */	li r5, 0x0
/* 8032E7B8 00324538  38 C0 00 40 */	li r6, 0x40
/* 8032E7BC 0032453C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032E7C0 00324540  38 E0 00 00 */	li r7, 0x0
/* 8032E7C4 00324544  39 00 00 00 */	li r8, 0x0
/* 8032E7C8 00324548  39 20 00 00 */	li r9, 0x0
/* 8032E7CC 0032454C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8032E7D0 00324550  3F 60 80 41 */	lis r27, lbl_80414B38@ha
/* 8032E7D4 00324554  3B 7B 4B 38 */	addi r27, r27, lbl_80414B38@l
/* 8032E7D8 00324558  3F 80 80 53 */	lis r28, lbl_80533468@ha
/* 8032E7DC 0032455C  38 1B 00 10 */	addi r0, r27, 0x10
/* 8032E7E0 00324560  3F C0 80 41 */	lis r30, lbl_80414D30@ha
/* 8032E7E4 00324564  3B 9C 34 68 */	addi r28, r28, lbl_80533468@l
/* 8032E7E8 00324568  3B A0 00 00 */	li r29, 0x0
/* 8032E7EC 0032456C  38 7C 00 00 */	addi r3, r28, 0x0
/* 8032E7F0 00324570  38 9E 4D 30 */	addi r4, r30, lbl_80414D30@l
/* 8032E7F4 00324574  39 40 00 00 */	li r10, 0x0
/* 8032E7F8 00324578  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032E7FC 0032457C  38 00 00 03 */	li r0, 0x3
/* 8032E800 00324580  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032E804 00324584  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8032E808 00324588  4B F4 E0 01 */	bl fn_8027C808
/* 8032E80C 0032458C  38 1B 00 A8 */	addi r0, r27, 0xa8
/* 8032E810 00324590  3B FE 4D 30 */	addi r31, r30, lbl_80414D30@l
/* 8032E814 00324594  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032E818 00324598  3B C0 00 06 */	li r30, 0x6
/* 8032E81C 0032459C  38 7C 00 24 */	addi r3, r28, 0x24
/* 8032E820 003245A0  38 9F 00 22 */	addi r4, r31, 0x22
/* 8032E824 003245A4  93 C1 00 0C */	stw r30, 0xc(r1)
/* 8032E828 003245A8  38 A0 00 00 */	li r5, 0x0
/* 8032E82C 003245AC  38 C0 00 70 */	li r6, 0x70
/* 8032E830 003245B0  38 E0 00 00 */	li r7, 0x0
/* 8032E834 003245B4  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8032E838 003245B8  39 00 00 00 */	li r8, 0x0
/* 8032E83C 003245BC  39 20 00 00 */	li r9, 0x0
/* 8032E840 003245C0  39 40 00 00 */	li r10, 0x0
/* 8032E844 003245C4  4B F4 DF C5 */	bl fn_8027C808
/* 8032E848 003245C8  38 1B 01 80 */	addi r0, r27, 0x180
/* 8032E84C 003245CC  38 7C 00 48 */	addi r3, r28, 0x48
/* 8032E850 003245D0  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032E854 003245D4  38 9F 00 43 */	addi r4, r31, 0x43
/* 8032E858 003245D8  38 A0 00 00 */	li r5, 0x0
/* 8032E85C 003245DC  38 C0 00 30 */	li r6, 0x30
/* 8032E860 003245E0  93 C1 00 0C */	stw r30, 0xc(r1)
/* 8032E864 003245E4  38 E0 00 00 */	li r7, 0x0
/* 8032E868 003245E8  39 00 00 00 */	li r8, 0x0
/* 8032E86C 003245EC  39 20 00 00 */	li r9, 0x0
/* 8032E870 003245F0  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8032E874 003245F4  39 40 00 00 */	li r10, 0x0
/* 8032E878 003245F8  4B F4 DF 91 */	bl fn_8027C808
/* 8032E87C 003245FC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8032E880 00324600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032E884 00324604  7C 08 03 A6 */	mtlr r0
/* 8032E888 00324608  38 21 00 30 */	addi r1, r1, 0x30
/* 8032E88C 0032460C  4E 80 00 20 */	blr
.endfn fn_8032E7AC

# 0x80406784..0x80406788 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032E7AC
