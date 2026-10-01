.include "macros.inc"
.file "auto_fn_80152928_text"

# 0x80152928..0x80152970 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x80152928 | size: 0x48
.fn fn_80152928, global
/* 80152928 001486A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015292C 001486AC  7C 08 02 A6 */	mflr r0
/* 80152930 001486B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152934 001486B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80152938 001486B8  3F E0 80 4A */	lis r31, lbl_8049ED08@ha
/* 8015293C 001486BC  38 7F ED 08 */	addi r3, r31, lbl_8049ED08@l
/* 80152940 001486C0  48 08 C2 3D */	bl fn_801DEB7C
/* 80152944 001486C4  3C 80 80 02 */	lis r4, fn_80020AF8@ha
/* 80152948 001486C8  3C A0 80 4A */	lis r5, lbl_8049ECF8@ha
/* 8015294C 001486CC  38 7F ED 08 */	addi r3, r31, lbl_8049ED08@l
/* 80152950 001486D0  38 84 0A F8 */	addi r4, r4, fn_80020AF8@l
/* 80152954 001486D4  38 A5 EC F8 */	addi r5, r5, lbl_8049ECF8@l
/* 80152958 001486D8  48 29 DD CD */	bl __register_global_object
/* 8015295C 001486DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152960 001486E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80152964 001486E4  7C 08 03 A6 */	mtlr r0
/* 80152968 001486E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015296C 001486EC  4E 80 00 20 */	blr
.endfn fn_80152928

# 0x80406570..0x80406574 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80152928
