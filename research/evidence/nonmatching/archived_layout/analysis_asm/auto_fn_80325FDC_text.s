.include "macros.inc"
.file "auto_fn_80325FDC_text"

# 0x80008DE4..0x80008E1C | size: 0x38
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008DE4 | size: 0x38
.obj "@etb_80008DE4", local
.hidden "@etb_80008DE4"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000020
 * PC=00000074, Action: 000018
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_80326078"
 * 000020:
 * Type: DESTROYMEMBER
 * Member: 0x28(r30)
 * Dtor: "dtor_80326098"
 * 00002C:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802F0BEC"
 * Has end bit
 */
	.4byte 0x10080000
	.4byte 0x00000060
	.4byte 0x00000020
	.4byte 0x00000074
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0A80001F
	.4byte dtor_80326078
	.4byte 0x0780001E
	.4byte 0x00000028
	.4byte dtor_80326098
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte dtor_802F0BEC
.endobj "@etb_80008DE4"

# 0x8000BDC4..0x8000BDD0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000BDC4 | size: 0xC
.obj "@eti_8000BDC4", local
.hidden "@eti_8000BDC4"
	.4byte fn_80325FDC
	.4byte 0x0000009C
	.4byte "@etb_80008DE4"
.endobj "@eti_8000BDC4"

# 0x80325FDC..0x80326078 | size: 0x9C
.text
.balign 4

# .text:0x0 | 0x80325FDC | size: 0x9C
.fn fn_80325FDC, global
/* 80325FDC 0031BD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325FE0 0031BD60  7C 08 02 A6 */	mflr r0
/* 80325FE4 0031BD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325FE8 0031BD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325FEC 0031BD6C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80325FF0 0031BD70  7C 7E 1B 78 */	mr r30, r3
/* 80325FF4 0031BD74  4B FC AB B5 */	bl fn_802F0BA8
/* 80325FF8 0031BD78  3C 80 80 49 */	lis r4, lbl_80488CF4@ha
/* 80325FFC 0031BD7C  38 C0 00 00 */	li r6, 0x0
/* 80326000 0031BD80  38 84 8C F4 */	addi r4, r4, lbl_80488CF4@l
/* 80326004 0031BD84  3C 60 80 00 */	lis r3, 0x8000
/* 80326008 0031BD88  38 00 00 01 */	li r0, 0x1
/* 8032600C 0031BD8C  90 9E 00 00 */	stw r4, 0x0(r30)
/* 80326010 0031BD90  38 80 00 0C */	li r4, 0xc
/* 80326014 0031BD94  38 A0 00 13 */	li r5, 0x13
/* 80326018 0031BD98  90 DE 00 28 */	stw r6, 0x28(r30)
/* 8032601C 0031BD9C  90 DE 00 2C */	stw r6, 0x2c(r30)
/* 80326020 0031BDA0  90 7E 00 30 */	stw r3, 0x30(r30)
/* 80326024 0031BDA4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80326028 0031BDA8  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 8032602C 0031BDAC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80326030 0031BDB0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80326034 0031BDB4  7D 89 03 A6 */	mtctr r12
/* 80326038 0031BDB8  4E 80 04 21 */	bctrl
/* 8032603C 0031BDBC  38 00 00 0C */	li r0, 0xc
/* 80326040 0031BDC0  7C 7F 1B 79 */	mr. r31, r3
/* 80326044 0031BDC4  B0 03 00 04 */	sth r0, 0x4(r3)
/* 80326048 0031BDC8  41 82 00 08 */	beq .L_80326050
/* 8032604C 0031BDCC  48 00 5B 9D */	bl fn_8032BBE8
.L_80326050:
/* 80326050 0031BDD0  38 00 00 00 */	li r0, 0x0
/* 80326054 0031BDD4  93 FE 00 34 */	stw r31, 0x34(r30)
/* 80326058 0031BDD8  7F C3 F3 78 */	mr r3, r30
/* 8032605C 0031BDDC  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80326060 0031BDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80326064 0031BDE4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80326068 0031BDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032606C 0031BDEC  7C 08 03 A6 */	mtlr r0
/* 80326070 0031BDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80326074 0031BDF4  4E 80 00 20 */	blr
.endfn fn_80325FDC
