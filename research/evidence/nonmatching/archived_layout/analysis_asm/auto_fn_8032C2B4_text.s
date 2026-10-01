.include "macros.inc"
.file "auto_fn_8032C2B4_text"

# 0x8032C2B4..0x8032C304 | size: 0x50
.text
.balign 4

# .text:0x0 | 0x8032C2B4 | size: 0x50
.fn fn_8032C2B4, global
/* 8032C2B4 00322034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032C2B8 00322038  7C 08 02 A6 */	mflr r0
/* 8032C2BC 0032203C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032C2C0 00322040  4B FF FB 81 */	bl fn_8032BE40
/* 8032C2C4 00322044  3D 00 80 41 */	lis r8, lbl_804146C0@ha
/* 8032C2C8 00322048  3C E0 80 53 */	lis r7, lbl_80533300@ha
/* 8032C2CC 0032204C  3C C0 80 33 */	lis r6, fn_8032BDE4@ha
/* 8032C2D0 00322050  3C 80 80 33 */	lis r4, fn_8032BE2C@ha
/* 8032C2D4 00322054  39 08 46 C0 */	addi r8, r8, lbl_804146C0@l
/* 8032C2D8 00322058  38 A7 33 00 */	addi r5, r7, lbl_80533300@l
/* 8032C2DC 0032205C  38 C6 BD E4 */	addi r6, r6, fn_8032BDE4@l
/* 8032C2E0 00322060  38 84 BE 2C */	addi r4, r4, fn_8032BE2C@l
/* 8032C2E4 00322064  91 07 33 00 */	stw r8, lbl_80533300@l(r7)
/* 8032C2E8 00322068  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8032C2EC 0032206C  90 85 00 08 */	stw r4, 0x8(r5)
/* 8032C2F0 00322070  90 65 00 0C */	stw r3, 0xc(r5)
/* 8032C2F4 00322074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032C2F8 00322078  7C 08 03 A6 */	mtlr r0
/* 8032C2FC 0032207C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032C300 00322080  4E 80 00 20 */	blr
.endfn fn_8032C2B4

# 0x80406764..0x80406768 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8032C2B4
