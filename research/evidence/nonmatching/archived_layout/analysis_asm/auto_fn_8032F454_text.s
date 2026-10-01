.include "macros.inc"
.file "auto_fn_8032F454_text"

# 0x8000921C..0x80009224 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000921C | size: 0x8
.obj "@etb_8000921C", local
.hidden "@etb_8000921C"
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
.endobj "@etb_8000921C"

# 0x8000C0C4..0x8000C0D0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C0C4 | size: 0xC
.obj "@eti_8000C0C4", local
.hidden "@eti_8000C0C4"
	.4byte fn_8032F454
	.4byte 0x000000C0
	.4byte "@etb_8000921C"
.endobj "@eti_8000C0C4"

# 0x8032F454..0x8032F514 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x8032F454 | size: 0xC0
.fn fn_8032F454, global
/* 8032F454 003251D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032F458 003251D8  7C 08 02 A6 */	mflr r0
/* 8032F45C 003251DC  3C 60 80 53 */	lis r3, lbl_805335A0@ha
/* 8032F460 003251E0  38 A0 00 00 */	li r5, 0x0
/* 8032F464 003251E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032F468 003251E8  38 00 00 02 */	li r0, 0x2
/* 8032F46C 003251EC  38 63 35 A0 */	addi r3, r3, lbl_805335A0@l
/* 8032F470 003251F0  38 C0 00 0C */	li r6, 0xc
/* 8032F474 003251F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8032F478 003251F8  3F E0 80 41 */	lis r31, lbl_80415150@ha
/* 8032F47C 003251FC  38 E0 00 00 */	li r7, 0x0
/* 8032F480 00325200  39 00 00 00 */	li r8, 0x0
/* 8032F484 00325204  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8032F488 00325208  3B C0 00 00 */	li r30, 0x0
/* 8032F48C 0032520C  39 20 00 00 */	li r9, 0x0
/* 8032F490 00325210  39 40 00 00 */	li r10, 0x0
/* 8032F494 00325214  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8032F498 00325218  3F A0 80 41 */	lis r29, lbl_80414F78@ha
/* 8032F49C 0032521C  3B BD 4F 78 */	addi r29, r29, lbl_80414F78@l
/* 8032F4A0 00325220  38 9D 00 B0 */	addi r4, r29, 0xb0
/* 8032F4A4 00325224  90 81 00 08 */	stw r4, 0x8(r1)
/* 8032F4A8 00325228  38 9F 51 50 */	addi r4, r31, lbl_80415150@l
/* 8032F4AC 0032522C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032F4B0 00325230  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032F4B4 00325234  4B F4 D3 55 */	bl fn_8027C808
/* 8032F4B8 00325238  38 1D 01 38 */	addi r0, r29, 0x138
/* 8032F4BC 0032523C  38 9F 51 50 */	addi r4, r31, lbl_80415150@l
/* 8032F4C0 00325240  90 01 00 08 */	stw r0, 0x8(r1)
/* 8032F4C4 00325244  38 00 00 08 */	li r0, 0x8
/* 8032F4C8 00325248  3C 60 80 53 */	lis r3, lbl_805335C4@ha
/* 8032F4CC 0032524C  38 84 00 18 */	addi r4, r4, 0x18
/* 8032F4D0 00325250  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032F4D4 00325254  38 63 35 C4 */	addi r3, r3, lbl_805335C4@l
/* 8032F4D8 00325258  39 3D 00 94 */	addi r9, r29, 0x94
/* 8032F4DC 0032525C  38 A0 00 00 */	li r5, 0x0
/* 8032F4E0 00325260  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8032F4E4 00325264  38 C0 00 60 */	li r6, 0x60
/* 8032F4E8 00325268  38 E0 00 00 */	li r7, 0x0
/* 8032F4EC 0032526C  39 00 00 00 */	li r8, 0x0
/* 8032F4F0 00325270  39 40 00 01 */	li r10, 0x1
/* 8032F4F4 00325274  4B F4 D3 15 */	bl fn_8027C808
/* 8032F4F8 00325278  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032F4FC 0032527C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8032F500 00325280  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8032F504 00325284  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8032F508 00325288  7C 08 03 A6 */	mtlr r0
/* 8032F50C 0032528C  38 21 00 30 */	addi r1, r1, 0x30
/* 8032F510 00325290  4E 80 00 20 */	blr
.endfn fn_8032F454

# 0x8040679C..0x804067A0 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032F454
