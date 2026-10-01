.include "macros.inc"
.file "auto_fn_802BD350_text"

# 0x80007A04..0x80007A1C | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A04 | size: 0x18
.obj "@etb_80007A04", local
.hidden "@etb_80007A04"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_80007A04"

# 0x8000A810..0x8000A81C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A810 | size: 0xC
.obj "@eti_8000A810", local
.hidden "@eti_8000A810"
	.4byte fn_802BD350
	.4byte 0x00000048
	.4byte "@etb_80007A04"
.endobj "@eti_8000A810"

# 0x802BD350..0x802BD398 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BD350 | size: 0x48
.fn fn_802BD350, global
/* 802BD350 002B30D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD354 002B30D4  7C 08 02 A6 */	mflr r0
/* 802BD358 002B30D8  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802BD35C 002B30DC  C0 02 AC 74 */	lfs f0, lbl_805A3F94@sda21(r0)
/* 802BD360 002B30E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD364 002B30E4  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802BD368 002B30E8  7C 60 1B 78 */	mr r0, r3
/* 802BD36C 002B30EC  7C 83 23 78 */	mr r3, r4
/* 802BD370 002B30F0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BD374 002B30F4  7C 04 03 78 */	mr r4, r0
/* 802BD378 002B30F8  38 C1 00 08 */	addi r6, r1, 0x8
/* 802BD37C 002B30FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BD380 002B3100  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802BD384 002B3104  4B FF E9 09 */	bl fn_802BBC8C
/* 802BD388 002B3108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD38C 002B310C  7C 08 03 A6 */	mtlr r0
/* 802BD390 002B3110  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD394 002B3114  4E 80 00 20 */	blr
.endfn fn_802BD350
