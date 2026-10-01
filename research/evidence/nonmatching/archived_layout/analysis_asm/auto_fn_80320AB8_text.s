.include "macros.inc"
.file "auto_fn_80320AB8_text"

# 0x80008D34..0x80008D3C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008D34 | size: 0x8
.obj "@etb_80008D34", local
.hidden "@etb_80008D34"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 */
	.4byte 0x008A0000
	.4byte 0x00000000
.endobj "@etb_80008D34"

# 0x8000BCD4..0x8000BCE0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BCD4 | size: 0xC
.obj "@eti_8000BCD4", local
.hidden "@eti_8000BCD4"
	.4byte fn_80320AB8
	.4byte 0x0000018C
	.4byte "@etb_80008D34"
.endobj "@eti_8000BCD4"

# 0x80320AB8..0x80320C44 | size: 0x18C
.text
.balign 4

# .text:0x0 | 0x80320AB8 | size: 0x18C
.fn fn_80320AB8, global
/* 80320AB8 00316838  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80320ABC 0031683C  7C 2C 0B 78 */	mr r12, r1
/* 80320AC0 00316840  21 6B FF A0 */	subfic r11, r11, -0x60
/* 80320AC4 00316844  7C 21 59 6E */	stwux r1, r1, r11
/* 80320AC8 00316848  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 80320ACC 0031684C  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 80320AD0 00316850  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 80320AD4 00316854  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 80320AD8 00316858  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 80320ADC 0031685C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80320AE0 00316860  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 80320AE4 00316864  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 80320AE8 00316868  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 80320AEC 0031686C  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 80320AF0 00316870  ED 60 18 28 */	fsubs f11, f0, f3
/* 80320AF4 00316874  C0 45 00 08 */	lfs f2, 0x8(r5)
/* 80320AF8 00316878  EC C3 08 28 */	fsubs f6, f3, f1
/* 80320AFC 0031687C  C0 06 00 08 */	lfs f0, 0x8(r6)
/* 80320B00 00316880  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 80320B04 00316884  EC 82 00 28 */	fsubs f4, f2, f0
/* 80320B08 00316888  ED 21 10 28 */	fsubs f9, f1, f2
/* 80320B0C 0031688C  C0 45 00 04 */	lfs f2, 0x4(r5)
/* 80320B10 00316890  C0 26 00 04 */	lfs f1, 0x4(r6)
/* 80320B14 00316894  EC 0B 01 32 */	fmuls f0, f11, f4
/* 80320B18 00316898  C0 64 00 04 */	lfs f3, 0x4(r4)
/* 80320B1C 0031689C  EC A2 08 28 */	fsubs f5, f2, f1
/* 80320B20 003168A0  ED 43 10 28 */	fsubs f10, f3, f2
/* 80320B24 003168A4  C0 E5 00 0C */	lfs f7, 0xc(r5)
/* 80320B28 003168A8  ED A9 01 B8 */	fmsubs f13, f9, f6, f0
/* 80320B2C 003168AC  EC 49 01 72 */	fmuls f2, f9, f5
/* 80320B30 003168B0  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 80320B34 003168B4  EC 2A 01 B2 */	fmuls f1, f10, f6
/* 80320B38 003168B8  EC 0D 03 72 */	fmuls f0, f13, f13
/* 80320B3C 003168BC  C1 04 00 0C */	lfs f8, 0xc(r4)
/* 80320B40 003168C0  EF EA 11 38 */	fmsubs f31, f10, f4, f2
/* 80320B44 003168C4  ED 8B 09 78 */	fmsubs f12, f11, f5, f1
/* 80320B48 003168C8  C3 C2 B4 30 */	lfs f30, lbl_805A4750@sda21(r0)
/* 80320B4C 003168CC  EC 27 18 28 */	fsubs f1, f7, f3
/* 80320B50 003168D0  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 80320B54 003168D4  D1 61 00 30 */	stfs f11, 0x30(r1)
/* 80320B58 003168D8  EC 48 38 28 */	fsubs f2, f8, f7
/* 80320B5C 003168DC  D1 41 00 34 */	stfs f10, 0x34(r1)
/* 80320B60 003168E0  EC 6C 03 3A */	fmadds f3, f12, f12, f0
/* 80320B64 003168E4  D1 21 00 38 */	stfs f9, 0x38(r1)
/* 80320B68 003168E8  FC 03 F0 00 */	fcmpu cr0, f3, f30
/* 80320B6C 003168EC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80320B70 003168F0  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80320B74 003168F4  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80320B78 003168F8  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80320B7C 003168FC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80320B80 00316900  D3 E3 00 00 */	stfs f31, 0x0(r3)
/* 80320B84 00316904  D1 A3 00 04 */	stfs f13, 0x4(r3)
/* 80320B88 00316908  D1 83 00 08 */	stfs f12, 0x8(r3)
/* 80320B8C 0031690C  D3 C3 00 0C */	stfs f30, 0xc(r3)
/* 80320B90 00316910  41 82 00 40 */	beq .L_80320BD0
/* 80320B94 00316914  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 80320B98 00316918  4C 40 13 82 */	cror eq, lt, eq
/* 80320B9C 0031691C  40 82 00 14 */	bne .L_80320BB0
/* 80320BA0 00316920  3C 00 7F 80 */	lis r0, 0x7f80
/* 80320BA4 00316924  90 01 00 10 */	stw r0, 0x10(r1)
/* 80320BA8 00316928  C3 C1 00 10 */	lfs f30, 0x10(r1)
/* 80320BAC 0031692C  48 00 00 24 */	b .L_80320BD0
.L_80320BB0:
/* 80320BB0 00316930  FC 20 18 34 */	frsqrte f1, f3
/* 80320BB4 00316934  C0 42 B4 34 */	lfs f2, lbl_805A4754@sda21(r0)
/* 80320BB8 00316938  C0 02 B4 38 */	lfs f0, lbl_805A4758@sda21(r0)
/* 80320BBC 0031693C  FC 80 08 18 */	frsp f4, f1
/* 80320BC0 00316940  EC 23 01 32 */	fmuls f1, f3, f4
/* 80320BC4 00316944  EC 42 01 32 */	fmuls f2, f2, f4
/* 80320BC8 00316948  EC 04 00 7C */	fnmsubs f0, f4, f1, f0
/* 80320BCC 0031694C  EF C2 00 32 */	fmuls f30, f2, f0
.L_80320BD0:
/* 80320BD0 00316950  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 80320BD4 00316954  C0 43 00 04 */	lfs f2, 0x4(r3)
/* 80320BD8 00316958  EC 80 07 B2 */	fmuls f4, f0, f30
/* 80320BDC 0031695C  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 80320BE0 00316960  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80320BE4 00316964  EC 42 07 B2 */	fmuls f2, f2, f30
/* 80320BE8 00316968  EC 61 07 B2 */	fmuls f3, f1, f30
/* 80320BEC 0031696C  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80320BF0 00316970  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80320BF4 00316974  D0 83 00 00 */	stfs f4, 0x0(r3)
/* 80320BF8 00316978  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 80320BFC 0031697C  D0 63 00 08 */	stfs f3, 0x8(r3)
/* 80320C00 00316980  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80320C04 00316984  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 80320C08 00316988  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 80320C0C 0031698C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80320C10 00316990  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 80320C14 00316994  EC 24 10 7A */	fmadds f1, f4, f1, f2
/* 80320C18 00316998  EC 03 08 3A */	fmadds f0, f3, f0, f1
/* 80320C1C 0031699C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80320C20 003169A0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 80320C24 003169A4  38 00 FF F8 */	li r0, -0x8
/* 80320C28 003169A8  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 80320C2C 003169AC  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 80320C30 003169B0  38 00 FF E8 */	li r0, -0x18
/* 80320C34 003169B4  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 80320C38 003169B8  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 80320C3C 003169BC  7D 41 53 78 */	mr r1, r10
/* 80320C40 003169C0  4E 80 00 20 */	blr
.endfn fn_80320AB8
