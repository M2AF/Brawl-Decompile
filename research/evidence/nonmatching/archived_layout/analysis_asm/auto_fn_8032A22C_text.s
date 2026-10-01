.include "macros.inc"
.file "auto_fn_8032A22C_text"

# 0x80008FC4..0x80008FCC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008FC4 | size: 0x8
.obj "@etb_80008FC4", local
.hidden "@etb_80008FC4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp31
 * Saved GPR range: r27-r31
 */
	.4byte 0x284A0000
	.4byte 0x00000000
.endobj "@etb_80008FC4"

# 0x8000BF08..0x8000BF14 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BF08 | size: 0xC
.obj "@eti_8000BF08", local
.hidden "@eti_8000BF08"
	.4byte fn_8032A22C
	.4byte 0x00000140
	.4byte "@etb_80008FC4"
.endobj "@eti_8000BF08"

# 0x8032A22C..0x8032A36C | size: 0x140
.text
.balign 4

# .text:0x0 | 0x8032A22C | size: 0x140
.fn fn_8032A22C, global
/* 8032A22C 0031FFAC  54 2B 07 3E */	clrlwi r11, r1, 28
/* 8032A230 0031FFB0  7C 2C 0B 78 */	mr r12, r1
/* 8032A234 0031FFB4  21 6B FF B0 */	subfic r11, r11, -0x50
/* 8032A238 0031FFB8  7C 21 59 6E */	stwux r1, r1, r11
/* 8032A23C 0031FFBC  7C 08 02 A6 */	mflr r0
/* 8032A240 0031FFC0  90 0C 00 04 */	stw r0, 0x4(r12)
/* 8032A244 0031FFC4  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8032A248 0031FFC8  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 8032A24C 0031FFCC  39 6C FF F0 */	subi r11, r12, 0x10
/* 8032A250 0031FFD0  48 0C 70 D1 */	bl _savegpr_27
/* 8032A254 0031FFD4  C3 E2 B4 E0 */	lfs f31, lbl_805A4800@sda21(r0)
/* 8032A258 0031FFD8  7C 7B 1B 78 */	mr r27, r3
/* 8032A25C 0031FFDC  7C 9C 23 78 */	mr r28, r4
/* 8032A260 0031FFE0  3B C0 00 00 */	li r30, 0x0
/* 8032A264 0031FFE4  3B E0 00 00 */	li r31, 0x0
/* 8032A268 0031FFE8  48 00 00 D0 */	b .L_8032A338
.L_8032A26C:
/* 8032A26C 0031FFEC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8032A270 0031FFF0  7C 03 F0 AE */	lbzx r0, r3, r30
/* 8032A274 0031FFF4  28 00 00 01 */	cmplwi r0, 0x1
/* 8032A278 0031FFF8  41 82 00 0C */	beq .L_8032A284
/* 8032A27C 0031FFFC  28 00 00 02 */	cmplwi r0, 0x2
/* 8032A280 00320000  40 82 00 B0 */	bne .L_8032A330
.L_8032A284:
/* 8032A284 00320004  80 7B 00 38 */	lwz r3, 0x38(r27)
/* 8032A288 00320008  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8032A28C 0032000C  3B A3 00 B0 */	addi r29, r3, 0xb0
/* 8032A290 00320010  7F A3 EB 78 */	mr r3, r29
/* 8032A294 00320014  38 9D 00 70 */	addi r4, r29, 0x70
/* 8032A298 00320018  4B F5 B7 D5 */	bl fn_80285A6C
/* 8032A29C 0032001C  C0 FD 00 84 */	lfs f7, 0x84(r29)
/* 8032A2A0 00320020  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8032A2A4 00320024  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8032A2A8 00320028  EC 67 00 72 */	fmuls f3, f7, f1
/* 8032A2AC 0032002C  C1 1D 00 80 */	lfs f8, 0x80(r29)
/* 8032A2B0 00320030  C0 5D 00 00 */	lfs f2, 0x0(r29)
/* 8032A2B4 00320034  EC 27 00 32 */	fmuls f1, f7, f0
/* 8032A2B8 00320038  C0 1D 00 04 */	lfs f0, 0x4(r29)
/* 8032A2BC 0032003C  EC 48 18 BA */	fmadds f2, f8, f2, f3
/* 8032A2C0 00320040  EC 88 08 3A */	fmadds f4, f8, f0, f1
/* 8032A2C4 00320044  C0 DD 00 88 */	lfs f6, 0x88(r29)
/* 8032A2C8 00320048  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8032A2CC 0032004C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8032A2D0 00320050  EC A6 10 7A */	fmadds f5, f6, f1, f2
/* 8032A2D4 00320054  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8032A2D8 00320058  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8032A2DC 0032005C  EC 86 20 7A */	fmadds f4, f6, f1, f4
/* 8032A2E0 00320060  C0 5D 00 08 */	lfs f2, 0x8(r29)
/* 8032A2E4 00320064  EC 00 28 28 */	fsubs f0, f0, f5
/* 8032A2E8 00320068  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8032A2EC 0032006C  EC 67 00 F2 */	fmuls f3, f7, f3
/* 8032A2F0 00320070  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8032A2F4 00320074  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 8032A2F8 00320078  EC 48 18 BA */	fmadds f2, f8, f2, f3
/* 8032A2FC 0032007C  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8032A300 00320080  EC 26 10 7A */	fmadds f1, f6, f1, f2
/* 8032A304 00320084  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8032A308 00320088  EC 00 20 28 */	fsubs f0, f0, f4
/* 8032A30C 0032008C  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 8032A310 00320090  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 8032A314 00320094  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8032A318 00320098  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8032A31C 0032009C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032A320 003200A0  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8032A324 003200A4  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 8032A328 003200A8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8032A32C 003200AC  D0 1D 00 3C */	stfs f0, 0x3c(r29)
.L_8032A330:
/* 8032A330 003200B0  3B DE 00 01 */	addi r30, r30, 0x1
/* 8032A334 003200B4  3B FF 00 04 */	addi r31, r31, 0x4
.L_8032A338:
/* 8032A338 003200B8  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 8032A33C 003200BC  7C 1E 00 00 */	cmpw r30, r0
/* 8032A340 003200C0  41 80 FF 2C */	blt .L_8032A26C
/* 8032A344 003200C4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8032A348 003200C8  38 00 FF F8 */	li r0, -0x8
/* 8032A34C 003200CC  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 8032A350 003200D0  39 6A FF F0 */	subi r11, r10, 0x10
/* 8032A354 003200D4  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 8032A358 003200D8  48 0C 70 15 */	bl _restgpr_27
/* 8032A35C 003200DC  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8032A360 003200E0  7C 08 03 A6 */	mtlr r0
/* 8032A364 003200E4  7D 41 53 78 */	mr r1, r10
/* 8032A368 003200E8  4E 80 00 20 */	blr
.endfn fn_8032A22C
