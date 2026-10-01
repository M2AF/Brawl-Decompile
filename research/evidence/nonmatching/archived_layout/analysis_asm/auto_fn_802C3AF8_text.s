.include "macros.inc"
.file "auto_fn_802C3AF8_text"

# 0x80007D78..0x80007D90 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D78 | size: 0x18
.obj "@etb_80007D78", local
.hidden "@etb_80007D78"
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
.endobj "@etb_80007D78"

# 0x8000AAEC..0x8000AAF8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AAEC | size: 0xC
.obj "@eti_8000AAEC", local
.hidden "@eti_8000AAEC"
	.4byte fn_802C3AF8
	.4byte 0x00000048
	.4byte "@etb_80007D78"
.endobj "@eti_8000AAEC"

# 0x802C3AF8..0x802C3B40 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C3AF8 | size: 0x48
.fn fn_802C3AF8, global
/* 802C3AF8 002B9878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C3AFC 002B987C  7C 08 02 A6 */	mflr r0
/* 802C3B00 002B9880  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802C3B04 002B9884  C0 02 AC 98 */	lfs f0, lbl_805A3FB8@sda21(r0)
/* 802C3B08 002B9888  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C3B0C 002B988C  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802C3B10 002B9890  7C 80 23 78 */	mr r0, r4
/* 802C3B14 002B9894  7C A4 2B 78 */	mr r4, r5
/* 802C3B18 002B9898  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802C3B1C 002B989C  7C 05 03 78 */	mr r5, r0
/* 802C3B20 002B98A0  38 E1 00 08 */	addi r7, r1, 0x8
/* 802C3B24 002B98A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802C3B28 002B98A8  91 01 00 08 */	stw r8, 0x8(r1)
/* 802C3B2C 002B98AC  4B FF F1 0D */	bl fn_802C2C38
/* 802C3B30 002B98B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C3B34 002B98B4  7C 08 03 A6 */	mtlr r0
/* 802C3B38 002B98B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802C3B3C 002B98BC  4E 80 00 20 */	blr
.endfn fn_802C3AF8
