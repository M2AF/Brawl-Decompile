.include "macros.inc"
.file "auto_fn_802C08FC_text"

# 0x80007BC0..0x80007BC8 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007BC0 | size: 0x8
.obj "@etb_80007BC0", local
.hidden "@etb_80007BC0"
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
.endobj "@etb_80007BC0"

# 0x8000A948..0x8000A954 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A948 | size: 0xC
.obj "@eti_8000A948", local
.hidden "@eti_8000A948"
	.4byte fn_802C08FC
	.4byte 0x00000098
	.4byte "@etb_80007BC0"
.endobj "@eti_8000A948"

# 0x802C08FC..0x802C0994 | size: 0x98
.text
.balign 4

# .text:0x0 | 0x802C08FC | size: 0x98
.fn fn_802C08FC, global
/* 802C08FC 002B667C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0900 002B6680  7C 08 02 A6 */	mflr r0
/* 802C0904 002B6684  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0908 002B6688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C090C 002B668C  7C 7F 1B 78 */	mr r31, r3
/* 802C0910 002B6690  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802C0914 002B6694  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0918 002B6698  40 82 00 20 */	bne .L_802C0938
/* 802C091C 002B669C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802C0920 002B66A0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802C0924 002B66A4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0928 002B66A8  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802C092C 002B66AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802C0930 002B66B0  7D 89 03 A6 */	mtctr r12
/* 802C0934 002B66B4  4E 80 04 21 */	bctrl
.L_802C0938:
/* 802C0938 002B66B8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802C093C 002B66BC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 802C0940 002B66C0  40 82 00 20 */	bne .L_802C0960
/* 802C0944 002B66C4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802C0948 002B66C8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802C094C 002B66CC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802C0950 002B66D0  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802C0954 002B66D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802C0958 002B66D8  7D 89 03 A6 */	mtctr r12
/* 802C095C 002B66DC  4E 80 04 21 */	bctrl
.L_802C0960:
/* 802C0960 002B66E0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C0964 002B66E4  41 82 00 1C */	beq .L_802C0980
/* 802C0968 002B66E8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802C096C 002B66EC  7F E3 FB 78 */	mr r3, r31
/* 802C0970 002B66F0  38 80 00 01 */	li r4, 0x1
/* 802C0974 002B66F4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802C0978 002B66F8  7D 89 03 A6 */	mtctr r12
/* 802C097C 002B66FC  4E 80 04 21 */	bctrl
.L_802C0980:
/* 802C0980 002B6700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0984 002B6704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0988 002B6708  7C 08 03 A6 */	mtlr r0
/* 802C098C 002B670C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0990 002B6710  4E 80 00 20 */	blr
.endfn fn_802C08FC
