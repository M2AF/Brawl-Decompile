.include "macros.inc"
.file "auto_fn_802D2424_text"

# 0x80008490..0x80008498 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008490 | size: 0x8
.obj "@etb_80008490", local
.hidden "@etb_80008490"
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
.endobj "@etb_80008490"

# 0x8000B248..0x8000B254 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B248 | size: 0xC
.obj "@eti_8000B248", local
.hidden "@eti_8000B248"
	.4byte fn_802D2424
	.4byte 0x000000F4
	.4byte "@etb_80008490"
.endobj "@eti_8000B248"

# 0x802D2424..0x802D2518 | size: 0xF4
.text
.balign 4

# .text:0x0 | 0x802D2424 | size: 0xF4
.fn fn_802D2424, global
/* 802D2424 002C81A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D2428 002C81A8  7C 08 02 A6 */	mflr r0
/* 802D242C 002C81AC  38 A0 00 01 */	li r5, 0x1
/* 802D2430 002C81B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D2434 002C81B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D2438 002C81B8  3F E0 80 41 */	lis r31, lbl_80410618@ha
/* 802D243C 002C81BC  3B FF 06 18 */	addi r31, r31, lbl_80410618@l
/* 802D2440 002C81C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D2444 002C81C4  7C 9E 23 78 */	mr r30, r4
/* 802D2448 002C81C8  38 9F 00 12 */	addi r4, r31, 0x12
/* 802D244C 002C81CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D2450 002C81D0  7C 7D 1B 78 */	mr r29, r3
/* 802D2454 002C81D4  7F C3 F3 78 */	mr r3, r30
/* 802D2458 002C81D8  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D245C 002C81DC  7F A6 EB 78 */	mr r6, r29
/* 802D2460 002C81E0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D2464 002C81E4  7D 89 03 A6 */	mtctr r12
/* 802D2468 002C81E8  4E 80 04 21 */	bctrl
/* 802D246C 002C81EC  80 DD 00 38 */	lwz r6, 0x38(r29)
/* 802D2470 002C81F0  38 9F 00 1B */	addi r4, r31, 0x1b
/* 802D2474 002C81F4  54 C0 00 01 */	clrrwi. r0, r6, 31
/* 802D2478 002C81F8  40 82 00 30 */	bne .L_802D24A8
/* 802D247C 002C81FC  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D2480 002C8200  54 C0 00 BE */	clrlwi r0, r6, 2
/* 802D2484 002C8204  80 BD 00 34 */	lwz r5, 0x34(r29)
/* 802D2488 002C8208  1D 00 00 30 */	mulli r8, r0, 0x30
/* 802D248C 002C820C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D2490 002C8210  7F C3 F3 78 */	mr r3, r30
/* 802D2494 002C8214  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 802D2498 002C8218  1C E5 00 30 */	mulli r7, r5, 0x30
/* 802D249C 002C821C  38 A0 00 01 */	li r5, 0x1
/* 802D24A0 002C8220  7D 89 03 A6 */	mtctr r12
/* 802D24A4 002C8224  4E 80 04 21 */	bctrl
.L_802D24A8:
/* 802D24A8 002C8228  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 802D24AC 002C822C  3C 60 80 41 */	lis r3, lbl_80410618@ha
/* 802D24B0 002C8230  38 63 06 18 */	addi r3, r3, lbl_80410618@l
/* 802D24B4 002C8234  54 A0 00 01 */	clrrwi. r0, r5, 31
/* 802D24B8 002C8238  38 83 00 1B */	addi r4, r3, 0x1b
/* 802D24BC 002C823C  40 82 00 2C */	bne .L_802D24E8
/* 802D24C0 002C8240  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D24C4 002C8244  54 A8 20 36 */	slwi r8, r5, 4
/* 802D24C8 002C8248  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 802D24CC 002C824C  7F C3 F3 78 */	mr r3, r30
/* 802D24D0 002C8250  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802D24D4 002C8254  38 A0 00 01 */	li r5, 0x1
/* 802D24D8 002C8258  54 07 20 36 */	slwi r7, r0, 4
/* 802D24DC 002C825C  80 DD 00 40 */	lwz r6, 0x40(r29)
/* 802D24E0 002C8260  7D 89 03 A6 */	mtctr r12
/* 802D24E4 002C8264  4E 80 04 21 */	bctrl
.L_802D24E8:
/* 802D24E8 002C8268  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 802D24EC 002C826C  7F C3 F3 78 */	mr r3, r30
/* 802D24F0 002C8270  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802D24F4 002C8274  7D 89 03 A6 */	mtctr r12
/* 802D24F8 002C8278  4E 80 04 21 */	bctrl
/* 802D24FC 002C827C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D2500 002C8280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D2504 002C8284  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D2508 002C8288  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D250C 002C828C  7C 08 03 A6 */	mtlr r0
/* 802D2510 002C8290  38 21 00 20 */	addi r1, r1, 0x20
/* 802D2514 002C8294  4E 80 00 20 */	blr
.endfn fn_802D2424
