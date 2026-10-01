.include "macros.inc"
.file "auto_fn_80289708_text"

# 0x80006508..0x80006510 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006508 | size: 0x8
.obj "@etb_80006508", local
.hidden "@etb_80006508"
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
.endobj "@etb_80006508"

# 0x8000979C..0x800097A8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000979C | size: 0xC
.obj "@eti_8000979C", local
.hidden "@eti_8000979C"
	.4byte fn_80289708
	.4byte 0x00000104
	.4byte "@etb_80006508"
.endobj "@eti_8000979C"

# 0x80289708..0x8028980C | size: 0x104
.text
.balign 4

# .text:0x0 | 0x80289708 | size: 0x104
.fn fn_80289708, global
/* 80289708 0027F488  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8028970C 0027F48C  7C 2C 0B 78 */	mr r12, r1
/* 80289710 0027F490  21 6B FF 90 */	subfic r11, r11, -0x70
/* 80289714 0027F494  7C 21 59 6E */	stwux r1, r1, r11
/* 80289718 0027F498  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8028971C 0027F49C  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 80289720 0027F4A0  DB CC FF E0 */	stfd f30, -0x20(r12)
/* 80289724 0027F4A4  F3 CC 0F E8 */	psq_st f30, -0x18(r12), 0, qr0
/* 80289728 0027F4A8  C8 24 00 00 */	lfd f1, 0x0(r4)
/* 8028972C 0027F4AC  C8 04 00 08 */	lfd f0, 0x8(r4)
/* 80289730 0027F4B0  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 80289734 0027F4B4  C8 24 00 10 */	lfd f1, 0x10(r4)
/* 80289738 0027F4B8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8028973C 0027F4BC  C8 04 00 18 */	lfd f0, 0x18(r4)
/* 80289740 0027F4C0  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 80289744 0027F4C4  C8 24 00 20 */	lfd f1, 0x20(r4)
/* 80289748 0027F4C8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8028974C 0027F4CC  C8 04 00 28 */	lfd f0, 0x28(r4)
/* 80289750 0027F4D0  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 80289754 0027F4D4  C8 24 00 30 */	lfd f1, 0x30(r4)
/* 80289758 0027F4D8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8028975C 0027F4DC  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 80289760 0027F4E0  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 80289764 0027F4E4  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 80289768 0027F4E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8028976C 0027F4EC  C3 E1 00 44 */	lfs f31, 0x44(r1)
/* 80289770 0027F4F0  C1 A1 00 48 */	lfs f13, 0x48(r1)
/* 80289774 0027F4F4  C1 81 00 4C */	lfs f12, 0x4c(r1)
/* 80289778 0027F4F8  C1 61 00 30 */	lfs f11, 0x30(r1)
/* 8028977C 0027F4FC  C1 41 00 34 */	lfs f10, 0x34(r1)
/* 80289780 0027F500  C1 21 00 38 */	lfs f9, 0x38(r1)
/* 80289784 0027F504  C1 01 00 3C */	lfs f8, 0x3c(r1)
/* 80289788 0027F508  C0 E1 00 20 */	lfs f7, 0x20(r1)
/* 8028978C 0027F50C  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 80289790 0027F510  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 80289794 0027F514  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 80289798 0027F518  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8028979C 0027F51C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802897A0 0027F520  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802897A4 0027F524  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802897A8 0027F528  D3 C3 00 00 */	stfs f30, 0x0(r3)
/* 802897AC 0027F52C  D3 E3 00 04 */	stfs f31, 0x4(r3)
/* 802897B0 0027F530  D1 A3 00 08 */	stfs f13, 0x8(r3)
/* 802897B4 0027F534  D1 83 00 0C */	stfs f12, 0xc(r3)
/* 802897B8 0027F538  D1 63 00 10 */	stfs f11, 0x10(r3)
/* 802897BC 0027F53C  D1 43 00 14 */	stfs f10, 0x14(r3)
/* 802897C0 0027F540  D1 23 00 18 */	stfs f9, 0x18(r3)
/* 802897C4 0027F544  D1 03 00 1C */	stfs f8, 0x1c(r3)
/* 802897C8 0027F548  D0 E3 00 20 */	stfs f7, 0x20(r3)
/* 802897CC 0027F54C  D0 C3 00 24 */	stfs f6, 0x24(r3)
/* 802897D0 0027F550  D0 A3 00 28 */	stfs f5, 0x28(r3)
/* 802897D4 0027F554  D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 802897D8 0027F558  D0 63 00 30 */	stfs f3, 0x30(r3)
/* 802897DC 0027F55C  D0 43 00 34 */	stfs f2, 0x34(r3)
/* 802897E0 0027F560  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 802897E4 0027F564  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802897E8 0027F568  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802897EC 0027F56C  38 00 FF F8 */	li r0, -0x8
/* 802897F0 0027F570  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 802897F4 0027F574  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 802897F8 0027F578  38 00 FF E8 */	li r0, -0x18
/* 802897FC 0027F57C  13 CA 00 0C */	psq_lx f30, r10, r0, 0, qr0
/* 80289800 0027F580  CB CA FF E0 */	lfd f30, -0x20(r10)
/* 80289804 0027F584  7D 41 53 78 */	mr r1, r10
/* 80289808 0027F588  4E 80 00 20 */	blr
.endfn fn_80289708
