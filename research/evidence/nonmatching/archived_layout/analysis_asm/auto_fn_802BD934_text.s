.include "macros.inc"
.file "auto_fn_802BD934_text"

# 0x80007A88..0x80007AAC | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A88 | size: 0x24
.obj "@etb_80007A88", local
.hidden "@etb_80007A88"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 * 
 * PC actions:
 * PC=000000A4, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x18080000
	.4byte 0x000000A4
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80007A88"

# 0x8000A864..0x8000A870 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A864 | size: 0xC
.obj "@eti_8000A864", local
.hidden "@eti_8000A864"
	.4byte fn_802BD934
	.4byte 0x000000C4
	.4byte "@etb_80007A88"
.endobj "@eti_8000A864"

# 0x802BD934..0x802BD9F8 | size: 0xC4
.text
.balign 4

# .text:0x0 | 0x802BD934 | size: 0xC4
.fn fn_802BD934, global
/* 802BD934 002B36B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD938 002B36B8  7C 08 02 A6 */	mflr r0
/* 802BD93C 002B36BC  38 A0 00 1D */	li r5, 0x1d
/* 802BD940 002B36C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD944 002B36C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD948 002B36C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD94C 002B36CC  7C DE 33 78 */	mr r30, r6
/* 802BD950 002B36D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD954 002B36D4  7C 9D 23 78 */	mr r29, r4
/* 802BD958 002B36D8  38 80 00 2C */	li r4, 0x2c
/* 802BD95C 002B36DC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BD960 002B36E0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BD964 002B36E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802BD968 002B36E8  7D 89 03 A6 */	mtctr r12
/* 802BD96C 002B36EC  4E 80 04 21 */	bctrl
/* 802BD970 002B36F0  38 00 00 2C */	li r0, 0x2c
/* 802BD974 002B36F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802BD978 002B36F8  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802BD97C 002B36FC  7C 7F 1B 78 */	mr r31, r3
/* 802BD980 002B3700  41 82 00 58 */	beq .L_802BD9D8
/* 802BD984 002B3704  38 00 00 01 */	li r0, 0x1
/* 802BD988 002B3708  3C C0 80 48 */	lis r6, lbl_80486E64@ha
/* 802BD98C 002B370C  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802BD990 002B3710  3C 80 00 01 */	lis r4, 0x1
/* 802BD994 002B3714  38 04 FF FF */	subi r0, r4, 0x1
/* 802BD998 002B3718  38 C6 6E 64 */	addi r6, r6, lbl_80486E64@l
/* 802BD99C 002B371C  93 C3 00 08 */	stw r30, 0x8(r3)
/* 802BD9A0 002B3720  7C 7E 1B 78 */	mr r30, r3
/* 802BD9A4 002B3724  80 BD 00 00 */	lwz r5, 0x0(r29)
/* 802BD9A8 002B3728  38 83 00 0C */	addi r4, r3, 0xc
/* 802BD9AC 002B372C  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802BD9B0 002B3730  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 802BD9B4 002B3734  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 802BD9B8 002B3738  B0 03 00 20 */	sth r0, 0x20(r3)
/* 802BD9BC 002B373C  B0 03 00 22 */	sth r0, 0x22(r3)
/* 802BD9C0 002B3740  B0 03 00 24 */	sth r0, 0x24(r3)
/* 802BD9C4 002B3744  B0 03 00 26 */	sth r0, 0x26(r3)
/* 802BD9C8 002B3748  B0 03 00 28 */	sth r0, 0x28(r3)
/* 802BD9CC 002B374C  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 802BD9D0 002B3750  38 65 00 10 */	addi r3, r5, 0x10
/* 802BD9D4 002B3754  48 06 77 B1 */	bl fn_80325184
.L_802BD9D8:
/* 802BD9D8 002B3758  7F E3 FB 78 */	mr r3, r31
/* 802BD9DC 002B375C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD9E0 002B3760  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD9E4 002B3764  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD9E8 002B3768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD9EC 002B376C  7C 08 03 A6 */	mtlr r0
/* 802BD9F0 002B3770  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD9F4 002B3774  4E 80 00 20 */	blr
.endfn fn_802BD934
