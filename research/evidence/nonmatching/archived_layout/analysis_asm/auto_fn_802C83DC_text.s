.include "macros.inc"
.file "auto_fn_802C83DC_text"

# 0x80007FA0..0x80007FB8 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007FA0 | size: 0x18
.obj "@etb_80007FA0", local
.hidden "@etb_80007FA0"
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
.endobj "@etb_80007FA0"

# 0x8000ACCC..0x8000ACD8 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000ACCC | size: 0xC
.obj "@eti_8000ACCC", local
.hidden "@eti_8000ACCC"
	.4byte fn_802C83DC
	.4byte 0x00000048
	.4byte "@etb_80007FA0"
.endobj "@eti_8000ACCC"

# 0x802C83DC..0x802C8424 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C83DC | size: 0x48
.fn fn_802C83DC, global
/* 802C83DC 002BE15C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C83E0 002BE160  7C 08 02 A6 */	mflr r0
/* 802C83E4 002BE164  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802C83E8 002BE168  7C 68 1B 78 */	mr r8, r3
/* 802C83EC 002BE16C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C83F0 002BE170  38 00 00 00 */	li r0, 0x0
/* 802C83F4 002BE174  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802C83F8 002BE178  7C 83 23 78 */	mr r3, r4
/* 802C83FC 002BE17C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C8400 002BE180  7D 04 43 78 */	mr r4, r8
/* 802C8404 002BE184  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C8408 002BE188  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C840C 002BE18C  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C8410 002BE190  4B FF F8 F5 */	bl fn_802C7D04
/* 802C8414 002BE194  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C8418 002BE198  7C 08 03 A6 */	mtlr r0
/* 802C841C 002BE19C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8420 002BE1A0  4E 80 00 20 */	blr
.endfn fn_802C83DC
