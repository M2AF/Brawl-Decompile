.include "macros.inc"
.file "auto_fn_802AC498_text"

# 0x80006F88..0x80006F90 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006F88 | size: 0x8
.obj "@etb_80006F88", local
.hidden "@etb_80006F88"
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
.endobj "@etb_80006F88"

# 0x8000A15C..0x8000A168 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A15C | size: 0xC
.obj "@eti_8000A15C", local
.hidden "@eti_8000A15C"
	.4byte fn_802AC498
	.4byte 0x0000005C
	.4byte "@etb_80006F88"
.endobj "@eti_8000A15C"

# 0x802AC498..0x802AC4F4 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802AC498 | size: 0x5C
.fn fn_802AC498, global
/* 802AC498 002A2218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AC49C 002A221C  7C 08 02 A6 */	mflr r0
/* 802AC4A0 002A2220  2C 03 00 00 */	cmpwi r3, 0x0
/* 802AC4A4 002A2224  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AC4A8 002A2228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AC4AC 002A222C  7C 7F 1B 78 */	mr r31, r3
/* 802AC4B0 002A2230  41 82 00 2C */	beq .L_802AC4DC
/* 802AC4B4 002A2234  2C 04 00 00 */	cmpwi r4, 0x0
/* 802AC4B8 002A2238  40 81 00 24 */	ble .L_802AC4DC
/* 802AC4BC 002A223C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802AC4C0 002A2240  7F E4 FB 78 */	mr r4, r31
/* 802AC4C4 002A2244  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802AC4C8 002A2248  38 C0 00 1D */	li r6, 0x1d
/* 802AC4CC 002A224C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802AC4D0 002A2250  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802AC4D4 002A2254  7D 89 03 A6 */	mtctr r12
/* 802AC4D8 002A2258  4E 80 04 21 */	bctrl
.L_802AC4DC:
/* 802AC4DC 002A225C  7F E3 FB 78 */	mr r3, r31
/* 802AC4E0 002A2260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AC4E4 002A2264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AC4E8 002A2268  7C 08 03 A6 */	mtlr r0
/* 802AC4EC 002A226C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AC4F0 002A2270  4E 80 00 20 */	blr
.endfn fn_802AC498
