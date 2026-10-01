.include "macros.inc"
.file "auto_fn_802E47D8_text"

# 0x802E47D8..0x802E4828 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E47D8 | size: 0x50
.fn fn_802E47D8, global
/* 802E47D8 002DA558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E47DC 002DA55C  7C 08 02 A6 */	mflr r0
/* 802E47E0 002DA560  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E47E4 002DA564  4B FF FF 75 */	bl fn_802E4758
/* 802E47E8 002DA568  3D 00 80 41 */	lis r8, lbl_80413110@ha
/* 802E47EC 002DA56C  3C E0 80 53 */	lis r7, lbl_805330D8@ha
/* 802E47F0 002DA570  3C C0 80 2E */	lis r6, fn_802E4724@ha
/* 802E47F4 002DA574  3C 80 80 2E */	lis r4, fn_802E4744@ha
/* 802E47F8 002DA578  39 08 31 10 */	addi r8, r8, lbl_80413110@l
/* 802E47FC 002DA57C  38 A7 30 D8 */	addi r5, r7, lbl_805330D8@l
/* 802E4800 002DA580  38 C6 47 24 */	addi r6, r6, fn_802E4724@l
/* 802E4804 002DA584  38 84 47 44 */	addi r4, r4, fn_802E4744@l
/* 802E4808 002DA588  91 07 30 D8 */	stw r8, lbl_805330D8@l(r7)
/* 802E480C 002DA58C  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E4810 002DA590  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E4814 002DA594  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E4818 002DA598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E481C 002DA59C  7C 08 03 A6 */	mtlr r0
/* 802E4820 002DA5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4824 002DA5A4  4E 80 00 20 */	blr
.endfn fn_802E47D8

# 0x8040670C..0x80406710 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E47D8
