.include "macros.inc"
.file "auto_fn_802C2318_text"

# 0x80007CF8..0x80007D00 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007CF8 | size: 0x8
.obj "@etb_80007CF8", local
.hidden "@etb_80007CF8"
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
.endobj "@etb_80007CF8"

# 0x8000AA5C..0x8000AA68 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AA5C | size: 0xC
.obj "@eti_8000AA5C", local
.hidden "@eti_8000AA5C"
	.4byte fn_802C2318
	.4byte 0x000000A0
	.4byte "@etb_80007CF8"
.endobj "@eti_8000AA5C"

# 0x802C2318..0x802C23B8 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x802C2318 | size: 0xA0
.fn fn_802C2318, global
/* 802C2318 002B8098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C231C 002B809C  7C 08 02 A6 */	mflr r0
/* 802C2320 002B80A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C2324 002B80A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C2328 002B80A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C232C 002B80AC  7C 9F 23 78 */	mr r31, r4
/* 802C2330 002B80B0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802C2334 002B80B4  7C 7E 1B 78 */	mr r30, r3
/* 802C2338 002B80B8  41 82 00 64 */	beq .L_802C239C
/* 802C233C 002B80BC  41 82 00 38 */	beq .L_802C2374
/* 802C2340 002B80C0  41 82 00 34 */	beq .L_802C2374
/* 802C2344 002B80C4  34 03 00 0C */	addic. r0, r3, 0xc
/* 802C2348 002B80C8  41 82 00 2C */	beq .L_802C2374
/* 802C234C 002B80CC  41 82 00 28 */	beq .L_802C2374
/* 802C2350 002B80D0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802C2354 002B80D4  54 00 00 01 */	clrrwi. r0, r0, 31
/* 802C2358 002B80D8  40 82 00 1C */	bne .L_802C2374
/* 802C235C 002B80DC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802C2360 002B80E0  38 C0 00 15 */	li r6, 0x15
/* 802C2364 002B80E4  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802C2368 002B80E8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802C236C 002B80EC  54 05 18 38 */	slwi r5, r0, 3
/* 802C2370 002B80F0  4B FB C7 4D */	bl fn_8027EABC
.L_802C2374:
/* 802C2374 002B80F4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C2378 002B80F8  40 81 00 24 */	ble .L_802C239C
/* 802C237C 002B80FC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C2380 002B8100  7F C4 F3 78 */	mr r4, r30
/* 802C2384 002B8104  A0 BE 00 04 */	lhz r5, 0x4(r30)
/* 802C2388 002B8108  38 C0 00 1D */	li r6, 0x1d
/* 802C238C 002B810C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C2390 002B8110  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2394 002B8114  7D 89 03 A6 */	mtctr r12
/* 802C2398 002B8118  4E 80 04 21 */	bctrl
.L_802C239C:
/* 802C239C 002B811C  7F C3 F3 78 */	mr r3, r30
/* 802C23A0 002B8120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C23A4 002B8124  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802C23A8 002B8128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C23AC 002B812C  7C 08 03 A6 */	mtlr r0
/* 802C23B0 002B8130  38 21 00 10 */	addi r1, r1, 0x10
/* 802C23B4 002B8134  4E 80 00 20 */	blr
.endfn fn_802C2318
