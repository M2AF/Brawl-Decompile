.include "macros.inc"
.file "auto_fn_802BD2C0_text"

# 0x800079D4..0x800079EC | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800079D4 | size: 0x18
.obj "@etb_800079D4", local
.hidden "@etb_800079D4"
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
.endobj "@etb_800079D4"

# 0x8000A7F8..0x8000A804 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A7F8 | size: 0xC
.obj "@eti_8000A7F8", local
.hidden "@eti_8000A7F8"
	.4byte fn_802BD2C0
	.4byte 0x00000048
	.4byte "@etb_800079D4"
.endobj "@eti_8000A7F8"

# 0x802BD2C0..0x802BD308 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802BD2C0 | size: 0x48
.fn fn_802BD2C0, global
/* 802BD2C0 002B3040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD2C4 002B3044  7C 08 02 A6 */	mflr r0
/* 802BD2C8 002B3048  3C E0 80 48 */	lis r7, lbl_80487178@ha
/* 802BD2CC 002B304C  7C 68 1B 78 */	mr r8, r3
/* 802BD2D0 002B3050  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD2D4 002B3054  38 00 00 00 */	li r0, 0x0
/* 802BD2D8 002B3058  38 E7 71 78 */	addi r7, r7, lbl_80487178@l
/* 802BD2DC 002B305C  7C 83 23 78 */	mr r3, r4
/* 802BD2E0 002B3060  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BD2E4 002B3064  7D 04 43 78 */	mr r4, r8
/* 802BD2E8 002B3068  38 C1 00 08 */	addi r6, r1, 0x8
/* 802BD2EC 002B306C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BD2F0 002B3070  90 E1 00 08 */	stw r7, 0x8(r1)
/* 802BD2F4 002B3074  4B FF F9 ED */	bl fn_802BCCE0
/* 802BD2F8 002B3078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD2FC 002B307C  7C 08 03 A6 */	mtlr r0
/* 802BD300 002B3080  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD304 002B3084  4E 80 00 20 */	blr
.endfn fn_802BD2C0
