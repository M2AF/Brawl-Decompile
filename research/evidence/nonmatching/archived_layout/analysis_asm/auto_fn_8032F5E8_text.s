.include "macros.inc"
.file "auto_fn_8032F5E8_text"

# 0x80009234..0x8000923C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009234 | size: 0x8
.obj "@etb_80009234", local
.hidden "@etb_80009234"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009234"

# 0x8000C0E8..0x8000C0F4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0E8 | size: 0xC
.obj "@eti_8000C0E8", local
.hidden "@eti_8000C0E8"
	.4byte fn_8032F5E8
	.4byte 0x00000064
	.4byte "@etb_80009234"
.endobj "@eti_8000C0E8"

# 0x8032F5E8..0x8032F64C | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032F5E8 | size: 0x64
.fn fn_8032F5E8, global
/* 8032F5E8 00325368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F5EC 0032536C  7C 08 02 A6 */	mflr r0
/* 8032F5F0 00325370  3C A0 80 41 */	lis r5, lbl_804152BC@ha
/* 8032F5F4 00325374  3C 60 80 53 */	lis r3, lbl_80533638@ha
/* 8032F5F8 00325378  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F5FC 0032537C  38 A5 52 BC */	addi r5, r5, lbl_804152BC@l
/* 8032F600 00325380  3C 80 80 41 */	lis r4, lbl_804152F8@ha
/* 8032F604 00325384  38 00 00 00 */	li r0, 0x0
/* 8032F608 00325388  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F60C 0032538C  38 A0 00 03 */	li r5, 0x3
/* 8032F610 00325390  38 63 36 38 */	addi r3, r3, lbl_80533638@l
/* 8032F614 00325394  38 84 52 F8 */	addi r4, r4, lbl_804152F8@l
/* 8032F618 00325398  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032F61C 0032539C  38 A0 00 00 */	li r5, 0x0
/* 8032F620 003253A0  38 C0 00 10 */	li r6, 0x10
/* 8032F624 003253A4  38 E0 00 00 */	li r7, 0x0
/* 8032F628 003253A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F62C 003253AC  39 00 00 00 */	li r8, 0x0
/* 8032F630 003253B0  39 20 00 00 */	li r9, 0x0
/* 8032F634 003253B4  39 40 00 00 */	li r10, 0x0
/* 8032F638 003253B8  4B F4 D1 D1 */	bl fn_8027C808
/* 8032F63C 003253BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F640 003253C0  7C 08 03 A6 */	mtlr r0
/* 8032F644 003253C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F648 003253C8  4E 80 00 20 */	blr
.endfn fn_8032F5E8

# 0x804067A8..0x804067AC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F5E8
