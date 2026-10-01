.include "macros.inc"
.file "auto_fn_802D279C_text"

# 0x800084C8..0x800084E4 | size: 0x1C
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084C8 | size: 0x1C
.obj "@etb_800084C8", local
.hidden "@etb_800084C8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 * 
 * PC actions:
 * PC=0000003C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_80099F70"
 * Has end bit
 */
	.4byte 0x080A0000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_80099F70
.endobj "@etb_800084C8"

# 0x8000B29C..0x8000B2A8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B29C | size: 0xC
.obj "@eti_8000B29C", local
.hidden "@eti_8000B29C"
	.4byte fn_802D279C
	.4byte 0x00000060
	.4byte "@etb_800084C8"
.endobj "@eti_8000B29C"

# 0x802D279C..0x802D27FC | size: 0x60
.text
.balign 4

# .text:0x0 | 0x802D279C | size: 0x60
.fn fn_802D279C, global
/* 802D279C 002C851C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D27A0 002C8520  7C 08 02 A6 */	mflr r0
/* 802D27A4 002C8524  3C 80 80 48 */	lis r4, lbl_80487548@ha
/* 802D27A8 002C8528  C0 02 AD B8 */	lfs f0, lbl_805A40D8@sda21(r0)
/* 802D27AC 002C852C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D27B0 002C8530  38 00 00 01 */	li r0, 0x1
/* 802D27B4 002C8534  38 84 75 48 */	addi r4, r4, lbl_80487548@l
/* 802D27B8 002C8538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D27BC 002C853C  7C 7F 1B 78 */	mr r31, r3
/* 802D27C0 002C8540  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802D27C4 002C8544  90 83 00 00 */	stw r4, 0x0(r3)
/* 802D27C8 002C8548  C0 2D AB 98 */	lfs f1, lbl_8059EFB8@sda21(r0)
/* 802D27CC 002C854C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802D27D0 002C8550  40 80 00 14 */	bge .L_802D27E4
/* 802D27D4 002C8554  4B FF FF 41 */	bl fn_802D2714
/* 802D27D8 002C8558  C0 02 AD C4 */	lfs f0, lbl_805A40E4@sda21(r0)
/* 802D27DC 002C855C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802D27E0 002C8560  D0 0D AB 98 */	stfs f0, lbl_8059EFB8@sda21(r0)
.L_802D27E4:
/* 802D27E4 002C8564  7F E3 FB 78 */	mr r3, r31
/* 802D27E8 002C8568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D27EC 002C856C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D27F0 002C8570  7C 08 03 A6 */	mtlr r0
/* 802D27F4 002C8574  38 21 00 10 */	addi r1, r1, 0x10
/* 802D27F8 002C8578  4E 80 00 20 */	blr
.endfn fn_802D279C
