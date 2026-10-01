.include "macros.inc"
.file "auto_fn_802C0718_text"

# 0x80007B8C..0x80007BA8 | size: 0x1C
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007B8C | size: 0x1C
.obj "@etb_80007B8C", local
.hidden "@etb_80007B8C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 * 
 * PC actions:
 * PC=00000080:00000098, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0DC4"
 * Has end bit
 */
	.4byte 0x10080000
	.4byte 0x00000080
	.4byte 0x00060010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte dtor_802A0DC4
.endobj "@etb_80007B8C"

# 0x8000A930..0x8000A93C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A930 | size: 0xC
.obj "@eti_8000A930", local
.hidden "@eti_8000A930"
	.4byte fn_802C0718
	.4byte 0x000000B8
	.4byte "@etb_80007B8C"
.endobj "@eti_8000A930"

# 0x802C0718..0x802C07D0 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x802C0718 | size: 0xB8
.fn fn_802C0718, global
/* 802C0718 002B6498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C071C 002B649C  7C 08 02 A6 */	mflr r0
/* 802C0720 002B64A0  3C E0 80 48 */	lis r7, lbl_80486EF8@ha
/* 802C0724 002B64A4  7C 88 23 78 */	mr r8, r4
/* 802C0728 002B64A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C072C 002B64AC  38 00 00 01 */	li r0, 0x1
/* 802C0730 002B64B0  38 E7 6E F8 */	addi r7, r7, lbl_80486EF8@l
/* 802C0734 002B64B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0738 002B64B8  7C BF 2B 78 */	mr r31, r5
/* 802C073C 002B64BC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802C0740 002B64C0  7C 7E 1B 78 */	mr r30, r3
/* 802C0744 002B64C4  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802C0748 002B64C8  90 C3 00 08 */	stw r6, 0x8(r3)
/* 802C074C 002B64CC  90 E3 00 00 */	stw r7, 0x0(r3)
/* 802C0750 002B64D0  48 00 00 08 */	b .L_802C0758
.L_802C0754:
/* 802C0754 002B64D4  7C 08 03 78 */	mr r8, r0
.L_802C0758:
/* 802C0758 002B64D8  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802C075C 002B64DC  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C0760 002B64E0  40 82 FF F4 */	bne .L_802C0754
/* 802C0764 002B64E4  91 03 00 0C */	stw r8, 0xc(r3)
/* 802C0768 002B64E8  7F E5 FB 78 */	mr r5, r31
/* 802C076C 002B64EC  48 00 00 08 */	b .L_802C0774
.L_802C0770:
/* 802C0770 002B64F0  7C 05 03 78 */	mr r5, r0
.L_802C0774:
/* 802C0774 002B64F4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802C0778 002B64F8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C077C 002B64FC  40 82 FF F4 */	bne .L_802C0770
/* 802C0780 002B6500  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802C0784 002B6504  80 64 00 00 */	lwz r3, 0x0(r4)
/* 802C0788 002B6508  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C078C 002B650C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802C0790 002B6510  7D 89 03 A6 */	mtctr r12
/* 802C0794 002B6514  4E 80 04 21 */	bctrl
/* 802C0798 002B6518  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802C079C 002B651C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802C07A0 002B6520  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C07A4 002B6524  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802C07A8 002B6528  7D 89 03 A6 */	mtctr r12
/* 802C07AC 002B652C  4E 80 04 21 */	bctrl
/* 802C07B0 002B6530  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802C07B4 002B6534  7F C3 F3 78 */	mr r3, r30
/* 802C07B8 002B6538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C07BC 002B653C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802C07C0 002B6540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C07C4 002B6544  7C 08 03 A6 */	mtlr r0
/* 802C07C8 002B6548  38 21 00 10 */	addi r1, r1, 0x10
/* 802C07CC 002B654C  4E 80 00 20 */	blr
.endfn fn_802C0718
