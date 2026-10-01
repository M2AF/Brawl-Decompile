.include "macros.inc"
.file "auto_fn_802E9B40_text"

# 0x802E9B40..0x802E9B90 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E9B40 | size: 0x50
.fn fn_802E9B40, global
/* 802E9B40 002DF8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9B44 002DF8C4  7C 08 02 A6 */	mflr r0
/* 802E9B48 002DF8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9B4C 002DF8CC  4B FF FD 79 */	bl fn_802E98C4
/* 802E9B50 002DF8D0  3D 00 80 41 */	lis r8, lbl_804132C8@ha
/* 802E9B54 002DF8D4  3C E0 80 53 */	lis r7, lbl_805331C8@ha
/* 802E9B58 002DF8D8  3C C0 80 2F */	lis r6, fn_802E9890@ha
/* 802E9B5C 002DF8DC  3C 80 80 2F */	lis r4, fn_802E98B0@ha
/* 802E9B60 002DF8E0  39 08 32 C8 */	addi r8, r8, lbl_804132C8@l
/* 802E9B64 002DF8E4  38 A7 31 C8 */	addi r5, r7, lbl_805331C8@l
/* 802E9B68 002DF8E8  38 C6 98 90 */	addi r6, r6, fn_802E9890@l
/* 802E9B6C 002DF8EC  38 84 98 B0 */	addi r4, r4, fn_802E98B0@l
/* 802E9B70 002DF8F0  91 07 31 C8 */	stw r8, lbl_805331C8@l(r7)
/* 802E9B74 002DF8F4  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E9B78 002DF8F8  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E9B7C 002DF8FC  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E9B80 002DF900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9B84 002DF904  7C 08 03 A6 */	mtlr r0
/* 802E9B88 002DF908  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9B8C 002DF90C  4E 80 00 20 */	blr
.endfn fn_802E9B40

# 0x80406730..0x80406734 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E9B40
