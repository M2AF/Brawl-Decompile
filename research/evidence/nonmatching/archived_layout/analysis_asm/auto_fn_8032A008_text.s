.include "macros.inc"
.file "auto_fn_8032A008_text"

# 0x80008FB4..0x80008FBC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008FB4 | size: 0x8
.obj "@etb_80008FB4", local
.hidden "@etb_80008FB4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 */
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_80008FB4"

# 0x8000BEF0..0x8000BEFC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BEF0 | size: 0xC
.obj "@eti_8000BEF0", local
.hidden "@eti_8000BEF0"
	.4byte fn_8032A008
	.4byte 0x000000E4
	.4byte "@etb_80008FB4"
.endobj "@eti_8000BEF0"

# 0x8032A008..0x8032A0EC | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x8032A008 | size: 0xE4
.fn fn_8032A008, global
/* 8032A008 0031FD88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032A00C 0031FD8C  7C 08 02 A6 */	mflr r0
/* 8032A010 0031FD90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032A014 0031FD94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032A018 0031FD98  3B E0 00 00 */	li r31, 0x0
/* 8032A01C 0031FD9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032A020 0031FDA0  3B C0 00 00 */	li r30, 0x0
/* 8032A024 0031FDA4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8032A028 0031FDA8  7C 9D 23 78 */	mr r29, r4
/* 8032A02C 0031FDAC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8032A030 0031FDB0  7C 7C 1B 78 */	mr r28, r3
/* 8032A034 0031FDB4  48 00 00 8C */	b .L_8032A0C0
.L_8032A038:
/* 8032A038 0031FDB8  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8032A03C 0031FDBC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8032A040 0031FDC0  7C C3 F8 2E */	lwzx r6, r3, r31
/* 8032A044 0031FDC4  80 66 01 B0 */	lwz r3, 0x1b0(r6)
/* 8032A048 0031FDC8  C0 06 01 80 */	lfs f0, 0x180(r6)
/* 8032A04C 0031FDCC  7C A0 1A 14 */	add r5, r0, r3
/* 8032A050 0031FDD0  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8032A054 0031FDD4  C0 06 01 84 */	lfs f0, 0x184(r6)
/* 8032A058 0031FDD8  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8032A05C 0031FDDC  C0 06 01 88 */	lfs f0, 0x188(r6)
/* 8032A060 0031FDE0  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8032A064 0031FDE4  C0 06 01 8C */	lfs f0, 0x18c(r6)
/* 8032A068 0031FDE8  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8032A06C 0031FDEC  88 05 00 01 */	lbz r0, 0x1(r5)
/* 8032A070 0031FDF0  7C 03 07 74 */	extsb r3, r0
/* 8032A074 0031FDF4  7C 03 00 D0 */	neg r0, r3
/* 8032A078 0031FDF8  7C 00 1B 78 */	or r0, r0, r3
/* 8032A07C 0031FDFC  54 00 0F FF */	srwi. r0, r0, 31
/* 8032A080 0031FE00  41 82 00 28 */	beq .L_8032A0A8
/* 8032A084 0031FE04  C0 06 01 90 */	lfs f0, 0x190(r6)
/* 8032A088 0031FE08  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8032A08C 0031FE0C  C0 06 01 94 */	lfs f0, 0x194(r6)
/* 8032A090 0031FE10  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8032A094 0031FE14  C0 06 01 98 */	lfs f0, 0x198(r6)
/* 8032A098 0031FE18  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8032A09C 0031FE1C  C0 06 01 9C */	lfs f0, 0x19c(r6)
/* 8032A0A0 0031FE20  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8032A0A4 0031FE24  48 00 00 14 */	b .L_8032A0B8
.L_8032A0A8:
/* 8032A0A8 0031FE28  38 85 00 50 */	addi r4, r5, 0x50
/* 8032A0AC 0031FE2C  38 65 00 20 */	addi r3, r5, 0x20
/* 8032A0B0 0031FE30  38 A6 01 90 */	addi r5, r6, 0x190
/* 8032A0B4 0031FE34  4B F5 D9 45 */	bl fn_802879F8
.L_8032A0B8:
/* 8032A0B8 0031FE38  3B DE 00 01 */	addi r30, r30, 0x1
/* 8032A0BC 0031FE3C  3B FF 00 04 */	addi r31, r31, 0x4
.L_8032A0C0:
/* 8032A0C0 0031FE40  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 8032A0C4 0031FE44  7C 1E 00 00 */	cmpw r30, r0
/* 8032A0C8 0031FE48  41 80 FF 70 */	blt .L_8032A038
/* 8032A0CC 0031FE4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032A0D0 0031FE50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032A0D4 0031FE54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8032A0D8 0031FE58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8032A0DC 0031FE5C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8032A0E0 0031FE60  7C 08 03 A6 */	mtlr r0
/* 8032A0E4 0031FE64  38 21 00 20 */	addi r1, r1, 0x20
/* 8032A0E8 0031FE68  4E 80 00 20 */	blr
.endfn fn_8032A008
