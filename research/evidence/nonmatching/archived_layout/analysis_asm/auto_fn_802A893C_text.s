.include "macros.inc"
.file "auto_fn_802A893C_text"

# 0x80006C3C..0x80006C54 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006C3C | size: 0x18
.obj "@etb_80006C3C", local
.hidden "@etb_80006C3C"
/*
 * Flag values:
 * Has Elf Vector: No
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
 * Dtor: "dtor_802A3938"
 * Has end bit
 */
	.4byte 0x00080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte dtor_802A3938
.endobj "@etb_80006C3C"

# 0x80009F10..0x80009F1C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009F10 | size: 0xC
.obj "@eti_80009F10", local
.hidden "@eti_80009F10"
	.4byte fn_802A893C
	.4byte 0x00000048
	.4byte "@etb_80006C3C"
.endobj "@eti_80009F10"

# 0x802A893C..0x802A8984 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802A893C | size: 0x48
.fn fn_802A893C, global
/* 802A893C 0029E6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A8940 0029E6C0  7C 08 02 A6 */	mflr r0
/* 802A8944 0029E6C4  3D 00 80 48 */	lis r8, lbl_80487178@ha
/* 802A8948 0029E6C8  7C 89 23 78 */	mr r9, r4
/* 802A894C 0029E6CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A8950 0029E6D0  38 00 00 00 */	li r0, 0x0
/* 802A8954 0029E6D4  39 08 71 78 */	addi r8, r8, lbl_80487178@l
/* 802A8958 0029E6D8  7C A4 2B 78 */	mr r4, r5
/* 802A895C 0029E6DC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802A8960 0029E6E0  7D 25 4B 78 */	mr r5, r9
/* 802A8964 0029E6E4  38 E1 00 08 */	addi r7, r1, 0x8
/* 802A8968 0029E6E8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A896C 0029E6EC  91 01 00 08 */	stw r8, 0x8(r1)
/* 802A8970 0029E6F0  4B FF F8 95 */	bl fn_802A8204
/* 802A8974 0029E6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A8978 0029E6F8  7C 08 03 A6 */	mtlr r0
/* 802A897C 0029E6FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A8980 0029E700  4E 80 00 20 */	blr
.endfn fn_802A893C
