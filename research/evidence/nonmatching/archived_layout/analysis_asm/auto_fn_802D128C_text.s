.include "macros.inc"
.file "auto_fn_802D128C_text"

# 0x80008430..0x80008438 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008430 | size: 0x8
.obj "@etb_80008430", local
.hidden "@etb_80008430"
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
.endobj "@etb_80008430"

# 0x8000B1B8..0x8000B1C4 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B1B8 | size: 0xC
.obj "@eti_8000B1B8", local
.hidden "@eti_8000B1B8"
	.4byte fn_802D128C
	.4byte 0x00000088
	.4byte "@etb_80008430"
.endobj "@eti_8000B1B8"

# 0x802D128C..0x802D1314 | size: 0x88
.text
.balign 4

# .text:0x0 | 0x802D128C | size: 0x88
.fn fn_802D128C, global
/* 802D128C 002C700C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1290 002C7010  7C 08 02 A6 */	mflr r0
/* 802D1294 002C7014  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1298 002C7018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D129C 002C701C  7C 9F 23 78 */	mr r31, r4
/* 802D12A0 002C7020  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D12A4 002C7024  7C 7E 1B 78 */	mr r30, r3
/* 802D12A8 002C7028  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D12AC 002C702C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D12B0 002C7030  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802D12B4 002C7034  7D 89 03 A6 */	mtctr r12
/* 802D12B8 002C7038  4E 80 04 21 */	bctrl
/* 802D12BC 002C703C  C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 802D12C0 002C7040  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802D12C4 002C7044  C0 7F 00 04 */	lfs f3, 0x4(r31)
/* 802D12C8 002C7048  EC 01 00 2A */	fadds f0, f1, f0
/* 802D12CC 002C704C  C0 5F 00 08 */	lfs f2, 0x8(r31)
/* 802D12D0 002C7050  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802D12D4 002C7054  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 802D12D8 002C7058  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802D12DC 002C705C  EC 03 00 2A */	fadds f0, f3, f0
/* 802D12E0 002C7060  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 802D12E4 002C7064  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802D12E8 002C7068  EC 02 00 2A */	fadds f0, f2, f0
/* 802D12EC 002C706C  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 802D12F0 002C7070  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 802D12F4 002C7074  EC 01 00 2A */	fadds f0, f1, f0
/* 802D12F8 002C7078  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802D12FC 002C707C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1300 002C7080  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D1304 002C7084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1308 002C7088  7C 08 03 A6 */	mtlr r0
/* 802D130C 002C708C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1310 002C7090  4E 80 00 20 */	blr
.endfn fn_802D128C
