.include "macros.inc"
.file "auto_fn_803F36F0_text"

# 0x800095A4..0x800095AC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800095A4 | size: 0x8
.obj "@etb_800095A4", local
.hidden "@etb_800095A4"
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
.endobj "@etb_800095A4"

# 0x8000C5BC..0x8000C5C8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C5BC | size: 0xC
.obj "@eti_8000C5BC", local
.hidden "@eti_8000C5BC"
	.4byte fn_803F36F0
	.4byte 0x000000DC
	.4byte "@etb_800095A4"
.endobj "@eti_8000C5BC"

# 0x803F36F0..0x803F37CC | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x803F36F0 | size: 0xDC
.fn fn_803F36F0, global
/* 803F36F0 003E9470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F36F4 003E9474  7C 08 02 A6 */	mflr r0
/* 803F36F8 003E9478  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F36FC 003E947C  38 00 00 00 */	li r0, 0x0
/* 803F3700 003E9480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F3704 003E9484  7C BF 2B 78 */	mr r31, r5
/* 803F3708 003E9488  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F370C 003E948C  7C DE 33 78 */	mr r30, r6
/* 803F3710 003E9490  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803F3714 003E9494  7C 7D 1B 78 */	mr r29, r3
/* 803F3718 003E9498  98 03 00 00 */	stb r0, 0x0(r3)
/* 803F371C 003E949C  98 03 00 04 */	stb r0, 0x4(r3)
/* 803F3720 003E94A0  48 00 00 48 */	b .L_803F3768
.L_803F3724:
/* 803F3724 003E94A4  7F E3 FB 78 */	mr r3, r31
/* 803F3728 003E94A8  7F C4 F3 78 */	mr r4, r30
/* 803F372C 003E94AC  38 C0 00 0A */	li r6, 0xa
/* 803F3730 003E94B0  38 A0 00 00 */	li r5, 0x0
/* 803F3734 003E94B4  4B FF DE 75 */	bl __mod2u
/* 803F3738 003E94B8  89 1D 00 04 */	lbz r8, 0x4(r29)
/* 803F373C 003E94BC  7F E3 FB 78 */	mr r3, r31
/* 803F3740 003E94C0  38 C0 00 0A */	li r6, 0xa
/* 803F3744 003E94C4  38 A0 00 00 */	li r5, 0x0
/* 803F3748 003E94C8  7C FD 42 14 */	add r7, r29, r8
/* 803F374C 003E94CC  38 08 00 01 */	addi r0, r8, 0x1
/* 803F3750 003E94D0  98 87 00 05 */	stb r4, 0x5(r7)
/* 803F3754 003E94D4  7F C4 F3 78 */	mr r4, r30
/* 803F3758 003E94D8  98 1D 00 04 */	stb r0, 0x4(r29)
/* 803F375C 003E94DC  4B FF DC 29 */	bl __div2u
/* 803F3760 003E94E0  7C 9E 23 78 */	mr r30, r4
/* 803F3764 003E94E4  7C 7F 1B 78 */	mr r31, r3
.L_803F3768:
/* 803F3768 003E94E8  7F C0 FB 79 */	or. r0, r30, r31
/* 803F376C 003E94EC  40 82 FF B8 */	bne .L_803F3724
/* 803F3770 003E94F0  88 1D 00 04 */	lbz r0, 0x4(r29)
/* 803F3774 003E94F4  38 9D 00 05 */	addi r4, r29, 0x5
/* 803F3778 003E94F8  7C 7D 02 14 */	add r3, r29, r0
/* 803F377C 003E94FC  38 63 00 05 */	addi r3, r3, 0x5
/* 803F3780 003E9500  48 00 00 18 */	b .L_803F3798
.L_803F3784:
/* 803F3784 003E9504  88 A4 00 00 */	lbz r5, 0x0(r4)
/* 803F3788 003E9508  88 03 00 00 */	lbz r0, 0x0(r3)
/* 803F378C 003E950C  98 04 00 00 */	stb r0, 0x0(r4)
/* 803F3790 003E9510  38 84 00 01 */	addi r4, r4, 0x1
/* 803F3794 003E9514  98 A3 00 00 */	stb r5, 0x0(r3)
.L_803F3798:
/* 803F3798 003E9518  38 63 FF FF */	subi r3, r3, 0x1
/* 803F379C 003E951C  7C 04 18 40 */	cmplw r4, r3
/* 803F37A0 003E9520  41 80 FF E4 */	blt .L_803F3784
/* 803F37A4 003E9524  88 7D 00 04 */	lbz r3, 0x4(r29)
/* 803F37A8 003E9528  38 03 FF FF */	subi r0, r3, 0x1
/* 803F37AC 003E952C  B0 1D 00 02 */	sth r0, 0x2(r29)
/* 803F37B0 003E9530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F37B4 003E9534  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F37B8 003E9538  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803F37BC 003E953C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F37C0 003E9540  7C 08 03 A6 */	mtlr r0
/* 803F37C4 003E9544  38 21 00 20 */	addi r1, r1, 0x20
/* 803F37C8 003E9548  4E 80 00 20 */	blr
.endfn fn_803F36F0
