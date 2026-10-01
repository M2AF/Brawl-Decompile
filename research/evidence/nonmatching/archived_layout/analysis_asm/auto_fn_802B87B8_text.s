.include "macros.inc"
.file "auto_fn_802B87B8_text"

# 0x8000769C..0x800076C4 | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000769C | size: 0x28
.obj "@etb_8000769C", local
.hidden "@etb_8000769C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 * 
 * PC actions:
 * PC=0000006C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYMEMBER
 * Member: 0x10(r31)
 * Dtor: "dtor_802A9A5C"
 * 00001C:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_802A0DC4"
 * Has end bit
 */
	.4byte 0x08080000
	.4byte 0x0000006C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001F
	.4byte 0x00000010
	.4byte dtor_802A9A5C
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_802A0DC4
.endobj "@etb_8000769C"

# 0x8000A5F4..0x8000A600 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A5F4 | size: 0xC
.obj "@eti_8000A5F4", local
.hidden "@eti_8000A5F4"
	.4byte fn_802B87B8
	.4byte 0x00000084
	.4byte "@etb_8000769C"
.endobj "@eti_8000A5F4"

# 0x802B87B8..0x802B883C | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802B87B8 | size: 0x84
.fn fn_802B87B8, global
/* 802B87B8 002AE538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B87BC 002AE53C  7C 08 02 A6 */	mflr r0
/* 802B87C0 002AE540  35 43 00 10 */	addic. r10, r3, 0x10
/* 802B87C4 002AE544  3D 20 80 48 */	lis r9, lbl_80486CE8@ha
/* 802B87C8 002AE548  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B87CC 002AE54C  3C 80 80 00 */	lis r4, 0x8000
/* 802B87D0 002AE550  38 00 00 01 */	li r0, 0x1
/* 802B87D4 002AE554  39 29 6C E8 */	addi r9, r9, lbl_80486CE8@l
/* 802B87D8 002AE558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B87DC 002AE55C  39 0A 00 0C */	addi r8, r10, 0xc
/* 802B87E0 002AE560  38 84 00 01 */	addi r4, r4, 0x1
/* 802B87E4 002AE564  38 A0 00 00 */	li r5, 0x0
/* 802B87E8 002AE568  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802B87EC 002AE56C  7C 7F 1B 78 */	mr r31, r3
/* 802B87F0 002AE570  90 E3 00 08 */	stw r7, 0x8(r3)
/* 802B87F4 002AE574  91 23 00 00 */	stw r9, 0x0(r3)
/* 802B87F8 002AE578  91 0A 00 00 */	stw r8, 0x0(r10)
/* 802B87FC 002AE57C  90 AA 00 04 */	stw r5, 0x4(r10)
/* 802B8800 002AE580  90 8A 00 08 */	stw r4, 0x8(r10)
/* 802B8804 002AE584  80 06 00 00 */	lwz r0, 0x0(r6)
/* 802B8808 002AE588  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B880C 002AE58C  41 82 00 10 */	beq .L_802B881C
/* 802B8810 002AE590  91 0A 00 00 */	stw r8, 0x0(r10)
/* 802B8814 002AE594  90 AA 00 04 */	stw r5, 0x4(r10)
/* 802B8818 002AE598  90 8A 00 08 */	stw r4, 0x8(r10)
.L_802B881C:
/* 802B881C 002AE59C  38 63 00 10 */	addi r3, r3, 0x10
/* 802B8820 002AE5A0  48 04 42 F5 */	bl fn_802FCB14
/* 802B8824 002AE5A4  7F E3 FB 78 */	mr r3, r31
/* 802B8828 002AE5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B882C 002AE5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8830 002AE5B0  7C 08 03 A6 */	mtlr r0
/* 802B8834 002AE5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8838 002AE5B8  4E 80 00 20 */	blr
.endfn fn_802B87B8
