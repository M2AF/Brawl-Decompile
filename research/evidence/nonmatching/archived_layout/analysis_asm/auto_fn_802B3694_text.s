.include "macros.inc"
.file "auto_fn_802B3694_text"

# 0x80007444..0x8000744C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007444 | size: 0x8
.obj "@etb_80007444", local
.hidden "@etb_80007444"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80007444"

# 0x8000A480..0x8000A48C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A480 | size: 0xC
.obj "@eti_8000A480", local
.hidden "@eti_8000A480"
	.4byte fn_802B3694
	.4byte 0x0000006C
	.4byte "@etb_80007444"
.endobj "@eti_8000A480"

# 0x802B3694..0x802B3700 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x802B3694 | size: 0x6C
.fn fn_802B3694, global
/* 802B3694 002A9414  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B3698 002A9418  7C 08 02 A6 */	mflr r0
/* 802B369C 002A941C  3C 80 80 2B */	lis r4, fn_802B3700@ha
/* 802B36A0 002A9420  3D 20 80 2B */	lis r9, fn_802B2490@ha
/* 802B36A4 002A9424  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B36A8 002A9428  3D 00 80 2B */	lis r8, fn_802B1C3C@ha
/* 802B36AC 002A942C  3C E0 80 2B */	lis r7, fn_802B7FD0@ha
/* 802B36B0 002A9430  38 84 37 00 */	addi r4, r4, fn_802B3700@l
/* 802B36B4 002A9434  39 29 24 90 */	addi r9, r9, fn_802B2490@l
/* 802B36B8 002A9438  39 08 1C 3C */	addi r8, r8, fn_802B1C3C@l
/* 802B36BC 002A943C  38 E7 7F D0 */	addi r7, r7, fn_802B7FD0@l
/* 802B36C0 002A9440  39 40 00 00 */	li r10, 0x0
/* 802B36C4 002A9444  38 00 00 01 */	li r0, 0x1
/* 802B36C8 002A9448  90 81 00 08 */	stw r4, 0x8(r1)
/* 802B36CC 002A944C  38 81 00 08 */	addi r4, r1, 0x8
/* 802B36D0 002A9450  38 A0 00 01 */	li r5, 0x1
/* 802B36D4 002A9454  91 21 00 0C */	stw r9, 0xc(r1)
/* 802B36D8 002A9458  38 C0 00 01 */	li r6, 0x1
/* 802B36DC 002A945C  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B36E0 002A9460  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B36E4 002A9464  99 41 00 18 */	stb r10, 0x18(r1)
/* 802B36E8 002A9468  98 01 00 19 */	stb r0, 0x19(r1)
/* 802B36EC 002A946C  48 01 8A 01 */	bl fn_802CC0EC
/* 802B36F0 002A9470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B36F4 002A9474  7C 08 03 A6 */	mtlr r0
/* 802B36F8 002A9478  38 21 00 20 */	addi r1, r1, 0x20
/* 802B36FC 002A947C  4E 80 00 20 */	blr
.endfn fn_802B3694
