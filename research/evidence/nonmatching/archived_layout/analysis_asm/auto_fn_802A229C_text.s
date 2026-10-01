.include "macros.inc"
.file "auto_fn_802A229C_text"

# 0x800068A8..0x800068B0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068A8 | size: 0x8
.obj "@etb_800068A8", local
.hidden "@etb_800068A8"
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
.endobj "@etb_800068A8"

# 0x80009C94..0x80009CA0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009C94 | size: 0xC
.obj "@eti_80009C94", local
.hidden "@eti_80009C94"
	.4byte fn_802A229C
	.4byte 0x00000068
	.4byte "@etb_800068A8"
.endobj "@eti_80009C94"

# 0x802A229C..0x802A2304 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802A229C | size: 0x68
.fn fn_802A229C, global
/* 802A229C 0029801C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A22A0 00298020  7C 08 02 A6 */	mflr r0
/* 802A22A4 00298024  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A22A8 00298028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A22AC 0029802C  7C 9F 23 78 */	mr r31, r4
/* 802A22B0 00298030  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A22B4 00298034  7C 7E 1B 78 */	mr r30, r3
/* 802A22B8 00298038  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A22BC 0029803C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A22C0 00298040  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802A22C4 00298044  7D 89 03 A6 */	mtctr r12
/* 802A22C8 00298048  4E 80 04 21 */	bctrl
/* 802A22CC 0029804C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802A22D0 00298050  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A22D4 00298054  41 82 00 18 */	beq .L_802A22EC
/* 802A22D8 00298058  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A22DC 0029805C  7F E4 FB 78 */	mr r4, r31
/* 802A22E0 00298060  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802A22E4 00298064  7D 89 03 A6 */	mtctr r12
/* 802A22E8 00298068  4E 80 04 21 */	bctrl
.L_802A22EC:
/* 802A22EC 0029806C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A22F0 00298070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A22F4 00298074  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A22F8 00298078  7C 08 03 A6 */	mtlr r0
/* 802A22FC 0029807C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2300 00298080  4E 80 00 20 */	blr
.endfn fn_802A229C
