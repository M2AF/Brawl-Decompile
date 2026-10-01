.include "macros.inc"
.file "auto_dtor_802A3938_text"

# 0x80006A18..0x80006A20 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006A18 | size: 0x8
.obj "@etb_80006A18", local
.hidden "@etb_80006A18"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 */
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006A18"

# 0x80009D84..0x80009D90 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x80009D84 | size: 0xC
.obj "@eti_80009D84", local
.hidden "@eti_80009D84"
	.4byte dtor_802A3938
	.4byte 0x0000005C
	.4byte "@etb_80006A18"
.endobj "@eti_80009D84"

# 0x802A3938..0x802A3994 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802A3938 | size: 0x5C
.fn dtor_802A3938, global
/* 802A3938 002996B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A393C 002996BC  7C 08 02 A6 */	mflr r0
/* 802A3940 002996C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A3944 002996C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3948 002996C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A394C 002996CC  7C 7F 1B 78 */	mr r31, r3
/* 802A3950 002996D0  41 82 00 2C */	beq .L_802A397C
/* 802A3954 002996D4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802A3958 002996D8  40 81 00 24 */	ble .L_802A397C
/* 802A395C 002996DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A3960 002996E0  7F E4 FB 78 */	mr r4, r31
/* 802A3964 002996E4  38 A0 00 0C */	li r5, 0xc
/* 802A3968 002996E8  38 C0 00 1D */	li r6, 0x1d
/* 802A396C 002996EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A3970 002996F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A3974 002996F4  7D 89 03 A6 */	mtctr r12
/* 802A3978 002996F8  4E 80 04 21 */	bctrl
.L_802A397C:
/* 802A397C 002996FC  7F E3 FB 78 */	mr r3, r31
/* 802A3980 00299700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3984 00299704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3988 00299708  7C 08 03 A6 */	mtlr r0
/* 802A398C 0029970C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3990 00299710  4E 80 00 20 */	blr
.endfn dtor_802A3938
