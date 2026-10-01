.include "macros.inc"
.file "auto_fn_80314554_text"

# 0x80008B6C..0x80008B74 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008B6C | size: 0x8
.obj "@etb_80008B6C", local
.hidden "@etb_80008B6C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80008B6C"

# 0x8000BA58..0x8000BA64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BA58 | size: 0xC
.obj "@eti_8000BA58", local
.hidden "@eti_8000BA58"
	.4byte fn_80314554
	.4byte 0x000000C0
	.4byte "@etb_80008B6C"
.endobj "@eti_8000BA58"

# 0x80314554..0x80314614 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x80314554 | size: 0xC0
.fn fn_80314554, global
/* 80314554 0030A2D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80314558 0030A2D8  7C 08 02 A6 */	mflr r0
/* 8031455C 0030A2DC  89 26 00 08 */	lbz r9, 0x8(r6)
/* 80314560 0030A2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80314564 0030A2E4  38 00 00 00 */	li r0, 0x0
/* 80314568 0030A2E8  89 06 00 09 */	lbz r8, 0x9(r6)
/* 8031456C 0030A2EC  7D 2A 07 74 */	extsb r10, r9
/* 80314570 0030A2F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80314574 0030A2F4  7C DF 33 78 */	mr r31, r6
/* 80314578 0030A2F8  88 E6 00 0A */	lbz r7, 0xa(r6)
/* 8031457C 0030A2FC  7D 09 07 74 */	extsb r9, r8
/* 80314580 0030A300  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80314584 0030A304  7C BE 2B 78 */	mr r30, r5
/* 80314588 0030A308  7C E8 07 74 */	extsb r8, r7
/* 8031458C 0030A30C  7D 45 53 78 */	mr r5, r10
/* 80314590 0030A310  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80314594 0030A314  7C 7D 1B 78 */	mr r29, r3
/* 80314598 0030A318  88 66 00 0B */	lbz r3, 0xb(r6)
/* 8031459C 0030A31C  38 DD 00 20 */	addi r6, r29, 0x20
/* 803145A0 0030A320  91 5D 00 00 */	stw r10, 0x0(r29)
/* 803145A4 0030A324  7C 67 07 74 */	extsb r7, r3
/* 803145A8 0030A328  7C 83 23 78 */	mr r3, r4
/* 803145AC 0030A32C  91 3D 00 04 */	stw r9, 0x4(r29)
/* 803145B0 0030A330  7F E4 FB 78 */	mr r4, r31
/* 803145B4 0030A334  91 1D 00 08 */	stw r8, 0x8(r29)
/* 803145B8 0030A338  90 FD 00 0C */	stw r7, 0xc(r29)
/* 803145BC 0030A33C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 803145C0 0030A340  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803145C4 0030A344  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 803145C8 0030A348  7D 89 03 A6 */	mtctr r12
/* 803145CC 0030A34C  4E 80 04 21 */	bctrl
/* 803145D0 0030A350  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 803145D4 0030A354  7F C3 F3 78 */	mr r3, r30
/* 803145D8 0030A358  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 803145DC 0030A35C  38 DD 00 E0 */	addi r6, r29, 0xe0
/* 803145E0 0030A360  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 803145E4 0030A364  54 00 08 3C */	slwi r0, r0, 1
/* 803145E8 0030A368  80 BD 00 04 */	lwz r5, 0x4(r29)
/* 803145EC 0030A36C  7C 9F 02 14 */	add r4, r31, r0
/* 803145F0 0030A370  7D 89 03 A6 */	mtctr r12
/* 803145F4 0030A374  4E 80 04 21 */	bctrl
/* 803145F8 0030A378  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803145FC 0030A37C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80314600 0030A380  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80314604 0030A384  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80314608 0030A388  7C 08 03 A6 */	mtlr r0
/* 8031460C 0030A38C  38 21 00 20 */	addi r1, r1, 0x20
/* 80314610 0030A390  4E 80 00 20 */	blr
.endfn fn_80314554
