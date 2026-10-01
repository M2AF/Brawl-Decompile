.include "macros.inc"
.file "auto_fn_802C3AB0_text"

# 0x80007D60..0x80007D78 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007D60 | size: 0x18
.obj "@etb_80007D60", local
.hidden "@etb_80007D60"
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
.endobj "@etb_80007D60"

# 0x8000AAE0..0x8000AAEC | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AAE0 | size: 0xC
.obj "@eti_8000AAE0", local
.hidden "@eti_8000AAE0"
	.4byte fn_802C3AB0
	.4byte 0x00000048
	.4byte "@etb_80007D60"
.endobj "@eti_8000AAE0"

# 0x802C3AB0..0x802C3AF8 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802C3AB0 | size: 0x48
.fn fn_802C3AB0, global
/* 802C3AB0 002B9830  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C3AB4 002B9834  7C 08 02 A6 */	mflr r0
/* 802C3AB8 002B9838  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802C3ABC 002B983C  7C 68 1B 78 */	mr r8, r3
/* 802C3AC0 002B9840  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C3AC4 002B9844  38 00 00 00 */	li r0, 0x0
/* 802C3AC8 002B9848  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802C3ACC 002B984C  7C 83 23 78 */	mr r3, r4
/* 802C3AD0 002B9850  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C3AD4 002B9854  7D 04 43 78 */	mr r4, r8
/* 802C3AD8 002B9858  38 C1 00 08 */	addi r6, r1, 0x8
/* 802C3ADC 002B985C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C3AE0 002B9860  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802C3AE4 002B9864  4B FF FC 75 */	bl fn_802C3758
/* 802C3AE8 002B9868  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C3AEC 002B986C  7C 08 03 A6 */	mtlr r0
/* 802C3AF0 002B9870  38 21 00 20 */	addi r1, r1, 0x20
/* 802C3AF4 002B9874  4E 80 00 20 */	blr
.endfn fn_802C3AB0
