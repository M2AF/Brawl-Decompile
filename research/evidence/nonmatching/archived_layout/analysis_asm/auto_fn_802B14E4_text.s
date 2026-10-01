.include "macros.inc"
.file "auto_fn_802B14E4_text"

# 0x80007358..0x80007370 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007358 | size: 0x18
.obj "@etb_80007358", local
.hidden "@etb_80007358"
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
.endobj "@etb_80007358"

# 0x8000A3B4..0x8000A3C0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A3B4 | size: 0xC
.obj "@eti_8000A3B4", local
.hidden "@eti_8000A3B4"
	.4byte fn_802B14E4
	.4byte 0x00000048
	.4byte "@etb_80007358"
.endobj "@eti_8000A3B4"

# 0x802B14E4..0x802B152C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B14E4 | size: 0x48
.fn fn_802B14E4, global
/* 802B14E4 002A7264  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B14E8 002A7268  7C 08 02 A6 */	mflr r0
/* 802B14EC 002A726C  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802B14F0 002A7270  C0 02 AC 00 */	lfs f0, lbl_805A3F20@sda21(r0)
/* 802B14F4 002A7274  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B14F8 002A7278  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802B14FC 002A727C  7C 60 1B 78 */	mr r0, r3
/* 802B1500 002A7280  7C 83 23 78 */	mr r3, r4
/* 802B1504 002A7284  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B1508 002A7288  7C 04 03 78 */	mr r4, r0
/* 802B150C 002A728C  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B1510 002A7290  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B1514 002A7294  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B1518 002A7298  4B FF E2 B9 */	bl fn_802AF7D0
/* 802B151C 002A729C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B1520 002A72A0  7C 08 03 A6 */	mtlr r0
/* 802B1524 002A72A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B1528 002A72A8  4E 80 00 20 */	blr
.endfn fn_802B14E4
