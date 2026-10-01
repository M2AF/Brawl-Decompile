.include "macros.inc"
.file "auto_fn_802F0358_text"

# 0x802F0358..0x802F03A8 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x802F0358 | size: 0x50
.fn fn_802F0358, global
/* 802F0358 002E60D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F035C 002E60DC  7C 08 02 A6 */	mflr r0
/* 802F0360 002E60E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F0364 002E60E4  4B FF FD 31 */	bl fn_802F0094
/* 802F0368 002E60E8  3D 00 80 41 */	lis r8, lbl_80413748@ha
/* 802F036C 002E60EC  3C E0 80 53 */	lis r7, lbl_80533200@ha
/* 802F0370 002E60F0  3C C0 80 2F */	lis r6, fn_802F004C@ha
/* 802F0374 002E60F4  3C 80 80 2F */	lis r4, fn_802F0080@ha
/* 802F0378 002E60F8  39 08 37 48 */	addi r8, r8, lbl_80413748@l
/* 802F037C 002E60FC  38 A7 32 00 */	addi r5, r7, lbl_80533200@l
/* 802F0380 002E6100  38 C6 00 4C */	addi r6, r6, fn_802F004C@l
/* 802F0384 002E6104  38 84 00 80 */	addi r4, r4, fn_802F0080@l
/* 802F0388 002E6108  91 07 32 00 */	stw r8, lbl_80533200@l(r7)
/* 802F038C 002E610C  90 C5 00 04 */	stw r6, 0x4(r5)
/* 802F0390 002E6110  90 85 00 08 */	stw r4, 0x8(r5)
/* 802F0394 002E6114  90 65 00 0C */	stw r3, 0xc(r5)
/* 802F0398 002E6118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F039C 002E611C  7C 08 03 A6 */	mtlr r0
/* 802F03A0 002E6120  38 21 00 10 */	addi r1, r1, 0x10
/* 802F03A4 002E6124  4E 80 00 20 */	blr
.endfn fn_802F0358

# 0x8040673C..0x80406740 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_802F0358
