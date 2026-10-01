.include "macros.inc"
.file "auto_fn_8031FEFC_text"

# 0x80008D0C..0x80008D14 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008D0C | size: 0x8
.obj "@etb_80008D0C", local
.hidden "@etb_80008D0C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008D0C"

# 0x8000BC98..0x8000BCA4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BC98 | size: 0xC
.obj "@eti_8000BC98", local
.hidden "@eti_8000BC98"
	.4byte fn_8031FEFC
	.4byte 0x0000010C
	.4byte "@etb_80008D0C"
.endobj "@eti_8000BC98"

# 0x8031FEFC..0x80320008 | size: 0x10C
.text
.balign 4

# .text:0x0 | 0x8031FEFC | size: 0x10C
.fn fn_8031FEFC, global
/* 8031FEFC 00315C7C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8031FF00 00315C80  7C 2C 0B 78 */	mr r12, r1
/* 8031FF04 00315C84  21 6B FF E0 */	subfic r11, r11, -0x20
/* 8031FF08 00315C88  7C 21 59 6E */	stwux r1, r1, r11
/* 8031FF0C 00315C8C  7C 08 02 A6 */	mflr r0
/* 8031FF10 00315C90  C1 22 B4 28 */	lfs f9, lbl_805A4748@sda21(r0)
/* 8031FF14 00315C94  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8031FF18 00315C98  38 00 00 00 */	li r0, 0x0
/* 8031FF1C 00315C9C  C1 02 B4 2C */	lfs f8, lbl_805A474C@sda21(r0)
/* 8031FF20 00315CA0  90 07 00 00 */	stw r0, 0x0(r7)
/* 8031FF24 00315CA4  C0 25 00 04 */	lfs f1, 0x4(r5)
/* 8031FF28 00315CA8  90 06 00 00 */	stw r0, 0x0(r6)
/* 8031FF2C 00315CAC  38 00 00 01 */	li r0, 0x1
/* 8031FF30 00315CB0  C0 A5 00 00 */	lfs f5, 0x0(r5)
/* 8031FF34 00315CB4  D1 23 00 00 */	stfs f9, 0x0(r3)
/* 8031FF38 00315CB8  C0 65 00 08 */	lfs f3, 0x8(r5)
/* 8031FF3C 00315CBC  D1 03 00 04 */	stfs f8, 0x4(r3)
/* 8031FF40 00315CC0  81 04 00 14 */	lwz r8, 0x14(r4)
/* 8031FF44 00315CC4  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 8031FF48 00315CC8  C0 08 00 04 */	lfs f0, 0x4(r8)
/* 8031FF4C 00315CCC  C0 88 00 00 */	lfs f4, 0x0(r8)
/* 8031FF50 00315CD0  EC C1 00 28 */	fsubs f6, f1, f0
/* 8031FF54 00315CD4  C0 08 00 08 */	lfs f0, 0x8(r8)
/* 8031FF58 00315CD8  EC E5 20 28 */	fsubs f7, f5, f4
/* 8031FF5C 00315CDC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 8031FF60 00315CE0  EC A3 00 28 */	fsubs f5, f3, f0
/* 8031FF64 00315CE4  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 8031FF68 00315CE8  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8031FF6C 00315CEC  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 8031FF70 00315CF0  C0 68 00 0C */	lfs f3, 0xc(r8)
/* 8031FF74 00315CF4  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 8031FF78 00315CF8  EC 21 11 FA */	fmadds f1, f1, f7, f2
/* 8031FF7C 00315CFC  EC 44 18 28 */	fsubs f2, f4, f3
/* 8031FF80 00315D00  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8031FF84 00315D04  EC 00 09 7A */	fmadds f0, f0, f5, f1
/* 8031FF88 00315D08  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8031FF8C 00315D0C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8031FF90 00315D10  FC 00 48 40 */	fcmpo cr0, f0, f9
/* 8031FF94 00315D14  40 81 00 14 */	ble .L_8031FFA8
/* 8031FF98 00315D18  FC 00 40 40 */	fcmpo cr0, f0, f8
/* 8031FF9C 00315D1C  40 80 00 20 */	bge .L_8031FFBC
/* 8031FFA0 00315D20  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 8031FFA4 00315D24  48 00 00 18 */	b .L_8031FFBC
.L_8031FFA8:
/* 8031FFA8 00315D28  EC 09 00 2A */	fadds f0, f9, f0
/* 8031FFAC 00315D2C  FC 00 48 40 */	fcmpo cr0, f0, f9
/* 8031FFB0 00315D30  40 81 00 08 */	ble .L_8031FFB8
/* 8031FFB4 00315D34  D0 03 00 00 */	stfs f0, 0x0(r3)
.L_8031FFB8:
/* 8031FFB8 00315D38  38 00 00 02 */	li r0, 0x2
.L_8031FFBC:
/* 8031FFBC 00315D3C  C0 23 00 00 */	lfs f1, 0x0(r3)
/* 8031FFC0 00315D40  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 8031FFC4 00315D44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8031FFC8 00315D48  4C 41 13 82 */	cror eq, gt, eq
/* 8031FFCC 00315D4C  40 82 00 08 */	bne .L_8031FFD4
/* 8031FFD0 00315D50  38 00 00 04 */	li r0, 0x4
.L_8031FFD4:
/* 8031FFD4 00315D54  2C 00 00 01 */	cmpwi r0, 0x1
/* 8031FFD8 00315D58  90 04 00 44 */	stw r0, 0x44(r4)
/* 8031FFDC 00315D5C  40 82 00 10 */	bne .L_8031FFEC
/* 8031FFE0 00315D60  48 00 00 29 */	bl fn_80320008
/* 8031FFE4 00315D64  7C 60 1B 78 */	mr r0, r3
/* 8031FFE8 00315D68  48 00 00 08 */	b .L_8031FFF0
.L_8031FFEC:
/* 8031FFEC 00315D6C  38 00 00 02 */	li r0, 0x2
.L_8031FFF0:
/* 8031FFF0 00315D70  7C 03 03 78 */	mr r3, r0
/* 8031FFF4 00315D74  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8031FFF8 00315D78  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8031FFFC 00315D7C  7C 08 03 A6 */	mtlr r0
/* 80320000 00315D80  7D 41 53 78 */	mr r1, r10
/* 80320004 00315D84  4E 80 00 20 */	blr
.endfn fn_8031FEFC
