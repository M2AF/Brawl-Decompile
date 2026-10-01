.include "macros.inc"
.file "auto_fn_8029858C_text"

# 0x80006700..0x80006708 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006700 | size: 0x8
.obj "@etb_80006700", local
.hidden "@etb_80006700"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp26-fp31
 */
	.4byte 0x018A0000
	.4byte 0x00000000
.endobj "@etb_80006700"

# 0x80009A90..0x80009A9C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009A90 | size: 0xC
.obj "@eti_80009A90", local
.hidden "@eti_80009A90"
	.4byte fn_8029858C
	.4byte 0x000001A8
	.4byte "@etb_80006700"
.endobj "@eti_80009A90"

# 0x8029858C..0x80298734 | size: 0x1A8
.text
.balign 4

# .text:0x0 | 0x8029858C | size: 0x1A8
.fn fn_8029858C, global
/* 8029858C 0028E30C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 80298590 0028E310  7C 2C 0B 78 */	mr r12, r1
/* 80298594 0028E314  21 6B FF 70 */	subfic r11, r11, -0x90
/* 80298598 0028E318  7C 21 59 6E */	stwux r1, r1, r11
/* 8029859C 0028E31C  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802985A0 0028E320  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 802985A4 0028E324  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 802985A8 0028E328  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 802985AC 0028E32C  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 802985B0 0028E330  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 802985B4 0028E334  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 802985B8 0028E338  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 802985BC 0028E33C  DB 6C FF B0 */	stfd f27, -0x50(r12)
/* 802985C0 0028E340  F3 6C 0F B8 */	psq_st f27, -0x48(r12), 0, qr0
/* 802985C4 0028E344  DB 4C FF A0 */	stfd f26, -0x60(r12)
/* 802985C8 0028E348  F3 4C 0F A8 */	psq_st f26, -0x58(r12), 0, qr0
/* 802985CC 0028E34C  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 802985D0 0028E350  C0 44 00 34 */	lfs f2, 0x34(r4)
/* 802985D4 0028E354  EC 81 00 F2 */	fmuls f4, f1, f3
/* 802985D8 0028E358  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 802985DC 0028E35C  EC 61 00 B2 */	fmuls f3, f1, f2
/* 802985E0 0028E360  C0 C3 00 00 */	lfs f6, 0x0(r3)
/* 802985E4 0028E364  EC 41 00 32 */	fmuls f2, f1, f0
/* 802985E8 0028E368  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 802985EC 0028E36C  C0 A3 00 08 */	lfs f5, 0x8(r3)
/* 802985F0 0028E370  EF C4 01 B2 */	fmuls f30, f4, f6
/* 802985F4 0028E374  EF E3 00 32 */	fmuls f31, f3, f0
/* 802985F8 0028E378  C0 C4 00 20 */	lfs f6, 0x20(r4)
/* 802985FC 0028E37C  ED A2 01 72 */	fmuls f13, f2, f5
/* 80298600 0028E380  C0 A4 00 28 */	lfs f5, 0x28(r4)
/* 80298604 0028E384  C1 45 00 34 */	lfs f10, 0x34(r5)
/* 80298608 0028E388  C1 25 00 38 */	lfs f9, 0x38(r5)
/* 8029860C 0028E38C  EF 61 02 B2 */	fmuls f27, f1, f10
/* 80298610 0028E390  C3 44 00 3C */	lfs f26, 0x3c(r4)
/* 80298614 0028E394  EF 81 02 72 */	fmuls f28, f1, f9
/* 80298618 0028E398  C1 85 00 3C */	lfs f12, 0x3c(r5)
/* 8029861C 0028E39C  C1 43 00 14 */	lfs f10, 0x14(r3)
/* 80298620 0028E3A0  EF 41 06 B2 */	fmuls f26, f1, f26
/* 80298624 0028E3A4  C1 23 00 18 */	lfs f9, 0x18(r3)
/* 80298628 0028E3A8  EF A1 03 32 */	fmuls f29, f1, f12
/* 8029862C 0028E3AC  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80298630 0028E3B0  EC E6 F0 2A */	fadds f7, f6, f30
/* 80298634 0028E3B4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80298638 0028E3B8  EC A5 68 2A */	fadds f5, f5, f13
/* 8029863C 0028E3BC  C1 05 00 30 */	lfs f8, 0x30(r5)
/* 80298640 0028E3C0  EC C0 F8 2A */	fadds f6, f0, f31
/* 80298644 0028E3C4  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80298648 0028E3C8  EC 01 02 32 */	fmuls f0, f1, f8
/* 8029864C 0028E3CC  C1 03 00 10 */	lfs f8, 0x10(r3)
/* 80298650 0028E3D0  D0 E4 00 20 */	stfs f7, 0x20(r4)
/* 80298654 0028E3D4  ED 5B 02 B2 */	fmuls f10, f27, f10
/* 80298658 0028E3D8  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 8029865C 0028E3DC  ED 60 02 32 */	fmuls f11, f0, f8
/* 80298660 0028E3E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80298664 0028E3E4  ED 3C 02 72 */	fmuls f9, f28, f9
/* 80298668 0028E3E8  C1 03 00 1C */	lfs f8, 0x1c(r3)
/* 8029866C 0028E3EC  ED 9A 01 F2 */	fmuls f12, f26, f7
/* 80298670 0028E3F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80298674 0028E3F4  ED 1D 02 32 */	fmuls f8, f29, f8
/* 80298678 0028E3F8  D3 41 00 2C */	stfs f26, 0x2c(r1)
/* 8029867C 0028E3FC  D3 61 00 14 */	stfs f27, 0x14(r1)
/* 80298680 0028E400  D3 81 00 18 */	stfs f28, 0x18(r1)
/* 80298684 0028E404  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 80298688 0028E408  D0 C4 00 24 */	stfs f6, 0x24(r4)
/* 8029868C 0028E40C  D0 A4 00 28 */	stfs f5, 0x28(r4)
/* 80298690 0028E410  C0 E5 00 20 */	lfs f7, 0x20(r5)
/* 80298694 0028E414  C0 C5 00 24 */	lfs f6, 0x24(r5)
/* 80298698 0028E418  C0 A5 00 28 */	lfs f5, 0x28(r5)
/* 8029869C 0028E41C  EC E7 58 2A */	fadds f7, f7, f11
/* 802986A0 0028E420  EC C6 50 2A */	fadds f6, f6, f10
/* 802986A4 0028E424  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 802986A8 0028E428  EC 85 48 2A */	fadds f4, f5, f9
/* 802986AC 0028E42C  D0 E5 00 20 */	stfs f7, 0x20(r5)
/* 802986B0 0028E430  D0 C5 00 24 */	stfs f6, 0x24(r5)
/* 802986B4 0028E434  D0 85 00 28 */	stfs f4, 0x28(r5)
/* 802986B8 0028E438  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 802986BC 0028E43C  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 802986C0 0028E440  EC 00 08 2A */	fadds f0, f0, f1
/* 802986C4 0028E444  D1 A1 00 28 */	stfs f13, 0x28(r1)
/* 802986C8 0028E448  D0 06 00 00 */	stfs f0, 0x0(r6)
/* 802986CC 0028E44C  D1 81 00 2C */	stfs f12, 0x2c(r1)
/* 802986D0 0028E450  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 802986D4 0028E454  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 802986D8 0028E458  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 802986DC 0028E45C  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802986E0 0028E460  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802986E4 0028E464  38 00 FF F8 */	li r0, -0x8
/* 802986E8 0028E468  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802986EC 0028E46C  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802986F0 0028E470  38 00 FF E8 */	li r0, -0x18
/* 802986F4 0028E474  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 802986F8 0028E478  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 802986FC 0028E47C  38 00 FF D8 */	li r0, -0x28
/* 80298700 0028E480  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 80298704 0028E484  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 80298708 0028E488  38 00 FF C8 */	li r0, -0x38
/* 8029870C 0028E48C  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 80298710 0028E490  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 80298714 0028E494  38 00 FF B8 */	li r0, -0x48
/* 80298718 0028E498  13 6A 00 0C */	psq_lx f27, r10, r0, 0, qr0
/* 8029871C 0028E49C  CB 6A FF B0 */	lfd f27, -0x50(r10)
/* 80298720 0028E4A0  38 00 FF A8 */	li r0, -0x58
/* 80298724 0028E4A4  13 4A 00 0C */	psq_lx f26, r10, r0, 0, qr0
/* 80298728 0028E4A8  CB 4A FF A0 */	lfd f26, -0x60(r10)
/* 8029872C 0028E4AC  7D 41 53 78 */	mr r1, r10
/* 80298730 0028E4B0  4E 80 00 20 */	blr
.endfn fn_8029858C
