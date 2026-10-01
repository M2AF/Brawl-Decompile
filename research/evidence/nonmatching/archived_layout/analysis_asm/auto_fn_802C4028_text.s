.include "macros.inc"
.file "auto_fn_802C4028_text"

# 0x80007DF0..0x80007DF8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007DF0 | size: 0x8
.obj "@etb_80007DF0", local
.hidden "@etb_80007DF0"
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
.endobj "@etb_80007DF0"

# 0x8000AB40..0x8000AB4C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB40 | size: 0xC
.obj "@eti_8000AB40", local
.hidden "@eti_8000AB40"
	.4byte fn_802C4028
	.4byte 0x0000005C
	.4byte "@etb_80007DF0"
.endobj "@eti_8000AB40"

# 0x802C4028..0x802C4084 | size: 0x5C
.text
.balign 4

# .text:0x0 | 0x802C4028 | size: 0x5C
.fn fn_802C4028, global
/* 802C4028 002B9DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C402C 002B9DAC  7C 08 02 A6 */	mflr r0
/* 802C4030 002B9DB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C4034 002B9DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C4038 002B9DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C403C 002B9DBC  7C 7F 1B 78 */	mr r31, r3
/* 802C4040 002B9DC0  41 82 00 2C */	beq .L_802C406C
/* 802C4044 002B9DC4  2C 04 00 00 */	cmpwi r4, 0x0
/* 802C4048 002B9DC8  40 81 00 24 */	ble .L_802C406C
/* 802C404C 002B9DCC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802C4050 002B9DD0  7F E4 FB 78 */	mr r4, r31
/* 802C4054 002B9DD4  A0 BF 00 04 */	lhz r5, 0x4(r31)
/* 802C4058 002B9DD8  38 C0 00 1D */	li r6, 0x1d
/* 802C405C 002B9DDC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C4060 002B9DE0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C4064 002B9DE4  7D 89 03 A6 */	mtctr r12
/* 802C4068 002B9DE8  4E 80 04 21 */	bctrl
.L_802C406C:
/* 802C406C 002B9DEC  7F E3 FB 78 */	mr r3, r31
/* 802C4070 002B9DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C4074 002B9DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C4078 002B9DF8  7C 08 03 A6 */	mtlr r0
/* 802C407C 002B9DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C4080 002B9E00  4E 80 00 20 */	blr
.endfn fn_802C4028
