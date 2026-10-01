.include "macros.inc"
.file "auto_fn_802A6A38_text"

# 0x80006B9C..0x80006BA4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006B9C | size: 0x8
.obj "@etb_80006B9C", local
.hidden "@etb_80006B9C"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp27-fp31
 */
	.4byte 0x014A0000
	.4byte 0x00000000
.endobj "@etb_80006B9C"

# 0x80009E98..0x80009EA4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009E98 | size: 0xC
.obj "@eti_80009E98", local
.hidden "@eti_80009E98"
	.4byte fn_802A6A38
	.4byte 0x0000015C
	.4byte "@etb_80006B9C"
.endobj "@eti_80009E98"

# 0x802A6A38..0x802A6B94 | size: 0x15C
.text
.balign 4

# .text:0x0 | 0x802A6A38 | size: 0x15C
.fn fn_802A6A38, global
/* 802A6A38 0029C7B8  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802A6A3C 0029C7BC  7C 2C 0B 78 */	mr r12, r1
/* 802A6A40 0029C7C0  21 6B FF 80 */	subfic r11, r11, -0x80
/* 802A6A44 0029C7C4  7C 21 59 6E */	stwux r1, r1, r11
/* 802A6A48 0029C7C8  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802A6A4C 0029C7CC  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 802A6A50 0029C7D0  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 802A6A54 0029C7D4  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 802A6A58 0029C7D8  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 802A6A5C 0029C7DC  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 802A6A60 0029C7E0  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 802A6A64 0029C7E4  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 802A6A68 0029C7E8  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 802A6A6C 0029C7EC  F3 6C 0F B8 */	psq_st f27, -0x48(r12), 0, qr0
/* 802A6A70 0029C7F0  C0 84 00 5C */	lfs f4, 0x5c(r4)
/* 802A6A74 0029C7F4  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 802A6A78 0029C7F8  C0 A3 00 4C */	lfs f5, 0x4c(r3)
/* 802A6A7C 0029C7FC  EC 41 01 32 */	fmuls f2, f1, f4
/* 802A6A80 0029C800  C0 64 00 9C */	lfs f3, 0x9c(r4)
/* 802A6A84 0029C804  EC 21 00 32 */	fmuls f1, f1, f0
/* 802A6A88 0029C808  EF A5 00 28 */	fsubs f29, f5, f0
/* 802A6A8C 0029C80C  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 802A6A90 0029C810  C0 C3 00 40 */	lfs f6, 0x40(r3)
/* 802A6A94 0029C814  ED 64 00 28 */	fsubs f11, f4, f0
/* 802A6A98 0029C818  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 802A6A9C 0029C81C  C1 03 00 44 */	lfs f8, 0x44(r3)
/* 802A6AA0 0029C820  EC 06 28 28 */	fsubs f0, f6, f5
/* 802A6AA4 0029C824  C1 23 00 48 */	lfs f9, 0x48(r3)
/* 802A6AA8 0029C828  EC A2 00 F2 */	fmuls f5, f2, f3
/* 802A6AAC 0029C82C  C0 63 00 54 */	lfs f3, 0x54(r3)
/* 802A6AB0 0029C830  EC E1 07 72 */	fmuls f7, f1, f29
/* 802A6AB4 0029C834  C1 84 00 50 */	lfs f12, 0x50(r4)
/* 802A6AB8 0029C838  EF 68 18 28 */	fsubs f27, f8, f3
/* 802A6ABC 0029C83C  C1 03 00 58 */	lfs f8, 0x58(r3)
/* 802A6AC0 0029C840  EC E2 3A FA */	fmadds f7, f2, f11, f7
/* 802A6AC4 0029C844  C0 C3 00 9C */	lfs f6, 0x9c(r3)
/* 802A6AC8 0029C848  EF 89 40 28 */	fsubs f28, f9, f8
/* 802A6ACC 0029C84C  C1 04 00 40 */	lfs f8, 0x40(r4)
/* 802A6AD0 0029C850  EF CC 40 28 */	fsubs f30, f12, f8
/* 802A6AD4 0029C854  C0 84 00 A0 */	lfs f4, 0xa0(r4)
/* 802A6AD8 0029C858  EC 61 00 32 */	fmuls f3, f1, f0
/* 802A6ADC 0029C85C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802A6AE0 0029C860  C1 24 00 54 */	lfs f9, 0x54(r4)
/* 802A6AE4 0029C864  ED 41 06 F2 */	fmuls f10, f1, f27
/* 802A6AE8 0029C868  C1 04 00 44 */	lfs f8, 0x44(r4)
/* 802A6AEC 0029C86C  EC 04 01 72 */	fmuls f0, f4, f5
/* 802A6AF0 0029C870  C1 A4 00 58 */	lfs f13, 0x58(r4)
/* 802A6AF4 0029C874  EF E9 40 28 */	fsubs f31, f9, f8
/* 802A6AF8 0029C878  C1 84 00 48 */	lfs f12, 0x48(r4)
/* 802A6AFC 0029C87C  ED 02 1F BA */	fmadds f8, f2, f30, f3
/* 802A6B00 0029C880  D0 E5 00 0C */	stfs f7, 0xc(r5)
/* 802A6B04 0029C884  ED 21 07 32 */	fmuls f9, f1, f28
/* 802A6B08 0029C888  C0 63 00 A0 */	lfs f3, 0xa0(r3)
/* 802A6B0C 0029C88C  ED 8D 60 28 */	fsubs f12, f13, f12
/* 802A6B10 0029C890  D1 05 00 00 */	stfs f8, 0x0(r5)
/* 802A6B14 0029C894  EC E2 57 FA */	fmadds f7, f2, f31, f10
/* 802A6B18 0029C898  EC 21 01 B2 */	fmuls f1, f1, f6
/* 802A6B1C 0029C89C  D3 61 00 24 */	stfs f27, 0x24(r1)
/* 802A6B20 0029C8A0  EC 42 4B 3A */	fmadds f2, f2, f12, f9
/* 802A6B24 0029C8A4  D0 E5 00 04 */	stfs f7, 0x4(r5)
/* 802A6B28 0029C8A8  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 802A6B2C 0029C8AC  D0 45 00 08 */	stfs f2, 0x8(r5)
/* 802A6B30 0029C8B0  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 802A6B34 0029C8B4  D3 81 00 28 */	stfs f28, 0x28(r1)
/* 802A6B38 0029C8B8  D3 A1 00 2C */	stfs f29, 0x2c(r1)
/* 802A6B3C 0029C8BC  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 802A6B40 0029C8C0  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 802A6B44 0029C8C4  D1 81 00 18 */	stfs f12, 0x18(r1)
/* 802A6B48 0029C8C8  D1 61 00 1C */	stfs f11, 0x1c(r1)
/* 802A6B4C 0029C8CC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802A6B50 0029C8D0  38 00 FF F8 */	li r0, -0x8
/* 802A6B54 0029C8D4  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802A6B58 0029C8D8  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802A6B5C 0029C8DC  38 00 FF E8 */	li r0, -0x18
/* 802A6B60 0029C8E0  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 802A6B64 0029C8E4  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 802A6B68 0029C8E8  38 00 FF D8 */	li r0, -0x28
/* 802A6B6C 0029C8EC  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 802A6B70 0029C8F0  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 802A6B74 0029C8F4  38 00 FF C8 */	li r0, -0x38
/* 802A6B78 0029C8F8  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 802A6B7C 0029C8FC  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 802A6B80 0029C900  38 00 FF B8 */	li r0, -0x48
/* 802A6B84 0029C904  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 802A6B88 0029C908  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 802A6B8C 0029C90C  7D 41 53 78 */	mr r1, r10
/* 802A6B90 0029C910  4E 80 00 20 */	blr
.endfn fn_802A6A38
