.include "macros.inc"
.file "auto_fn_802E609C_text"

# 0x802E609C..0x802E60EC | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802E609C | size: 0x50
.fn fn_802E609C, global
/* 802E609C 002DBE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E60A0 002DBE20  7C 08 02 A6 */	mflr r0
/* 802E60A4 002DBE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E60A8 002DBE28  4B FF FA 6D */	bl fn_802E5B14
/* 802E60AC 002DBE2C  3D 00 80 41 */	lis r8, lbl_804131E8@ha
/* 802E60B0 002DBE30  3C E0 80 53 */	lis r7, lbl_80533170@ha
/* 802E60B4 002DBE34  3C C0 80 2E */	lis r6, fn_802E5AE0@ha
/* 802E60B8 002DBE38  3C 80 80 2E */	lis r4, fn_802E5B00@ha
/* 802E60BC 002DBE3C  39 08 31 E8 */	addi r8, r8, lbl_804131E8@l
/* 802E60C0 002DBE40  38 A7 31 70 */	addi r5, r7, lbl_80533170@l
/* 802E60C4 002DBE44  38 C6 5A E0 */	addi r6, r6, fn_802E5AE0@l
/* 802E60C8 002DBE48  38 84 5B 00 */	addi r4, r4, fn_802E5B00@l
/* 802E60CC 002DBE4C  91 07 31 70 */	stw r8, lbl_80533170@l(r7)
/* 802E60D0 002DBE50  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802E60D4 002DBE54  90 85 00 08 */	stw r4, 0x8(r5)
/* 802E60D8 002DBE58  90 65 00 0C */	stw r3, 0xc(r5)
/* 802E60DC 002DBE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E60E0 002DBE60  7C 08 03 A6 */	mtlr r0
/* 802E60E4 002DBE64  38 21 00 10 */	addi r1, r1, 0x10
/* 802E60E8 002DBE68  4E 80 00 20 */	blr
.endfn fn_802E609C

# 0x80406720..0x80406724 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802E609C
