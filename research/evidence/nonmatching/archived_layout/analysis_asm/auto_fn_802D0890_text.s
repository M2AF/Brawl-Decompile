.include "macros.inc"
.file "auto_fn_802D0890_text"

# 0x800083D8..0x800083E0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800083D8 | size: 0x8
.obj "@etb_800083D8", local
.hidden "@etb_800083D8"
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
.endobj "@etb_800083D8"

# 0x8000B134..0x8000B140 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B134 | size: 0xC
.obj "@eti_8000B134", local
.hidden "@eti_8000B134"
	.4byte fn_802D0890
	.4byte 0x00000084
	.4byte "@etb_800083D8"
.endobj "@eti_8000B134"

# 0x802D0890..0x802D0914 | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802D0890 | size: 0x84
.fn fn_802D0890, global
/* 802D0890 002C6610  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D0894 002C6614  7C 2C 0B 78 */	mr r12, r1
/* 802D0898 002C6618  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802D089C 002C661C  7C 21 59 6E */	stwux r1, r1, r11
/* 802D08A0 002C6620  7C 08 02 A6 */	mflr r0
/* 802D08A4 002C6624  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D08A8 002C6628  38 A1 00 10 */	addi r5, r1, 0x10
/* 802D08AC 002C662C  93 EC FF FC */	stw r31, -0x4(r12)
/* 802D08B0 002C6630  7C 9F 23 78 */	mr r31, r4
/* 802D08B4 002C6634  93 CC FF F8 */	stw r30, -0x8(r12)
/* 802D08B8 002C6638  7C 7E 1B 78 */	mr r30, r3
/* 802D08BC 002C663C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D08C0 002C6640  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D08C4 002C6644  7D 89 03 A6 */	mtctr r12
/* 802D08C8 002C6648  4E 80 04 21 */	bctrl
/* 802D08CC 002C664C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802D08D0 002C6650  C0 1F 00 04 */	lfs f0, 0x4(r31)
/* 802D08D4 002C6654  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 802D08D8 002C6658  EC 81 00 32 */	fmuls f4, f1, f0
/* 802D08DC 002C665C  C0 1F 00 00 */	lfs f0, 0x0(r31)
/* 802D08E0 002C6660  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 802D08E4 002C6664  C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 802D08E8 002C6668  EC 63 20 3A */	fmadds f3, f3, f0, f4
/* 802D08EC 002C666C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802D08F0 002C6670  EC 22 18 7A */	fmadds f1, f2, f1, f3
/* 802D08F4 002C6674  EC 20 08 2A */	fadds f1, f0, f1
/* 802D08F8 002C6678  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D08FC 002C667C  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802D0900 002C6680  83 CA FF F8 */	lwz r30, -0x8(r10)
/* 802D0904 002C6684  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D0908 002C6688  7C 08 03 A6 */	mtlr r0
/* 802D090C 002C668C  7D 41 53 78 */	mr r1, r10
/* 802D0910 002C6690  4E 80 00 20 */	blr
.endfn fn_802D0890
