.include "macros.inc"
.file "auto_fn_801CC29C_text"

# 0x801CC29C..0x801CC2E4 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x801CC29C | size: 0x48
.fn fn_801CC29C, global
/* 801CC29C 001C201C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC2A0 001C2020  7C 08 02 A6 */	mflr r0
/* 801CC2A4 001C2024  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC2A8 001C2028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CC2AC 001C202C  3F E0 80 4C */	lis r31, lbl_804C2010@ha
/* 801CC2B0 001C2030  38 7F 20 10 */	addi r3, r31, lbl_804C2010@l
/* 801CC2B4 001C2034  48 00 3E CD */	bl fn_801D0180
/* 801CC2B8 001C2038  3C 80 80 1D */	lis r4, fn_801D0194@ha
/* 801CC2BC 001C203C  3C A0 80 4C */	lis r5, lbl_804C2000@ha
/* 801CC2C0 001C2040  38 7F 20 10 */	addi r3, r31, lbl_804C2010@l
/* 801CC2C4 001C2044  38 84 01 94 */	addi r4, r4, fn_801D0194@l
/* 801CC2C8 001C2048  38 A5 20 00 */	addi r5, r5, lbl_804C2000@l
/* 801CC2CC 001C204C  48 22 44 59 */	bl __register_global_object
/* 801CC2D0 001C2050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC2D4 001C2054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CC2D8 001C2058  7C 08 03 A6 */	mtlr r0
/* 801CC2DC 001C205C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC2E0 001C2060  4E 80 00 20 */	blr
.endfn fn_801CC29C

# 0x804065C8..0x804065CC | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_801CC29C
