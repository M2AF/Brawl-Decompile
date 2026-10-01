.include "macros.inc"
.file "auto_fn_8032F3EC_text"

# 0x80009214..0x8000921C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009214 | size: 0x8
.obj "@etb_80009214", local
.hidden "@etb_80009214"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80009214"

# 0x8000C0B8..0x8000C0C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0B8 | size: 0xC
.obj "@eti_8000C0B8", local
.hidden "@eti_8000C0B8"
	.4byte fn_8032F3EC
	.4byte 0x00000068
	.4byte "@etb_80009214"
.endobj "@eti_8000C0B8"

# 0x8032F3EC..0x8032F454 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x8032F3EC | size: 0x68
.fn fn_8032F3EC, global
/* 8032F3EC 0032516C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F3F0 00325170  7C 08 02 A6 */	mflr r0
/* 8032F3F4 00325174  3C A0 80 41 */	lis r5, lbl_80414F24@ha
/* 8032F3F8 00325178  3C 60 80 53 */	lis r3, lbl_80533578@ha
/* 8032F3FC 0032517C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F400 00325180  38 A5 4F 24 */	addi r5, r5, lbl_80414F24@l
/* 8032F404 00325184  3C 80 80 41 */	lis r4, lbl_80414F60@ha
/* 8032F408 00325188  38 C0 00 03 */	li r6, 0x3
/* 8032F40C 0032518C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8032F410 00325190  3C A0 80 53 */	lis r5, lbl_80532340@ha
/* 8032F414 00325194  38 00 00 00 */	li r0, 0x0
/* 8032F418 00325198  38 63 35 78 */	addi r3, r3, lbl_80533578@l
/* 8032F41C 0032519C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8032F420 003251A0  38 84 4F 60 */	addi r4, r4, lbl_80414F60@l
/* 8032F424 003251A4  38 A5 23 40 */	addi r5, r5, lbl_80532340@l
/* 8032F428 003251A8  38 C0 00 24 */	li r6, 0x24
/* 8032F42C 003251AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032F430 003251B0  38 E0 00 00 */	li r7, 0x0
/* 8032F434 003251B4  39 00 00 00 */	li r8, 0x0
/* 8032F438 003251B8  39 20 00 00 */	li r9, 0x0
/* 8032F43C 003251BC  39 40 00 00 */	li r10, 0x0
/* 8032F440 003251C0  4B F4 D3 C9 */	bl fn_8027C808
/* 8032F444 003251C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F448 003251C8  7C 08 03 A6 */	mtlr r0
/* 8032F44C 003251CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F450 003251D0  4E 80 00 20 */	blr
.endfn fn_8032F3EC

# 0x80406798..0x8040679C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F3EC
