.include "macros.inc"
.file "auto_fn_802C106C_text"

# 0x80007C50..0x80007C58 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007C50 | size: 0x8
.obj "@etb_80007C50", local
.hidden "@etb_80007C50"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 * Saved GPR range: r28-r31
 */
	.4byte 0x20880000
	.4byte 0x00000000
.endobj "@etb_80007C50"

# 0x8000A9C0..0x8000A9CC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A9C0 | size: 0xC
.obj "@eti_8000A9C0", local
.hidden "@eti_8000A9C0"
	.4byte fn_802C106C
	.4byte 0x000000A4
	.4byte "@etb_80007C50"
.endobj "@eti_8000A9C0"

# 0x802C106C..0x802C1110 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802C106C | size: 0xA4
.fn fn_802C106C, global
/* 802C106C 002B6DEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C1070 002B6DF0  7C 08 02 A6 */	mflr r0
/* 802C1074 002B6DF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C1078 002B6DF8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 802C107C 002B6DFC  FF E0 10 90 */	fmr f31, f2
/* 802C1080 002B6E00  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C1084 002B6E04  FF C0 08 90 */	fmr f30, f1
/* 802C1088 002B6E08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C108C 002B6E0C  3B E0 00 00 */	li r31, 0x0
/* 802C1090 002B6E10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C1094 002B6E14  3B C0 00 00 */	li r30, 0x0
/* 802C1098 002B6E18  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C109C 002B6E1C  7C 9D 23 78 */	mr r29, r4
/* 802C10A0 002B6E20  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C10A4 002B6E24  7C 7C 1B 78 */	mr r28, r3
/* 802C10A8 002B6E28  48 00 00 34 */	b .L_802C10DC
.L_802C10AC:
/* 802C10AC 002B6E2C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802C10B0 002B6E30  FC 20 F0 90 */	fmr f1, f30
/* 802C10B4 002B6E34  FC 40 F8 90 */	fmr f2, f31
/* 802C10B8 002B6E38  7F A4 EB 78 */	mr r4, r29
/* 802C10BC 002B6E3C  7C 60 FA 14 */	add r3, r0, r31
/* 802C10C0 002B6E40  80 63 00 04 */	lwz r3, 0x4(r3)
/* 802C10C4 002B6E44  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C10C8 002B6E48  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802C10CC 002B6E4C  7D 89 03 A6 */	mtctr r12
/* 802C10D0 002B6E50  4E 80 04 21 */	bctrl
/* 802C10D4 002B6E54  3B FF 00 08 */	addi r31, r31, 0x8
/* 802C10D8 002B6E58  3B DE 00 01 */	addi r30, r30, 0x1
.L_802C10DC:
/* 802C10DC 002B6E5C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802C10E0 002B6E60  7C 1E 00 00 */	cmpw r30, r0
/* 802C10E4 002B6E64  41 80 FF C8 */	blt .L_802C10AC
/* 802C10E8 002B6E68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C10EC 002B6E6C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 802C10F0 002B6E70  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C10F4 002B6E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C10F8 002B6E78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C10FC 002B6E7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C1100 002B6E80  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C1104 002B6E84  7C 08 03 A6 */	mtlr r0
/* 802C1108 002B6E88  38 21 00 30 */	addi r1, r1, 0x30
/* 802C110C 002B6E8C  4E 80 00 20 */	blr
.endfn fn_802C106C
