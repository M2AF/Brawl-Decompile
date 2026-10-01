.include "macros.inc"
.file "auto_fn_80304C08_text"

# 0x80008804..0x8000880C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008804 | size: 0x8
.obj "@etb_80008804", local
.hidden "@etb_80008804"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008804"

# 0x8000B740..0x8000B74C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B740 | size: 0xC
.obj "@eti_8000B740", local
.hidden "@eti_8000B740"
	.4byte fn_80304C08
	.4byte 0x00000104
	.4byte "@etb_80008804"
.endobj "@eti_8000B740"

# 0x80304C08..0x80304D0C | size: 0x104
.text
.balign 4

# .text:0x0 | 0x80304C08 | size: 0x104
.fn fn_80304C08, global
/* 80304C08 002FA988  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80304C0C 002FA98C  C0 42 B2 A8 */	lfs f2, lbl_805A45C8@sda21(r0)
/* 80304C10 002FA990  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 80304C14 002FA994  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80304C18 002FA998  EC 22 08 2A */	fadds f1, f2, f1
/* 80304C1C 002FA99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80304C20 002FA9A0  4C 40 13 82 */	cror eq, lt, eq
/* 80304C24 002FA9A4  40 82 00 14 */	bne .L_80304C38
/* 80304C28 002FA9A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80304C2C 002FA9AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80304C30 002FA9B0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80304C34 002FA9B4  48 00 00 24 */	b .L_80304C58
.L_80304C38:
/* 80304C38 002FA9B8  FC 60 08 34 */	frsqrte f3, f1
/* 80304C3C 002FA9BC  C0 42 B2 B0 */	lfs f2, lbl_805A45D0@sda21(r0)
/* 80304C40 002FA9C0  C0 02 B2 B4 */	lfs f0, lbl_805A45D4@sda21(r0)
/* 80304C44 002FA9C4  FC 60 18 18 */	frsp f3, f3
/* 80304C48 002FA9C8  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80304C4C 002FA9CC  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80304C50 002FA9D0  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80304C54 002FA9D4  EC 62 00 32 */	fmuls f3, f2, f0
.L_80304C58:
/* 80304C58 002FA9D8  C0 42 B2 A8 */	lfs f2, lbl_805A45C8@sda21(r0)
/* 80304C5C 002FA9DC  C0 23 00 04 */	lfs f1, 0x4(r3)
/* 80304C60 002FA9E0  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80304C64 002FA9E4  EC 22 08 2A */	fadds f1, f2, f1
/* 80304C68 002FA9E8  D0 63 00 00 */	stfs f3, 0x0(r3)
/* 80304C6C 002FA9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80304C70 002FA9F0  4C 40 13 82 */	cror eq, lt, eq
/* 80304C74 002FA9F4  40 82 00 14 */	bne .L_80304C88
/* 80304C78 002FA9F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80304C7C 002FA9FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80304C80 002FAA00  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80304C84 002FAA04  48 00 00 24 */	b .L_80304CA8
.L_80304C88:
/* 80304C88 002FAA08  FC 60 08 34 */	frsqrte f3, f1
/* 80304C8C 002FAA0C  C0 42 B2 B0 */	lfs f2, lbl_805A45D0@sda21(r0)
/* 80304C90 002FAA10  C0 02 B2 B4 */	lfs f0, lbl_805A45D4@sda21(r0)
/* 80304C94 002FAA14  FC 60 18 18 */	frsp f3, f3
/* 80304C98 002FAA18  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80304C9C 002FAA1C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80304CA0 002FAA20  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80304CA4 002FAA24  EC 62 00 32 */	fmuls f3, f2, f0
.L_80304CA8:
/* 80304CA8 002FAA28  C0 42 B2 A8 */	lfs f2, lbl_805A45C8@sda21(r0)
/* 80304CAC 002FAA2C  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 80304CB0 002FAA30  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80304CB4 002FAA34  EC 22 08 2A */	fadds f1, f2, f1
/* 80304CB8 002FAA38  D0 63 00 04 */	stfs f3, 0x4(r3)
/* 80304CBC 002FAA3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80304CC0 002FAA40  4C 40 13 82 */	cror eq, lt, eq
/* 80304CC4 002FAA44  40 82 00 14 */	bne .L_80304CD8
/* 80304CC8 002FAA48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80304CCC 002FAA4C  90 01 00 08 */	stw r0, 0x8(r1)
/* 80304CD0 002FAA50  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 80304CD4 002FAA54  48 00 00 24 */	b .L_80304CF8
.L_80304CD8:
/* 80304CD8 002FAA58  FC 60 08 34 */	frsqrte f3, f1
/* 80304CDC 002FAA5C  C0 42 B2 B0 */	lfs f2, lbl_805A45D0@sda21(r0)
/* 80304CE0 002FAA60  C0 02 B2 B4 */	lfs f0, lbl_805A45D4@sda21(r0)
/* 80304CE4 002FAA64  FC 60 18 18 */	frsp f3, f3
/* 80304CE8 002FAA68  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80304CEC 002FAA6C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 80304CF0 002FAA70  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80304CF4 002FAA74  EC 22 00 32 */	fmuls f1, f2, f0
.L_80304CF8:
/* 80304CF8 002FAA78  C0 02 B2 A4 */	lfs f0, lbl_805A45C4@sda21(r0)
/* 80304CFC 002FAA7C  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80304D00 002FAA80  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80304D04 002FAA84  38 21 00 20 */	addi r1, r1, 0x20
/* 80304D08 002FAA88  4E 80 00 20 */	blr
.endfn fn_80304C08
