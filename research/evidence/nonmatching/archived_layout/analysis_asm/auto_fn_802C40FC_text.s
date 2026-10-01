.include "macros.inc"
.file "auto_fn_802C40FC_text"

# 0x80007E00..0x80007E08 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007E00 | size: 0x8
.obj "@etb_80007E00", local
.hidden "@etb_80007E00"
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
.endobj "@etb_80007E00"

# 0x8000AB58..0x8000AB64 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000AB58 | size: 0xC
.obj "@eti_8000AB58", local
.hidden "@eti_8000AB58"
	.4byte fn_802C40FC
	.4byte 0x00000068
	.4byte "@etb_80007E00"
.endobj "@eti_8000AB58"

# 0x802C40FC..0x802C4164 | size: 0x68
.text
.balign 4

# .text:0x0 | 0x802C40FC | size: 0x68
.fn fn_802C40FC, global
/* 802C40FC 002B9E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C4100 002B9E80  7C 08 02 A6 */	mflr r0
/* 802C4104 002B9E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C4108 002B9E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C410C 002B9E8C  7C 7F 1B 78 */	mr r31, r3
/* 802C4110 002B9E90  A0 83 00 0C */	lhz r4, 0xc(r3)
/* 802C4114 002B9E94  28 04 FF FF */	cmplwi r4, 0xffff
/* 802C4118 002B9E98  41 82 00 18 */	beq .L_802C4130
/* 802C411C 002B9E9C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 802C4120 002B9EA0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C4124 002B9EA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C4128 002B9EA8  7D 89 03 A6 */	mtctr r12
/* 802C412C 002B9EAC  4E 80 04 21 */	bctrl
.L_802C4130:
/* 802C4130 002B9EB0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C4134 002B9EB4  41 82 00 1C */	beq .L_802C4150
/* 802C4138 002B9EB8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C413C 002B9EBC  7F E3 FB 78 */	mr r3, r31
/* 802C4140 002B9EC0  38 80 00 01 */	li r4, 0x1
/* 802C4144 002B9EC4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C4148 002B9EC8  7D 89 03 A6 */	mtctr r12
/* 802C414C 002B9ECC  4E 80 04 21 */	bctrl
.L_802C4150:
/* 802C4150 002B9ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C4154 002B9ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C4158 002B9ED8  7C 08 03 A6 */	mtlr r0
/* 802C415C 002B9EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C4160 002B9EE0  4E 80 00 20 */	blr
.endfn fn_802C40FC
