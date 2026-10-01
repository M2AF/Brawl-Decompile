.include "macros.inc"
.file "auto_fn_802D4688_text"

# 0x8000851C..0x80008524 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000851C | size: 0x8
.obj "@etb_8000851C", local
.hidden "@etb_8000851C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000851C"

# 0x8000B2FC..0x8000B308 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B2FC | size: 0xC
.obj "@eti_8000B2FC", local
.hidden "@eti_8000B2FC"
	.4byte fn_802D4688
	.4byte 0x0000006C
	.4byte "@etb_8000851C"
.endobj "@eti_8000B2FC"

# 0x802D4688..0x802D46F4 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802D4688 | size: 0x6C
.fn fn_802D4688, global
/* 802D4688 002CA408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D468C 002CA40C  7C 08 02 A6 */	mflr r0
/* 802D4690 002CA410  3C E0 80 41 */	lis r7, lbl_804107A8@ha
/* 802D4694 002CA414  3C 60 80 53 */	lis r3, lbl_805327F8@ha
/* 802D4698 002CA418  38 E7 07 A8 */	addi r7, r7, lbl_804107A8@l
/* 802D469C 002CA41C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D46A0 002CA420  38 07 01 58 */	addi r0, r7, 0x158
/* 802D46A4 002CA424  3C 80 80 41 */	lis r4, lbl_80410998@ha
/* 802D46A8 002CA428  90 01 00 08 */	stw r0, 0x8(r1)
/* 802D46AC 002CA42C  38 C0 00 06 */	li r6, 0x6
/* 802D46B0 002CA430  3C A0 80 53 */	lis r5, lbl_80532730@ha
/* 802D46B4 002CA434  38 07 01 D0 */	addi r0, r7, 0x1d0
/* 802D46B8 002CA438  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802D46BC 002CA43C  39 27 00 F4 */	addi r9, r7, 0xf4
/* 802D46C0 002CA440  38 63 27 F8 */	addi r3, r3, lbl_805327F8@l
/* 802D46C4 002CA444  38 84 09 98 */	addi r4, r4, lbl_80410998@l
/* 802D46C8 002CA448  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D46CC 002CA44C  38 A5 27 30 */	addi r5, r5, lbl_80532730@l
/* 802D46D0 002CA450  38 C0 00 60 */	li r6, 0x60
/* 802D46D4 002CA454  38 E0 00 00 */	li r7, 0x0
/* 802D46D8 002CA458  39 00 00 00 */	li r8, 0x0
/* 802D46DC 002CA45C  39 40 00 01 */	li r10, 0x1
/* 802D46E0 002CA460  4B FA 81 29 */	bl fn_8027C808
/* 802D46E4 002CA464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D46E8 002CA468  7C 08 03 A6 */	mtlr r0
/* 802D46EC 002CA46C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D46F0 002CA470  4E 80 00 20 */	blr
.endfn fn_802D4688

# 0x8040667C..0x80406680 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802D4688
