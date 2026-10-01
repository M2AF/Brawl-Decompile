.include "macros.inc"
.file "auto_fn_802D107C_text"

# 0x80008420..0x80008428 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008420 | size: 0x8
.obj "@etb_80008420", local
.hidden "@etb_80008420"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80008420"

# 0x8000B1A0..0x8000B1AC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1A0 | size: 0xC
.obj "@eti_8000B1A0", local
.hidden "@eti_8000B1A0"
	.4byte fn_802D107C
	.4byte 0x00000078
	.4byte "@etb_80008420"
.endobj "@eti_8000B1A0"

# 0x802D107C..0x802D10F4 | size: 0x78
.text
.balign 4

# .text:0x0 | 0x802D107C | size: 0x78
.fn fn_802D107C, global
/* 802D107C 002C6DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1080 002C6E00  7C 08 02 A6 */	mflr r0
/* 802D1084 002C6E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1088 002C6E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D108C 002C6E0C  7C BF 2B 78 */	mr r31, r5
/* 802D1090 002C6E10  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D1094 002C6E14  7C 7E 1B 78 */	mr r30, r3
/* 802D1098 002C6E18  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D109C 002C6E1C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D10A0 002C6E20  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D10A4 002C6E24  7D 89 03 A6 */	mtctr r12
/* 802D10A8 002C6E28  4E 80 04 21 */	bctrl
/* 802D10AC 002C6E2C  C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 802D10B0 002C6E30  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802D10B4 002C6E34  C0 5F 00 04 */	lfs f2, 0x4(r31)
/* 802D10B8 002C6E38  EC 01 00 2A */	fadds f0, f1, f0
/* 802D10BC 002C6E3C  C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 802D10C0 002C6E40  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 802D10C4 002C6E44  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802D10C8 002C6E48  EC 02 00 2A */	fadds f0, f2, f0
/* 802D10CC 002C6E4C  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 802D10D0 002C6E50  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802D10D4 002C6E54  EC 01 00 2A */	fadds f0, f1, f0
/* 802D10D8 002C6E58  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 802D10DC 002C6E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D10E0 002C6E60  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D10E4 002C6E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D10E8 002C6E68  7C 08 03 A6 */	mtlr r0
/* 802D10EC 002C6E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D10F0 002C6E70  4E 80 00 20 */	blr
.endfn fn_802D107C
