.include "macros.inc"
.file "auto_fn_8032BC08_text"

# 0x80009118..0x80009120 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009118 | size: 0x8
.obj "@etb_80009118", local
.hidden "@etb_80009118"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80009118"

# 0x8000BF74..0x8000BF80 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF74 | size: 0xC
.obj "@eti_8000BF74", local
.hidden "@eti_8000BF74"
	.4byte fn_8032BC08
	.4byte 0x000000CC
	.4byte "@etb_80009118"
.endobj "@eti_8000BF74"

# 0x8032BC08..0x8032BCD4 | size: 0xCC
.text
.balign 4

# .text:0x0 | 0x8032BC08 | size: 0xCC
.fn fn_8032BC08, global
/* 8032BC08 00321988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BC0C 0032198C  7C 08 02 A6 */	mflr r0
/* 8032BC10 00321990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BC14 00321994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BC18 00321998  7C DF 33 78 */	mr r31, r6
/* 8032BC1C 0032199C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8032BC20 003219A0  7C 7E 1B 78 */	mr r30, r3
/* 8032BC24 003219A4  48 00 01 39 */	bl fn_8032BD5C
/* 8032BC28 003219A8  54 60 46 3E */	srwi r0, r3, 24
/* 8032BC2C 003219AC  7C 03 07 74 */	extsb r3, r0
/* 8032BC30 003219B0  7C 03 00 D0 */	neg r0, r3
/* 8032BC34 003219B4  7C 00 1B 78 */	or r0, r0, r3
/* 8032BC38 003219B8  54 00 0F FF */	srwi. r0, r0, 31
/* 8032BC3C 003219BC  41 82 00 7C */	beq .L_8032BCB8
/* 8032BC40 003219C0  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8032BC44 003219C4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8032BC48 003219C8  38 03 00 10 */	addi r0, r3, 0x10
/* 8032BC4C 003219CC  54 04 00 36 */	clrrwi r4, r0, 4
/* 8032BC50 003219D0  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 8032BC54 003219D4  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 8032BC58 003219D8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8032BC5C 003219DC  7C A7 22 14 */	add r5, r7, r4
/* 8032BC60 003219E0  7C 05 00 40 */	cmplw r5, r0
/* 8032BC64 003219E4  41 81 00 0C */	bgt .L_8032BC70
/* 8032BC68 003219E8  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8032BC6C 003219EC  48 00 00 18 */	b .L_8032BC84
.L_8032BC70:
/* 8032BC70 003219F0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8032BC74 003219F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8032BC78 003219F8  7D 89 03 A6 */	mtctr r12
/* 8032BC7C 003219FC  4E 80 04 21 */	bctrl
/* 8032BC80 00321A00  7C 67 1B 78 */	mr r7, r3
.L_8032BC84:
/* 8032BC84 00321A04  38 80 03 E8 */	li r4, 0x3e8
/* 8032BC88 00321A08  38 C0 00 03 */	li r6, 0x3
/* 8032BC8C 00321A0C  38 A0 00 04 */	li r5, 0x4
/* 8032BC90 00321A10  38 00 00 02 */	li r0, 0x2
/* 8032BC94 00321A14  90 FF 00 18 */	stw r7, 0x18(r31)
/* 8032BC98 00321A18  38 60 00 00 */	li r3, 0x0
/* 8032BC9C 00321A1C  90 DF 00 10 */	stw r6, 0x10(r31)
/* 8032BCA0 00321A20  90 BF 00 14 */	stw r5, 0x14(r31)
/* 8032BCA4 00321A24  90 9F 00 08 */	stw r4, 0x8(r31)
/* 8032BCA8 00321A28  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8032BCAC 00321A2C  90 9F 00 04 */	stw r4, 0x4(r31)
/* 8032BCB0 00321A30  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8032BCB4 00321A34  48 00 00 08 */	b .L_8032BCBC
.L_8032BCB8:
/* 8032BCB8 00321A38  38 60 00 01 */	li r3, 0x1
.L_8032BCBC:
/* 8032BCBC 00321A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BCC0 00321A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BCC4 00321A44  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8032BCC8 00321A48  7C 08 03 A6 */	mtlr r0
/* 8032BCCC 00321A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BCD0 00321A50  4E 80 00 20 */	blr
.endfn fn_8032BC08
