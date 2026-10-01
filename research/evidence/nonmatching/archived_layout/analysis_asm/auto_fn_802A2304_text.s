.include "macros.inc"
.file "auto_fn_802A2304_text"

# 0x800068B0..0x800068B8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800068B0 | size: 0x8
.obj "@etb_800068B0", local
.hidden "@etb_800068B0"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 * Saved GPR range: r30-r31
 */
	.4byte 0x10880000
	.4byte 0x00000000
.endobj "@etb_800068B0"

# 0x80009CA0..0x80009CAC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009CA0 | size: 0xC
.obj "@eti_80009CA0", local
.hidden "@eti_80009CA0"
	.4byte fn_802A2304
	.4byte 0x00000088
	.4byte "@etb_800068B0"
.endobj "@eti_80009CA0"

# 0x802A2304..0x802A238C | size: 0x88
.text
.balign 4

# .text:0x0 | 0x802A2304 | size: 0x88
.fn fn_802A2304, global
/* 802A2304 00298084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A2308 00298088  7C 08 02 A6 */	mflr r0
/* 802A230C 0029808C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A2310 00298090  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802A2314 00298094  FF E0 10 90 */	fmr f31, f2
/* 802A2318 00298098  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802A231C 0029809C  FF C0 08 90 */	fmr f30, f1
/* 802A2320 002980A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2324 002980A4  7C 9F 23 78 */	mr r31, r4
/* 802A2328 002980A8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802A232C 002980AC  7C 7E 1B 78 */	mr r30, r3
/* 802A2330 002980B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A2334 002980B4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A2338 002980B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A233C 002980BC  7D 89 03 A6 */	mtctr r12
/* 802A2340 002980C0  4E 80 04 21 */	bctrl
/* 802A2344 002980C4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802A2348 002980C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A234C 002980CC  41 82 00 20 */	beq .L_802A236C
/* 802A2350 002980D0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A2354 002980D4  FC 20 F0 90 */	fmr f1, f30
/* 802A2358 002980D8  FC 40 F8 90 */	fmr f2, f31
/* 802A235C 002980DC  7F E4 FB 78 */	mr r4, r31
/* 802A2360 002980E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802A2364 002980E4  7D 89 03 A6 */	mtctr r12
/* 802A2368 002980E8  4E 80 04 21 */	bctrl
.L_802A236C:
/* 802A236C 002980EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A2370 002980F0  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802A2374 002980F4  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802A2378 002980F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A237C 002980FC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802A2380 00298100  7C 08 03 A6 */	mtlr r0
/* 802A2384 00298104  38 21 00 20 */	addi r1, r1, 0x20
/* 802A2388 00298108  4E 80 00 20 */	blr
.endfn fn_802A2304
