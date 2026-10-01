.include "macros.inc"
.file "auto_fn_802E61A0_text"

# 0x802E61A0..0x802E61F0 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E61A0 | size: 0x50
.fn fn_802E61A0, global
/* 802E61A0 002DBF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E61A4 002DBF24  7C 08 02 A6 */	mflr r0
/* 802E61A8 002DBF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E61AC 002DBF2C  4B FF FF 75 */	bl fn_802E6120
/* 802E61B0 002DBF30  3D 00 80 41 */	lis r8, lbl_804131F8@ha
/* 802E61B4 002DBF34  3C E0 80 53 */	lis r7, lbl_80533180@ha
/* 802E61B8 002DBF38  3C C0 80 2E */	lis r6, fn_802E60EC@ha
/* 802E61BC 002DBF3C  3C 80 80 2E */	lis r4, fn_802E610C@ha
/* 802E61C0 002DBF40  39 08 31 F8 */	addi r8, r8, lbl_804131F8@l
/* 802E61C4 002DBF44  38 A7 31 80 */	addi r5, r7, lbl_80533180@l
/* 802E61C8 002DBF48  38 C6 60 EC */	addi r6, r6, fn_802E60EC@l
/* 802E61CC 002DBF4C  38 84 61 0C */	addi r4, r4, fn_802E610C@l
/* 802E61D0 002DBF50  91 07 31 80 */	stw r8, lbl_80533180@l(r7)
/* 802E61D4 002DBF54  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E61D8 002DBF58  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E61DC 002DBF5C  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E61E0 002DBF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E61E4 002DBF64  7C 08 03 A6 */	mtlr r0
/* 802E61E8 002DBF68  38 21 00 10 */	addi r1, r1, 0x10
/* 802E61EC 002DBF6C  4E 80 00 20 */	blr
.endfn fn_802E61A0

# 0x80406724..0x80406728 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E61A0
