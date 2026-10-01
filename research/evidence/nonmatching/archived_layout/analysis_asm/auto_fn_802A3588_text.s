.include "macros.inc"
.file "auto_fn_802A3588_text"

# 0x800069C8..0x800069E0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800069C8 | size: 0x18
.obj "@etb_800069C8", local
.hidden "@etb_800069C8"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * 
 * PC actions:
 * PC=00000038, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYLOCAL
 * Local: 0x8(SP)
 * Dtor: "dtor_802A38DC"
 * Has end bit
 */
	.4byte 0x000A0000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A38DC
.endobj "@etb_800069C8"

# 0x80009D54..0x80009D60 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D54 | size: 0xC
.obj "@eti_80009D54", local
.hidden "@eti_80009D54"
	.4byte fn_802A3588
	.4byte 0x00000048
	.4byte "@etb_800069C8"
.endobj "@eti_80009D54"

# 0x802A3588..0x802A35D0 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A3588 | size: 0x48
.fn fn_802A3588, global
/* 802A3588 00299308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A358C 0029930C  7C 08 02 A6 */	mflr r0
/* 802A3590 00299310  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802A3594 00299314  C0 02 AB B0 */	lfs f0, lbl_805A3ED0@sda21(r0)
/* 802A3598 00299318  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A359C 0029931C  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802A35A0 00299320  7C 60 1B 78 */	mr r0, r3
/* 802A35A4 00299324  7C 83 23 78 */	mr r3, r4
/* 802A35A8 00299328  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802A35AC 0029932C  7C 04 03 78 */	mr r4, r0
/* 802A35B0 00299330  38 C1 00 08 */	addi r6, r1, 0x8
/* 802A35B4 00299334  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802A35B8 00299338  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802A35BC 0029933C  4B FF F8 8D */	bl fn_802A2E48
/* 802A35C0 00299340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A35C4 00299344  7C 08 03 A6 */	mtlr r0
/* 802A35C8 00299348  38 21 00 20 */	addi r1, r1, 0x20
/* 802A35CC 0029934C  4E 80 00 20 */	blr
.endfn fn_802A3588
