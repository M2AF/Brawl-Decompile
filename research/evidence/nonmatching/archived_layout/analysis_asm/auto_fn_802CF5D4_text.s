.include "macros.inc"
.file "auto_fn_802CF5D4_text"

# 0x80008380..0x80008388 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008380 | size: 0x8
.obj "@etb_80008380", local
.hidden "@etb_80008380"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp28-fp31
 */
	.4byte 0x010A0000
	.4byte 0x00000000
.endobj "@etb_80008380"

# 0x8000B0C8..0x8000B0D4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B0C8 | size: 0xC
.obj "@eti_8000B0C8", local
.hidden "@eti_8000B0C8"
	.4byte fn_802CF5D4
	.4byte 0x00000160
	.4byte "@etb_80008380"
.endobj "@eti_8000B0C8"

# 0x802CF5D4..0x802CF734 | size: 0x160
.text
.balign 4

# .text:0x0 | 0x802CF5D4 | size: 0x160
.fn fn_802CF5D4, global
/* 802CF5D4 002C5354  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802CF5D8 002C5358  7C 2C 0B 78 */	mr r12, r1
/* 802CF5DC 002C535C  21 6B FF 90 */	subfic r11, r11, -0x70
/* 802CF5E0 002C5360  7C 21 59 6E */	stwux r1, r1, r11
/* 802CF5E4 002C5364  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 802CF5E8 002C5368  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 802CF5EC 002C536C  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 802CF5F0 002C5370  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 802CF5F4 002C5374  DB AC FF D0 */	stfd f29, -0x30(r12)
/* 802CF5F8 002C5378  F3 AC 0F D8 */	psq_st f29, -0x28(r12), 0, qr0
/* 802CF5FC 002C537C  DB 8C FF C0 */	stfd f28, -0x40(r12)
/* 802CF600 002C5380  F3 8C 0F C8 */	psq_st f28, -0x38(r12), 0, qr0
/* 802CF604 002C5384  C3 C4 00 04 */	lfs f30, 0x4(r4)
/* 802CF608 002C5388  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 802CF60C 002C538C  C0 E5 00 04 */	lfs f7, 0x4(r5)
/* 802CF610 002C5390  EF FE 00 28 */	fsubs f31, f30, f0
/* 802CF614 002C5394  C3 A4 00 00 */	lfs f29, 0x0(r4)
/* 802CF618 002C5398  EC C7 F0 28 */	fsubs f6, f7, f30
/* 802CF61C 002C539C  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 802CF620 002C53A0  C1 25 00 00 */	lfs f9, 0x0(r5)
/* 802CF624 002C53A4  ED 5D 00 28 */	fsubs f10, f29, f0
/* 802CF628 002C53A8  ED 09 E8 28 */	fsubs f8, f9, f29
/* 802CF62C 002C53AC  C1 A4 00 08 */	lfs f13, 0x8(r4)
/* 802CF630 002C53B0  EC 06 07 F2 */	fmuls f0, f6, f31
/* 802CF634 002C53B4  C0 23 00 08 */	lfs f1, 0x8(r3)
/* 802CF638 002C53B8  C0 65 00 08 */	lfs f3, 0x8(r5)
/* 802CF63C 002C53BC  ED 8D 08 28 */	fsubs f12, f13, f1
/* 802CF640 002C53C0  EC A3 68 28 */	fsubs f5, f3, f13
/* 802CF644 002C53C4  C1 64 00 0C */	lfs f11, 0xc(r4)
/* 802CF648 002C53C8  EC 08 02 BA */	fmadds f0, f8, f10, f0
/* 802CF64C 002C53CC  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802CF650 002C53D0  EC 26 01 B2 */	fmuls f1, f6, f6
/* 802CF654 002C53D4  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 802CF658 002C53D8  EF 85 03 3A */	fmadds f28, f5, f12, f0
/* 802CF65C 002C53DC  C0 02 AD 48 */	lfs f0, lbl_805A4068@sda21(r0)
/* 802CF660 002C53E0  EC 28 0A 3A */	fmadds f1, f8, f8, f1
/* 802CF664 002C53E4  D1 41 00 20 */	stfs f10, 0x20(r1)
/* 802CF668 002C53E8  ED 4B 20 28 */	fsubs f10, f11, f4
/* 802CF66C 002C53EC  FF 80 E0 50 */	fneg f28, f28
/* 802CF670 002C53F0  EC 82 58 28 */	fsubs f4, f2, f11
/* 802CF674 002C53F4  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 802CF678 002C53F8  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 802CF67C 002C53FC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 802CF680 002C5400  D1 81 00 28 */	stfs f12, 0x28(r1)
/* 802CF684 002C5404  D1 41 00 2C */	stfs f10, 0x2c(r1)
/* 802CF688 002C5408  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802CF68C 002C540C  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 802CF690 002C5410  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 802CF694 002C5414  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 802CF698 002C5418  4C 40 13 82 */	cror eq, lt, eq
/* 802CF69C 002C541C  40 82 00 18 */	bne .L_802CF6B4
/* 802CF6A0 002C5420  D3 A6 00 00 */	stfs f29, 0x0(r6)
/* 802CF6A4 002C5424  D3 C6 00 04 */	stfs f30, 0x4(r6)
/* 802CF6A8 002C5428  D1 A6 00 08 */	stfs f13, 0x8(r6)
/* 802CF6AC 002C542C  D1 66 00 0C */	stfs f11, 0xc(r6)
/* 802CF6B0 002C5430  48 00 00 48 */	b .L_802CF6F8
.L_802CF6B4:
/* 802CF6B4 002C5434  FC 1C 08 40 */	fcmpo cr0, f28, f1
/* 802CF6B8 002C5438  4C 41 13 82 */	cror eq, gt, eq
/* 802CF6BC 002C543C  40 82 00 18 */	bne .L_802CF6D4
/* 802CF6C0 002C5440  D1 26 00 00 */	stfs f9, 0x0(r6)
/* 802CF6C4 002C5444  D0 E6 00 04 */	stfs f7, 0x4(r6)
/* 802CF6C8 002C5448  D0 66 00 08 */	stfs f3, 0x8(r6)
/* 802CF6CC 002C544C  D0 46 00 0C */	stfs f2, 0xc(r6)
/* 802CF6D0 002C5450  48 00 00 28 */	b .L_802CF6F8
.L_802CF6D4:
/* 802CF6D4 002C5454  EF 9C 08 24 */	fdivs f28, f28, f1
/* 802CF6D8 002C5458  EC 7C EA 3A */	fmadds f3, f28, f8, f29
/* 802CF6DC 002C545C  EC 5C F1 BA */	fmadds f2, f28, f6, f30
/* 802CF6E0 002C5460  EC 3C 69 7A */	fmadds f1, f28, f5, f13
/* 802CF6E4 002C5464  EC 1C 59 3A */	fmadds f0, f28, f4, f11
/* 802CF6E8 002C5468  D0 66 00 00 */	stfs f3, 0x0(r6)
/* 802CF6EC 002C546C  D0 46 00 04 */	stfs f2, 0x4(r6)
/* 802CF6F0 002C5470  D0 26 00 08 */	stfs f1, 0x8(r6)
/* 802CF6F4 002C5474  D0 06 00 0C */	stfs f0, 0xc(r6)
.L_802CF6F8:
/* 802CF6F8 002C5478  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802CF6FC 002C547C  38 00 FF F8 */	li r0, -0x8
/* 802CF700 002C5480  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802CF704 002C5484  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802CF708 002C5488  38 00 FF E8 */	li r0, -0x18
/* 802CF70C 002C548C  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 802CF710 002C5490  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 802CF714 002C5494  38 00 FF D8 */	li r0, -0x28
/* 802CF718 002C5498  13 AA 00 0C */	psq_lx f29, r10, r0, 0, qr0
/* 802CF71C 002C549C  CB AA FF D0 */	lfd f29, -0x30(r10)
/* 802CF720 002C54A0  38 00 FF C8 */	li r0, -0x38
/* 802CF724 002C54A4  13 8A 00 0C */	psq_lx f28, r10, r0, 0, qr0
/* 802CF728 002C54A8  CB 8A FF C0 */	lfd f28, -0x40(r10)
/* 802CF72C 002C54AC  7D 41 53 78 */	mr r1, r10
/* 802CF730 002C54B0  4E 80 00 20 */	blr
.endfn fn_802CF5D4
