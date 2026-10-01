.include "macros.inc"
.file "auto_fn_803F86E4_text"

# 0x8000968C..0x80009694 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000968C | size: 0x8
.obj "@etb_8000968C", local
.hidden "@etb_8000968C"
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
.endobj "@etb_8000968C"

# 0x8000C718..0x8000C724 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C718 | size: 0xC
.obj "@eti_8000C718", local
.hidden "@eti_8000C718"
	.4byte fn_803F86E4
	.4byte 0x000000C4
	.4byte "@etb_8000968C"
.endobj "@eti_8000C718"

# 0x803F86E4..0x803F87A8 | size: 0xC4
.text
.balign 4

# .text:0x0 | 0x803F86E4 | size: 0xC4
.fn fn_803F86E4, global
/* 803F86E4 003EE464  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F86E8 003EE468  7C 08 02 A6 */	mflr r0
/* 803F86EC 003EE46C  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F86F0 003EE470  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 803F86F4 003EE474  7C 9F 23 78 */	mr r31, r4
/* 803F86F8 003EE478  93 C1 00 78 */	stw r30, 0x78(r1)
/* 803F86FC 003EE47C  7C 7E 1B 78 */	mr r30, r3
/* 803F8700 003EE480  40 86 00 24 */	bne cr1, .L_803F8724
/* 803F8704 003EE484  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 803F8708 003EE488  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 803F870C 003EE48C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 803F8710 003EE490  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 803F8714 003EE494  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 803F8718 003EE498  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 803F871C 003EE49C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 803F8720 003EE4A0  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_803F8724:
/* 803F8724 003EE4A4  90 61 00 08 */	stw r3, 0x8(r1)
/* 803F8728 003EE4A8  7F C3 F3 78 */	mr r3, r30
/* 803F872C 003EE4AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 803F8730 003EE4B0  38 80 FF FF */	li r4, -0x1
/* 803F8734 003EE4B4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803F8738 003EE4B8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F873C 003EE4BC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 803F8740 003EE4C0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 803F8744 003EE4C4  91 21 00 20 */	stw r9, 0x20(r1)
/* 803F8748 003EE4C8  91 41 00 24 */	stw r10, 0x24(r1)
/* 803F874C 003EE4CC  48 00 40 DD */	bl fwide
/* 803F8750 003EE4D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803F8754 003EE4D4  41 80 00 0C */	blt .L_803F8760
/* 803F8758 003EE4D8  38 60 FF FF */	li r3, -0x1
/* 803F875C 003EE4DC  48 00 00 34 */	b .L_803F8790
.L_803F8760:
/* 803F8760 003EE4E0  38 E1 00 88 */	addi r7, r1, 0x88
/* 803F8764 003EE4E4  38 01 00 08 */	addi r0, r1, 0x8
/* 803F8768 003EE4E8  3C 80 02 00 */	lis r4, 0x200
/* 803F876C 003EE4EC  3C 60 80 40 */	lis r3, __FileWrite@ha
/* 803F8770 003EE4F0  90 81 00 68 */	stw r4, 0x68(r1)
/* 803F8774 003EE4F4  38 C1 00 68 */	addi r6, r1, 0x68
/* 803F8778 003EE4F8  7F C4 F3 78 */	mr r4, r30
/* 803F877C 003EE4FC  7F E5 FB 78 */	mr r5, r31
/* 803F8780 003EE500  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 803F8784 003EE504  38 63 85 58 */	addi r3, r3, __FileWrite@l
/* 803F8788 003EE508  90 01 00 70 */	stw r0, 0x70(r1)
/* 803F878C 003EE50C  4B FF F5 71 */	bl __pformatter_803F7CFC
.L_803F8790:
/* 803F8790 003EE510  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F8794 003EE514  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803F8798 003EE518  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 803F879C 003EE51C  7C 08 03 A6 */	mtlr r0
/* 803F87A0 003EE520  38 21 00 80 */	addi r1, r1, 0x80
/* 803F87A4 003EE524  4E 80 00 20 */	blr
.endfn fn_803F86E4
