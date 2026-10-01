.include "macros.inc"
.file "auto_dtor_802A2654_text"

# 0x800068D0..0x800068D8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068D0 | size: 0x8
.obj "@etb_800068D0", local
.hidden "@etb_800068D0"
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
.endobj "@etb_800068D0"

# 0x80009CB8..0x80009CC4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009CB8 | size: 0xC
.obj "@eti_80009CB8", local
.hidden "@eti_80009CB8"
	.4byte dtor_802A2654
	.4byte 0x0000005C
	.4byte "@etb_800068D0"
.endobj "@eti_80009CB8"

# 0x802A2654..0x802A26B0 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A2654 | size: 0x5C
.fn dtor_802A2654, global
/* 802A2654 002983D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2658 002983D8  7C 08 02 A6 */	mflr r0
/* 802A265C 002983DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A2660 002983E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2664 002983E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2668 002983E8  7C 7F 1B 78 */	mr r31, r3
/* 802A266C 002983EC  41 82 00 2C */	beq .L_802A2698
/* 802A2670 002983F0  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A2674 002983F4  40 81 00 24 */	ble .L_802A2698
/* 802A2678 002983F8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A267C 002983FC  7F E4 FB 78 */	mr r4, r31
/* 802A2680 00298400  38 A0 00 08 */	li r5, 0x8
/* 802A2684 00298404  38 C0 00 1D */	li r6, 0x1d
/* 802A2688 00298408  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A268C 0029840C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A2690 00298410  7D 89 03 A6 */	mtctr r12
/* 802A2694 00298414  4E 80 04 21 */	bctrl
.L_802A2698:
/* 802A2698 00298418  7F E3 FB 78 */	mr r3, r31
/* 802A269C 0029841C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A26A0 00298420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A26A4 00298424  7C 08 03 A6 */	mtlr r0
/* 802A26A8 00298428  38 21 00 10 */	addi r1, r1, 0x10
/* 802A26AC 0029842C  4E 80 00 20 */	blr
.endfn dtor_802A2654
