.include "macros.inc"
.file "auto_fn_8032E8EC_text"

# 0x80009198..0x800091A0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009198 | size: 0x8
.obj "@etb_80009198", local
.hidden "@etb_80009198"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009198"

# 0x8000C034..0x8000C040 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C034 | size: 0xC
.obj "@eti_8000C034", local
.hidden "@eti_8000C034"
	.4byte fn_8032E8EC
	.4byte 0x00000064
	.4byte "@etb_80009198"
.endobj "@eti_8000C034"

# 0x8032E8EC..0x8032E950 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032E8EC | size: 0x64
.fn fn_8032E8EC, global
/* 8032E8EC 0032466C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E8F0 00324670  7C 08 02 A6 */	mflr r0
/* 8032E8F4 00324674  3C A0 80 41 */	lis r5, lbl_80414DD8@ha
/* 8032E8F8 00324678  3C 60 80 53 */	lis r3, lbl_80533500@ha
/* 8032E8FC 0032467C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E900 00324680  38 A5 4D D8 */	addi r5, r5, lbl_80414DD8@l
/* 8032E904 00324684  3C 80 80 41 */	lis r4, lbl_80414E28@ha
/* 8032E908 00324688  38 00 00 00 */	li r0, 0x0
/* 8032E90C 0032468C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032E910 00324690  38 A0 00 04 */	li r5, 0x4
/* 8032E914 00324694  38 63 35 00 */	addi r3, r3, lbl_80533500@l
/* 8032E918 00324698  38 84 4E 28 */	addi r4, r4, lbl_80414E28@l
/* 8032E91C 0032469C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032E920 003246A0  38 A0 00 00 */	li r5, 0x0
/* 8032E924 003246A4  38 C0 00 50 */	li r6, 0x50
/* 8032E928 003246A8  38 E0 00 00 */	li r7, 0x0
/* 8032E92C 003246AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032E930 003246B0  39 00 00 00 */	li r8, 0x0
/* 8032E934 003246B4  39 20 00 00 */	li r9, 0x0
/* 8032E938 003246B8  39 40 00 00 */	li r10, 0x0
/* 8032E93C 003246BC  4B F4 DE CD */	bl fn_8027C808
/* 8032E940 003246C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E944 003246C4  7C 08 03 A6 */	mtlr r0
/* 8032E948 003246C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E94C 003246CC  4E 80 00 20 */	blr
.endfn fn_8032E8EC

# 0x8040678C..0x80406790 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032E8EC
