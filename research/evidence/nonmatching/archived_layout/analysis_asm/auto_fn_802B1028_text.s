.include "macros.inc"
.file "auto_fn_802B1028_text"

# 0x80007298..0x800072B0 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007298 | size: 0x18
.obj "@etb_80007298", local
.hidden "@etb_80007298"
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
.endobj "@etb_80007298"

# 0x8000A354..0x8000A360 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A354 | size: 0xC
.obj "@eti_8000A354", local
.hidden "@eti_8000A354"
	.4byte fn_802B1028
	.4byte 0x00000048
	.4byte "@etb_80007298"
.endobj "@eti_8000A354"

# 0x802B1028..0x802B1070 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802B1028 | size: 0x48
.fn fn_802B1028, global
/* 802B1028 002A6DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B102C 002A6DAC  7C 08 02 A6 */	mflr r0
/* 802B1030 002A6DB0  3C E0 80 48 */	lis r7, lbl_80487198@ha
/* 802B1034 002A6DB4  C0 02 AC 00 */	lfs f0, lbl_805A3F20@sda21(r0)
/* 802B1038 002A6DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B103C 002A6DBC  38 E7 71 98 */	addi r7, r7, lbl_80487198@l
/* 802B1040 002A6DC0  7C 60 1B 78 */	mr r0, r3
/* 802B1044 002A6DC4  7C 83 23 78 */	mr r3, r4
/* 802B1048 002A6DC8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802B104C 002A6DCC  7C 04 03 78 */	mr r4, r0
/* 802B1050 002A6DD0  38 C1 00 08 */	addi r6, r1, 0x8
/* 802B1054 002A6DD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802B1058 002A6DD8  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802B105C 002A6DDC  48 01 03 75 */	bl fn_802C13D0
/* 802B1060 002A6DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B1064 002A6DE4  7C 08 03 A6 */	mtlr r0
/* 802B1068 002A6DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B106C 002A6DEC  4E 80 00 20 */	blr
.endfn fn_802B1028
