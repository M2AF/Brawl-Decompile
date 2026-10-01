.include "macros.inc"
.file "auto_fn_802AA9B8_text"

# 0x80006F1C..0x80006F24 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F1C | size: 0x8
.obj "@etb_80006F1C", local
.hidden "@etb_80006F1C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006F1C"

# 0x8000A0E4..0x8000A0F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A0E4 | size: 0xC
.obj "@eti_8000A0E4", local
.hidden "@eti_8000A0E4"
	.4byte fn_802AA9B8
	.4byte 0x00000080
	.4byte "@etb_80006F1C"
.endobj "@eti_8000A0E4"

# 0x802AA9B8..0x802AAA38 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x802AA9B8 | size: 0x80
.fn fn_802AA9B8, global
/* 802AA9B8 002A0738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AA9BC 002A073C  7C 08 02 A6 */	mflr r0
/* 802AA9C0 002A0740  38 80 00 14 */	li r4, 0x14
/* 802AA9C4 002A0744  38 A0 00 1D */	li r5, 0x1d
/* 802AA9C8 002A0748  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AA9CC 002A074C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AA9D0 002A0750  7C DF 33 78 */	mr r31, r6
/* 802AA9D4 002A0754  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AA9D8 002A0758  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AA9DC 002A075C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802AA9E0 002A0760  7D 89 03 A6 */	mtctr r12
/* 802AA9E4 002A0764  4E 80 04 21 */	bctrl
/* 802AA9E8 002A0768  38 00 00 14 */	li r0, 0x14
/* 802AA9EC 002A076C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AA9F0 002A0770  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802AA9F4 002A0774  41 82 00 30 */	beq .L_802AAA24
/* 802AA9F8 002A0778  38 00 00 01 */	li r0, 0x1
/* 802AA9FC 002A077C  3C A0 80 48 */	lis r5, lbl_80486960@ha
/* 802AAA00 002A0780  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802AAA04 002A0784  3C 80 00 01 */	lis r4, 0x1
/* 802AAA08 002A0788  38 A5 69 60 */	addi r5, r5, lbl_80486960@l
/* 802AAA0C 002A078C  93 E3 00 08 */	stw r31, 0x8(r3)
/* 802AAA10 002A0790  38 04 FF FF */	subi r0, r4, 0x1
/* 802AAA14 002A0794  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802AAA18 002A0798  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802AAA1C 002A079C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 802AAA20 002A07A0  B0 03 00 10 */	sth r0, 0x10(r3)
.L_802AAA24:
/* 802AAA24 002A07A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AAA28 002A07A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AAA2C 002A07AC  7C 08 03 A6 */	mtlr r0
/* 802AAA30 002A07B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802AAA34 002A07B4  4E 80 00 20 */	blr
.endfn fn_802AA9B8
