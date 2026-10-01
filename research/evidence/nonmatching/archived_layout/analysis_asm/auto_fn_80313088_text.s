.include "macros.inc"
.file "auto_fn_80313088_text"

# 0x80008B3C..0x80008B44 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B3C | size: 0x8
.obj "@etb_80008B3C", local
.hidden "@etb_80008B3C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008B3C"

# 0x8000BA10..0x8000BA1C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BA10 | size: 0xC
.obj "@eti_8000BA10", local
.hidden "@eti_8000BA10"
	.4byte fn_80313088
	.4byte 0x00000064
	.4byte "@etb_80008B3C"
.endobj "@eti_8000BA10"

# 0x80313088..0x803130EC | size: 0x64
.text
.balign 4

# .text:0x0 | 0x80313088 | size: 0x64
.fn fn_80313088, global
/* 80313088 00308E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031308C 00308E0C  7C 08 02 A6 */	mflr r0
/* 80313090 00308E10  3C A0 80 41 */	lis r5, lbl_804143C0@ha
/* 80313094 00308E14  3C 60 80 53 */	lis r3, lbl_805332C8@ha
/* 80313098 00308E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031309C 00308E1C  38 A5 43 C0 */	addi r5, r5, lbl_804143C0@l
/* 803130A0 00308E20  3C 80 80 41 */	lis r4, lbl_804143D4@ha
/* 803130A4 00308E24  38 00 00 00 */	li r0, 0x0
/* 803130A8 00308E28  90 A1 00 08 */	stw r5, 0x8(r1)
/* 803130AC 00308E2C  38 A0 00 01 */	li r5, 0x1
/* 803130B0 00308E30  38 63 32 C8 */	addi r3, r3, lbl_805332C8@l
/* 803130B4 00308E34  38 84 43 D4 */	addi r4, r4, lbl_804143D4@l
/* 803130B8 00308E38  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803130BC 00308E3C  38 A0 00 00 */	li r5, 0x0
/* 803130C0 00308E40  38 C0 00 04 */	li r6, 0x4
/* 803130C4 00308E44  38 E0 00 00 */	li r7, 0x0
/* 803130C8 00308E48  90 01 00 10 */	stw r0, 0x10(r1)
/* 803130CC 00308E4C  39 00 00 00 */	li r8, 0x0
/* 803130D0 00308E50  39 20 00 00 */	li r9, 0x0
/* 803130D4 00308E54  39 40 00 00 */	li r10, 0x0
/* 803130D8 00308E58  4B F6 97 31 */	bl fn_8027C808
/* 803130DC 00308E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803130E0 00308E60  7C 08 03 A6 */	mtlr r0
/* 803130E4 00308E64  38 21 00 20 */	addi r1, r1, 0x20
/* 803130E8 00308E68  4E 80 00 20 */	blr
.endfn fn_80313088

# 0x80406754..0x80406758 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80313088
