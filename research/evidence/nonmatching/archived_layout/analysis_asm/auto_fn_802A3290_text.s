.include "macros.inc"
.file "auto_fn_802A3290_text"

# 0x80006950..0x80006958 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006950 | size: 0x8
.obj "@etb_80006950", local
.hidden "@etb_80006950"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80006950"

# 0x80009D18..0x80009D24 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D18 | size: 0xC
.obj "@eti_80009D18", local
.hidden "@eti_80009D18"
	.4byte fn_802A3290
	.4byte 0x000000C0
	.4byte "@etb_80006950"
.endobj "@eti_80009D18"

# 0x802A3290..0x802A3350 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x802A3290 | size: 0xC0
.fn fn_802A3290, global
/* 802A3290 00299010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A3294 00299014  7C 08 02 A6 */	mflr r0
/* 802A3298 00299018  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A329C 0029901C  80 04 00 08 */	lwz r0, 0x8(r4)
/* 802A32A0 00299020  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A32A4 00299024  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 802A32A8 00299028  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A32AC 0029902C  7C DE 33 78 */	mr r30, r6
/* 802A32B0 00299030  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A32B4 00299034  7C BD 2B 78 */	mr r29, r5
/* 802A32B8 00299038  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A32BC 0029903C  7C 7C 1B 78 */	mr r28, r3
/* 802A32C0 00299040  90 01 00 10 */	stw r0, 0x10(r1)
/* 802A32C4 00299044  80 04 00 04 */	lwz r0, 0x4(r4)
/* 802A32C8 00299048  90 81 00 14 */	stw r4, 0x14(r1)
/* 802A32CC 0029904C  38 81 00 08 */	addi r4, r1, 0x8
/* 802A32D0 00299050  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 802A32D4 00299054  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A32D8 00299058  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A32DC 0029905C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A32E0 00299060  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A32E4 00299064  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A32E8 00299068  7D 89 03 A6 */	mtctr r12
/* 802A32EC 0029906C  4E 80 04 21 */	bctrl
/* 802A32F0 00299070  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802A32F4 00299074  2C 00 00 00 */	cmpwi r0, 0x0
/* 802A32F8 00299078  41 82 00 38 */	beq .L_802A3330
/* 802A32FC 0029907C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802A3300 00299080  7F A5 EB 78 */	mr r5, r29
/* 802A3304 00299084  80 FF 00 14 */	lwz r7, 0x14(r31)
/* 802A3308 00299088  7F C6 F3 78 */	mr r6, r30
/* 802A330C 0029908C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802A3310 00299090  38 81 00 08 */	addi r4, r1, 0x8
/* 802A3314 00299094  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A3318 00299098  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A331C 0029909C  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 802A3320 002990A0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3324 002990A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A3328 002990A8  7D 89 03 A6 */	mtctr r12
/* 802A332C 002990AC  4E 80 04 21 */	bctrl
.L_802A3330:
/* 802A3330 002990B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A3334 002990B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802A3338 002990B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802A333C 002990BC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802A3340 002990C0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802A3344 002990C4  7C 08 03 A6 */	mtlr r0
/* 802A3348 002990C8  38 21 00 30 */	addi r1, r1, 0x30
/* 802A334C 002990CC  4E 80 00 20 */	blr
.endfn fn_802A3290
