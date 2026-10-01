.include "macros.inc"
.file "auto_fn_8031EA8C_text"

# 0x80008CBC..0x80008CC4 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008CBC | size: 0x8
.obj "@etb_80008CBC", local
.hidden "@etb_80008CBC"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved FPR range: fp30-fp31
 * Saved GPR range: r31
 */
	.4byte 0x088A0000
	.4byte 0x00000000
.endobj "@etb_80008CBC"

# 0x8000BC50..0x8000BC5C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BC50 | size: 0xC
.obj "@eti_8000BC50", local
.hidden "@eti_8000BC50"
	.4byte fn_8031EA8C
	.4byte 0x0000009C
	.4byte "@etb_80008CBC"
.endobj "@eti_8000BC50"

# 0x8031EA8C..0x8031EB28 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x8031EA8C | size: 0x9C
.fn fn_8031EA8C, global
/* 8031EA8C 0031480C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8031EA90 00314810  7C 08 02 A6 */	mflr r0
/* 8031EA94 00314814  90 01 00 44 */	stw r0, 0x44(r1)
/* 8031EA98 00314818  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8031EA9C 0031481C  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 8031EAA0 00314820  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8031EAA4 00314824  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 8031EAA8 00314828  FF C0 08 90 */	fmr f30, f1
/* 8031EAAC 0031482C  FF E0 10 90 */	fmr f31, f2
/* 8031EAB0 00314830  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031EAB4 00314834  7C 9F 23 78 */	mr r31, r4
/* 8031EAB8 00314838  90 61 00 08 */	stw r3, 0x8(r1)
/* 8031EABC 0031483C  38 61 00 08 */	addi r3, r1, 0x8
/* 8031EAC0 00314840  4B FF FF 81 */	bl fn_8031EA40
/* 8031EAC4 00314844  EC 3E 08 2A */	fadds f1, f30, f1
/* 8031EAC8 00314848  38 61 00 08 */	addi r3, r1, 0x8
/* 8031EACC 0031484C  EC 1F F0 28 */	fsubs f0, f31, f30
/* 8031EAD0 00314850  EC 00 00 72 */	fmuls f0, f0, f1
/* 8031EAD4 00314854  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 8031EAD8 00314858  4B FF FF 69 */	bl fn_8031EA40
/* 8031EADC 0031485C  EC 3E 08 2A */	fadds f1, f30, f1
/* 8031EAE0 00314860  38 61 00 08 */	addi r3, r1, 0x8
/* 8031EAE4 00314864  EC 1F F0 28 */	fsubs f0, f31, f30
/* 8031EAE8 00314868  EC 00 00 72 */	fmuls f0, f0, f1
/* 8031EAEC 0031486C  D0 1F 00 04 */	stfs f0, 0x4(r31)
/* 8031EAF0 00314870  4B FF FF 51 */	bl fn_8031EA40
/* 8031EAF4 00314874  EC 3E 08 2A */	fadds f1, f30, f1
/* 8031EAF8 00314878  EC 1F F0 28 */	fsubs f0, f31, f30
/* 8031EAFC 0031487C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8031EB00 00314880  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 8031EB04 00314884  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 8031EB08 00314888  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8031EB0C 0031488C  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 8031EB10 00314890  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8031EB14 00314894  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031EB18 00314898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8031EB1C 0031489C  7C 08 03 A6 */	mtlr r0
/* 8031EB20 003148A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8031EB24 003148A4  4E 80 00 20 */	blr
.endfn fn_8031EA8C
