.include "macros.inc"
.file "auto_fn_802CEC68_text"

# 0x80008368..0x80008370 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008368 | size: 0x8
.obj "@etb_80008368", local
.hidden "@etb_80008368"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008368"

# 0x8000B0A4..0x8000B0B0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B0A4 | size: 0xC
.obj "@eti_8000B0A4", local
.hidden "@eti_8000B0A4"
	.4byte fn_802CEC68
	.4byte 0x000000C8
	.4byte "@etb_80008368"
.endobj "@eti_8000B0A4"

# 0x802CEC68..0x802CED30 | size: 0xC8
.text
.balign 4

# .text:0x0 | 0x802CEC68 | size: 0xC8
.fn fn_802CEC68, global
/* 802CEC68 002C49E8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CEC6C 002C49EC  7C 2C 0B 78 */	mr r12, r1
/* 802CEC70 002C49F0  21 6B FF E0 */	subfic r11, r11, -0x20
/* 802CEC74 002C49F4  7C 21 59 6E */	stwux r1, r1, r11
/* 802CEC78 002C49F8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 802CEC7C 002C49FC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802CEC80 002C4A00  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 802CEC84 002C4A04  EC C1 00 28 */	fsubs f6, f1, f0
/* 802CEC88 002C4A08  C1 03 00 10 */	lfs f8, 0x10(r3)
/* 802CEC8C 002C4A0C  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 802CEC90 002C4A10  EC E9 40 28 */	fsubs f7, f9, f8
/* 802CEC94 002C4A14  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802CEC98 002C4A18  EC 46 00 32 */	fmuls f2, f6, f0
/* 802CEC9C 002C4A1C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802CECA0 002C4A20  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 802CECA4 002C4A24  EC A3 08 28 */	fsubs f5, f3, f1
/* 802CECA8 002C4A28  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 802CECAC 002C4A2C  EC 47 10 3A */	fmadds f2, f7, f0, f2
/* 802CECB0 002C4A30  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 802CECB4 002C4A34  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 802CECB8 002C4A38  C0 02 AD 48 */	lfs f0, lbl_805A4068@sda21(r0)
/* 802CECBC 002C4A3C  EC 45 10 7A */	fmadds f2, f5, f1, f2
/* 802CECC0 002C4A40  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 802CECC4 002C4A44  EC 24 18 28 */	fsubs f1, f4, f3
/* 802CECC8 002C4A48  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 802CECCC 002C4A4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802CECD0 002C4A50  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 802CECD4 002C4A54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802CECD8 002C4A58  40 80 00 28 */	bge .L_802CED00
/* 802CECDC 002C4A5C  D1 05 00 00 */	stfs f8, 0x0(r5)
/* 802CECE0 002C4A60  38 00 00 00 */	li r0, 0x0
/* 802CECE4 002C4A64  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802CECE8 002C4A68  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 802CECEC 002C4A6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802CECF0 002C4A70  D0 05 00 08 */	stfs f0, 0x8(r5)
/* 802CECF4 002C4A74  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802CECF8 002C4A78  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802CECFC 002C4A7C  48 00 00 24 */	b .L_802CED20
.L_802CED00:
/* 802CED00 002C4A80  D1 25 00 00 */	stfs f9, 0x0(r5)
/* 802CED04 002C4A84  38 00 00 10 */	li r0, 0x10
/* 802CED08 002C4A88  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802CED0C 002C4A8C  D0 05 00 04 */	stfs f0, 0x4(r5)
/* 802CED10 002C4A90  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 802CED14 002C4A94  D0 05 00 08 */	stfs f0, 0x8(r5)
/* 802CED18 002C4A98  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802CED1C 002C4A9C  D0 05 00 0C */	stfs f0, 0xc(r5)
.L_802CED20:
/* 802CED20 002C4AA0  90 05 00 0C */	stw r0, 0xc(r5)
/* 802CED24 002C4AA4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CED28 002C4AA8  7D 41 53 78 */	mr r1, r10
/* 802CED2C 002C4AAC  4E 80 00 20 */	blr
.endfn fn_802CEC68
