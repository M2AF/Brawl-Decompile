.include "macros.inc"
.file "auto_fn_803F861C_text"

# 0x80009684..0x8000968C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009684 | size: 0x8
.obj "@etb_80009684", local
.hidden "@etb_80009684"
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
.endobj "@etb_80009684"

# 0x8000C70C..0x8000C718 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C70C | size: 0xC
.obj "@eti_8000C70C", local
.hidden "@eti_8000C70C"
	.4byte fn_803F861C
	.4byte 0x000000C8
	.4byte "@etb_80009684"
.endobj "@eti_8000C70C"

# 0x803F861C..0x803F86E4 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x803F861C | size: 0xC8
.fn fn_803F861C, global
/* 803F861C 003EE39C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F8620 003EE3A0  7C 08 02 A6 */	mflr r0
/* 803F8624 003EE3A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F8628 003EE3A8  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803F862C 003EE3AC  93 C1 00 78 */	stw r30, 0x78(r1)
/* 803F8630 003EE3B0  7C 7E 1B 78 */	mr r30, r3
/* 803F8634 003EE3B4  40 86 00 24 */	bne cr1, .L_803F8658
/* 803F8638 003EE3B8  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803F863C 003EE3BC  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803F8640 003EE3C0  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803F8644 003EE3C4  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803F8648 003EE3C8  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803F864C 003EE3CC  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803F8650 003EE3D0  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803F8654 003EE3D4  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803F8658:
/* 803F8658 003EE3D8  3F E0 80 49 */	lis r31, __files@ha
/* 803F865C 003EE3DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8660 003EE3E0  3B FF 3E 60 */	addi r31, r31, __files@l
/* 803F8664 003EE3E4  38 80 FF FF */	li r4, -0x1
/* 803F8668 003EE3E8  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F866C 003EE3EC  38 7F 00 50 */	addi r3, r31, 0x50
/* 803F8670 003EE3F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803F8674 003EE3F4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F8678 003EE3F8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F867C 003EE3FC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803F8680 003EE400  91 21 00 20 */	stw r9, 0x20(r1)
/* 803F8684 003EE404  91 41 00 24 */	stw r10, 0x24(r1)
/* 803F8688 003EE408  48 00 41 A1 */	bl fwide
/* 803F868C 003EE40C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F8690 003EE410  41 80 00 0C */	blt .L_803F869C
/* 803F8694 003EE414  38 60 FF FF */	li r3, -0x1
/* 803F8698 003EE418  48 00 00 34 */	b .L_803F86CC
.L_803F869C:
/* 803F869C 003EE41C  38 81 00 88 */	addi r4, r1, 0x88
/* 803F86A0 003EE420  38 01 00 08 */	addi r0, r1, 0x8
/* 803F86A4 003EE424  3C A0 01 00 */	lis r5, 0x100
/* 803F86A8 003EE428  3C 60 80 40 */	lis r3, __FileWrite@ha
/* 803F86AC 003EE42C  90 A1 00 68 */	stw r5, 0x68(r1)
/* 803F86B0 003EE430  38 C1 00 68 */	addi r6, r1, 0x68
/* 803F86B4 003EE434  7F C5 F3 78 */	mr r5, r30
/* 803F86B8 003EE438  38 63 85 58 */	addi r3, r3, __FileWrite@l
/* 803F86BC 003EE43C  90 81 00 6C */	stw r4, 0x6c(r1)
/* 803F86C0 003EE440  38 9F 00 50 */	addi r4, r31, 0x50
/* 803F86C4 003EE444  90 01 00 70 */	stw r0, 0x70(r1)
/* 803F86C8 003EE448  4B FF F6 35 */	bl __pformatter_803F7CFC
.L_803F86CC:
/* 803F86CC 003EE44C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F86D0 003EE450  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803F86D4 003EE454  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 803F86D8 003EE458  7C 08 03 A6 */	mtlr r0
/* 803F86DC 003EE45C  38 21 00 80 */	addi r1, r1, 0x80
/* 803F86E0 003EE460  4E 80 00 20 */	blr
.endfn fn_803F861C
