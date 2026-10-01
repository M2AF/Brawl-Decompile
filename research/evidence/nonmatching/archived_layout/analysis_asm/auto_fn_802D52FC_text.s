.include "macros.inc"
.file "auto_fn_802D52FC_text"

# 0x80008594..0x8000859C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008594 | size: 0x8
.obj "@etb_80008594", local
.hidden "@etb_80008594"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80008594"

# 0x8000B3B0..0x8000B3BC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B3B0 | size: 0xC
.obj "@eti_8000B3B0", local
.hidden "@eti_8000B3B0"
	.4byte fn_802D52FC
	.4byte 0x000000A8
	.4byte "@etb_80008594"
.endobj "@eti_8000B3B0"

# 0x802D52FC..0x802D53A4 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x802D52FC | size: 0xA8
.fn fn_802D52FC, global
/* 802D52FC 002CB07C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D5300 002CB080  7C 2C 0B 78 */	mr r12, r1
/* 802D5304 002CB084  21 6B FD E0 */	subfic r11, r11, -0x220
/* 802D5308 002CB088  7C 21 59 6E */	stwux r1, r1, r11
/* 802D530C 002CB08C  7C 08 02 A6 */	mflr r0
/* 802D5310 002CB090  38 80 00 00 */	li r4, 0x0
/* 802D5314 002CB094  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D5318 002CB098  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D531C 002CB09C  93 EC FF FC */	stw r31, -0x4(r12)
/* 802D5320 002CB0A0  7C 7F 1B 78 */	mr r31, r3
/* 802D5324 002CB0A4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D5328 002CB0A8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802D532C 002CB0AC  7D 89 03 A6 */	mtctr r12
/* 802D5330 002CB0B0  4E 80 04 21 */	bctrl
/* 802D5334 002CB0B4  C0 2D AB A8 */	lfs f1, lbl_8059EFC8@sda21(r0)
/* 802D5338 002CB0B8  38 83 00 20 */	addi r4, r3, 0x20
/* 802D533C 002CB0BC  38 A3 00 30 */	addi r5, r3, 0x30
/* 802D5340 002CB0C0  38 63 00 10 */	addi r3, r3, 0x10
/* 802D5344 002CB0C4  48 00 1F 1D */	bl fn_802D7260
/* 802D5348 002CB0C8  54 60 46 3E */	srwi r0, r3, 24
/* 802D534C 002CB0CC  7C 00 07 74 */	extsb r0, r0
/* 802D5350 002CB0D0  7C 00 00 34 */	cntlzw r0, r0
/* 802D5354 002CB0D4  54 00 DE 3E */	extrwi r0, r0, 8, 19
/* 802D5358 002CB0D8  7C 03 07 74 */	extsb r3, r0
/* 802D535C 002CB0DC  7C 03 00 D0 */	neg r0, r3
/* 802D5360 002CB0E0  7C 00 1B 78 */	or r0, r0, r3
/* 802D5364 002CB0E4  54 00 0F FF */	srwi. r0, r0, 31
/* 802D5368 002CB0E8  41 82 00 0C */	beq .L_802D5374
/* 802D536C 002CB0EC  38 60 00 00 */	li r3, 0x0
/* 802D5370 002CB0F0  48 00 00 1C */	b .L_802D538C
.L_802D5374:
/* 802D5374 002CB0F4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802D5378 002CB0F8  7F E3 FB 78 */	mr r3, r31
/* 802D537C 002CB0FC  38 80 00 00 */	li r4, 0x0
/* 802D5380 002CB100  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 802D5384 002CB104  7D 89 03 A6 */	mtctr r12
/* 802D5388 002CB108  4E 80 04 21 */	bctrl
.L_802D538C:
/* 802D538C 002CB10C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D5390 002CB110  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D5394 002CB114  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802D5398 002CB118  7C 08 03 A6 */	mtlr r0
/* 802D539C 002CB11C  7D 41 53 78 */	mr r1, r10
/* 802D53A0 002CB120  4E 80 00 20 */	blr
.endfn fn_802D52FC
