.include "macros.inc"
.file "auto_fn_802B28B4_text"

# 0x80007404..0x8000742C | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007404 | size: 0x28
.obj "@etb_80007404", local
.hidden "@etb_80007404"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=00000070, Action: 000018
 * PC=000000B8, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 * 000020:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x00000070
	.4byte 0x00000018
	.4byte 0x000000B8
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80007404"

# 0x8000A450..0x8000A45C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A450 | size: 0xC
.obj "@eti_8000A450", local
.hidden "@eti_8000A450"
	.4byte fn_802B28B4
	.4byte 0x000000DC
	.4byte "@etb_80007404"
.endobj "@eti_8000A450"

# 0x802B28B4..0x802B2990 | size: 0xDC
.text
.balign 4

# .text:0x0 | 0x802B28B4 | size: 0xDC
.fn fn_802B28B4, global
/* 802B28B4 002A8634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B28B8 002A8638  7C 08 02 A6 */	mflr r0
/* 802B28BC 002A863C  2C 06 00 00 */	cmpwi r6, 0x0
/* 802B28C0 002A8640  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B28C4 002A8644  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B28C8 002A8648  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B28CC 002A864C  7C DE 33 78 */	mr r30, r6
/* 802B28D0 002A8650  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B28D4 002A8654  7C 9D 23 78 */	mr r29, r4
/* 802B28D8 002A8658  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B28DC 002A865C  7C 7C 1B 78 */	mr r28, r3
/* 802B28E0 002A8660  41 82 00 4C */	beq .L_802B292C
/* 802B28E4 002A8664  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B28E8 002A8668  38 80 00 80 */	li r4, 0x80
/* 802B28EC 002A866C  38 A0 00 1D */	li r5, 0x1d
/* 802B28F0 002A8670  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B28F4 002A8674  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B28F8 002A8678  7D 89 03 A6 */	mtctr r12
/* 802B28FC 002A867C  4E 80 04 21 */	bctrl
/* 802B2900 002A8680  38 00 00 80 */	li r0, 0x80
/* 802B2904 002A8684  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B2908 002A8688  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B290C 002A868C  7C 7F 1B 78 */	mr r31, r3
/* 802B2910 002A8690  41 82 00 14 */	beq .L_802B2924
/* 802B2914 002A8694  7F 84 E3 78 */	mr r4, r28
/* 802B2918 002A8698  7F A5 EB 78 */	mr r5, r29
/* 802B291C 002A869C  7F C6 F3 78 */	mr r6, r30
/* 802B2920 002A86A0  4B FF FF 51 */	bl fn_802B2870
.L_802B2924:
/* 802B2924 002A86A4  7F E3 FB 78 */	mr r3, r31
/* 802B2928 002A86A8  48 00 00 48 */	b .L_802B2970
.L_802B292C:
/* 802B292C 002A86AC  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B2930 002A86B0  38 80 00 30 */	li r4, 0x30
/* 802B2934 002A86B4  38 A0 00 1D */	li r5, 0x1d
/* 802B2938 002A86B8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B293C 002A86BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B2940 002A86C0  7D 89 03 A6 */	mtctr r12
/* 802B2944 002A86C4  4E 80 04 21 */	bctrl
/* 802B2948 002A86C8  38 00 00 30 */	li r0, 0x30
/* 802B294C 002A86CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B2950 002A86D0  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B2954 002A86D4  7C 7F 1B 78 */	mr r31, r3
/* 802B2958 002A86D8  41 82 00 14 */	beq .L_802B296C
/* 802B295C 002A86DC  7F 84 E3 78 */	mr r4, r28
/* 802B2960 002A86E0  7F A5 EB 78 */	mr r5, r29
/* 802B2964 002A86E4  7F C6 F3 78 */	mr r6, r30
/* 802B2968 002A86E8  4B FF EF D5 */	bl fn_802B193C
.L_802B296C:
/* 802B296C 002A86EC  7F E3 FB 78 */	mr r3, r31
.L_802B2970:
/* 802B2970 002A86F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B2974 002A86F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B2978 002A86F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B297C 002A86FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B2980 002A8700  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B2984 002A8704  7C 08 03 A6 */	mtlr r0
/* 802B2988 002A8708  38 21 00 20 */	addi r1, r1, 0x20
/* 802B298C 002A870C  4E 80 00 20 */	blr
.endfn fn_802B28B4
