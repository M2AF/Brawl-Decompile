.include "macros.inc"
.file "auto_fn_802B1218_text"

# 0x800072F0..0x80007308 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800072F0 | size: 0x18
.obj "@etb_800072F0", local
.hidden "@etb_800072F0"
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
.endobj "@etb_800072F0"

# 0x8000A378..0x8000A384 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A378 | size: 0xC
.obj "@eti_8000A378", local
.hidden "@eti_8000A378"
	.4byte fn_802B1218
	.4byte 0x00000048
	.4byte "@etb_800072F0"
.endobj "@eti_8000A378"

# 0x802B1218..0x802B1260 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B1218 | size: 0x48
.fn fn_802B1218, global
/* 802B1218 002A6F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B121C 002A6F9C  7C 08 02 A6 */	mflr r0
/* 802B1220 002A6FA0  3D 00 80 48 */	lis r8, lbl_80487198@ha
/* 802B1224 002A6FA4  C0 02 AC 00 */	lfs f0, lbl_805A3F20@sda21(r0)
/* 802B1228 002A6FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B122C 002A6FAC  39 08 71 98 */	addi r8, r8, lbl_80487198@l
/* 802B1230 002A6FB0  7C 80 23 78 */	mr r0, r4
/* 802B1234 002A6FB4  7C A4 2B 78 */	mr r4, r5
/* 802B1238 002A6FB8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B123C 002A6FBC  7C 05 03 78 */	mr r5, r0
/* 802B1240 002A6FC0  38 E1 00 08 */	addi r7, r1, 0x8
/* 802B1244 002A6FC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B1248 002A6FC8  91 01 00 08 */	stw r8, 0x8(r1)
/* 802B124C 002A6FCC  48 00 79 99 */	bl fn_802B8BE4
/* 802B1250 002A6FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B1254 002A6FD4  7C 08 03 A6 */	mtlr r0
/* 802B1258 002A6FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B125C 002A6FDC  4E 80 00 20 */	blr
.endfn fn_802B1218
