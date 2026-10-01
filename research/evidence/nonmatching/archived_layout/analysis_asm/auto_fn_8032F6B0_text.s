.include "macros.inc"
.file "auto_fn_8032F6B0_text"

# 0x80009244..0x8000924C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009244 | size: 0x8
.obj "@etb_80009244", local
.hidden "@etb_80009244"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009244"

# 0x8000C100..0x8000C10C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C100 | size: 0xC
.obj "@eti_8000C100", local
.hidden "@eti_8000C100"
	.4byte fn_8032F6B0
	.4byte 0x00000064
	.4byte "@etb_80009244"
.endobj "@eti_8000C100"

# 0x8032F6B0..0x8032F714 | size: 0x64
.text
.balign 4

# .text:0x0 | 0x8032F6B0 | size: 0x64
.fn fn_8032F6B0, global
/* 8032F6B0 00325430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F6B4 00325434  7C 08 02 A6 */	mflr r0
/* 8032F6B8 00325438  3C A0 80 41 */	lis r5, lbl_80415418@ha
/* 8032F6BC 0032543C  3C 60 80 53 */	lis r3, lbl_80533688@ha
/* 8032F6C0 00325440  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F6C4 00325444  38 A5 54 18 */	addi r5, r5, lbl_80415418@l
/* 8032F6C8 00325448  3C 80 80 41 */	lis r4, lbl_80415508@ha
/* 8032F6CC 0032544C  38 00 00 00 */	li r0, 0x0
/* 8032F6D0 00325450  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F6D4 00325454  38 A0 00 0C */	li r5, 0xc
/* 8032F6D8 00325458  38 63 36 88 */	addi r3, r3, lbl_80533688@l
/* 8032F6DC 0032545C  38 84 55 08 */	addi r4, r4, lbl_80415508@l
/* 8032F6E0 00325460  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8032F6E4 00325464  38 A0 00 00 */	li r5, 0x0
/* 8032F6E8 00325468  38 C0 00 0C */	li r6, 0xc
/* 8032F6EC 0032546C  38 E0 00 00 */	li r7, 0x0
/* 8032F6F0 00325470  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F6F4 00325474  39 00 00 00 */	li r8, 0x0
/* 8032F6F8 00325478  39 20 00 00 */	li r9, 0x0
/* 8032F6FC 0032547C  39 40 00 00 */	li r10, 0x0
/* 8032F700 00325480  4B F4 D1 09 */	bl fn_8027C808
/* 8032F704 00325484  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F708 00325488  7C 08 03 A6 */	mtlr r0
/* 8032F70C 0032548C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F710 00325490  4E 80 00 20 */	blr
.endfn fn_8032F6B0

# 0x804067B0..0x804067B4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F6B0
