.include "macros.inc"
.file "auto_fn_802FCB14_text"

# 0x800086C4..0x800086CC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800086C4 | size: 0x8
.obj "@etb_800086C4", local
.hidden "@etb_800086C4"
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
.endobj "@etb_800086C4"

# 0x8000B578..0x8000B584 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B578 | size: 0xC
.obj "@eti_8000B578", local
.hidden "@eti_8000B578"
	.4byte fn_802FCB14
	.4byte 0x00000098
	.4byte "@etb_800086C4"
.endobj "@eti_8000B578"

# 0x802FCB14..0x802FCBAC | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802FCB14 | size: 0x98
.fn fn_802FCB14, global
/* 802FCB14 002F2894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FCB18 002F2898  7C 08 02 A6 */	mflr r0
/* 802FCB1C 002F289C  38 80 00 00 */	li r4, 0x0
/* 802FCB20 002F28A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FCB24 002F28A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FCB28 002F28A8  7C 7F 1B 78 */	mr r31, r3
/* 802FCB2C 002F28AC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802FCB30 002F28B0  90 83 00 04 */	stw r4, 0x4(r3)
/* 802FCB34 002F28B4  54 00 00 BE */	clrlwi r0, r0, 2
/* 802FCB38 002F28B8  7C 04 00 00 */	cmpw r4, r0
/* 802FCB3C 002F28BC  40 82 00 0C */	bne .L_802FCB48
/* 802FCB40 002F28C0  38 80 00 04 */	li r4, 0x4
/* 802FCB44 002F28C4  4B F8 02 F9 */	bl fn_8027CE3C
.L_802FCB48:
/* 802FCB48 002F28C8  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 802FCB4C 002F28CC  38 80 02 00 */	li r4, 0x200
/* 802FCB50 002F28D0  38 A0 00 1D */	li r5, 0x1d
/* 802FCB54 002F28D4  38 03 00 01 */	addi r0, r3, 0x1
/* 802FCB58 002F28D8  90 1F 00 04 */	stw r0, 0x4(r31)
/* 802FCB5C 002F28DC  80 6D CA A8 */	lwz r3, lbl_805A0EC8@sda21(r0)
/* 802FCB60 002F28E0  4B F8 1E C1 */	bl fn_8027EA20
/* 802FCB64 002F28E4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802FCB68 002F28E8  41 82 00 0C */	beq .L_802FCB74
/* 802FCB6C 002F28EC  38 00 00 00 */	li r0, 0x0
/* 802FCB70 002F28F0  90 03 00 00 */	stw r0, 0x0(r3)
.L_802FCB74:
/* 802FCB74 002F28F4  80 DF 00 00 */	lwz r6, 0x0(r31)
/* 802FCB78 002F28F8  38 A0 00 10 */	li r5, 0x10
/* 802FCB7C 002F28FC  38 80 00 01 */	li r4, 0x1
/* 802FCB80 002F2900  38 00 FF FF */	li r0, -0x1
/* 802FCB84 002F2904  90 66 00 00 */	stw r3, 0x0(r6)
/* 802FCB88 002F2908  98 A3 00 13 */	stb r5, 0x13(r3)
/* 802FCB8C 002F290C  98 83 00 10 */	stb r4, 0x10(r3)
/* 802FCB90 002F2910  90 03 00 18 */	stw r0, 0x18(r3)
/* 802FCB94 002F2914  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802FCB98 002F2918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FCB9C 002F291C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FCBA0 002F2920  7C 08 03 A6 */	mtlr r0
/* 802FCBA4 002F2924  38 21 00 10 */	addi r1, r1, 0x10
/* 802FCBA8 002F2928  4E 80 00 20 */	blr
.endfn fn_802FCB14
