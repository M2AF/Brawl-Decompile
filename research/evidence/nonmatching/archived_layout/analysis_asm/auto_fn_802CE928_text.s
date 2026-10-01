.include "macros.inc"
.file "auto_fn_802CE928_text"

# 0x80008340..0x80008348 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008340 | size: 0x8
.obj "@etb_80008340", local
.hidden "@etb_80008340"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80008340"

# 0x8000B068..0x8000B074 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B068 | size: 0xC
.obj "@eti_8000B068", local
.hidden "@eti_8000B068"
	.4byte fn_802CE928
	.4byte 0x000000D8
	.4byte "@etb_80008340"
.endobj "@eti_8000B068"

# 0x802CE928..0x802CEA00 | size: 0xD8
.text
.balign 4

# .text:0x0 | 0x802CE928 | size: 0xD8
.fn fn_802CE928, global
/* 802CE928 002C46A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE92C 002C46AC  7C 08 02 A6 */	mflr r0
/* 802CE930 002C46B0  3D 20 80 53 */	lis r9, lbl_80532448@ha
/* 802CE934 002C46B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE938 002C46B8  39 29 24 48 */	addi r9, r9, lbl_80532448@l
/* 802CE93C 002C46BC  81 09 00 04 */	lwz r8, 0x4(r9)
/* 802CE940 002C46C0  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802CE944 002C46C4  7C E0 42 78 */	xor r0, r7, r8
/* 802CE948 002C46C8  7C 00 00 34 */	cntlzw r0, r0
/* 802CE94C 002C46CC  7C E0 00 30 */	slw r0, r7, r0
/* 802CE950 002C46D0  54 00 0F FE */	srwi r0, r0, 31
/* 802CE954 002C46D4  7C 00 07 75 */	extsb. r0, r0
/* 802CE958 002C46D8  41 82 00 20 */	beq .L_802CE978
/* 802CE95C 002C46DC  3C E0 80 41 */	lis r7, lbl_804103D0@ha
/* 802CE960 002C46E0  38 E7 03 D0 */	addi r7, r7, lbl_804103D0@l
/* 802CE964 002C46E4  90 E8 00 00 */	stw r7, 0x0(r8)
/* 802CE968 002C46E8  7C EC 42 E6 */	mftb r7, 268
/* 802CE96C 002C46EC  38 08 00 0C */	addi r0, r8, 0xc
/* 802CE970 002C46F0  90 E8 00 04 */	stw r7, 0x4(r8)
/* 802CE974 002C46F4  90 09 00 04 */	stw r0, 0x4(r9)
.L_802CE978:
/* 802CE978 002C46F8  80 E5 00 08 */	lwz r7, 0x8(r5)
/* 802CE97C 002C46FC  38 00 00 00 */	li r0, 0x0
/* 802CE980 002C4700  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802CE984 002C4704  38 A1 00 08 */	addi r5, r1, 0x8
/* 802CE988 002C4708  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802CE98C 002C470C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802CE990 002C4710  90 61 00 08 */	stw r3, 0x8(r1)
/* 802CE994 002C4714  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CE998 002C4718  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802CE99C 002C471C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802CE9A0 002C4720  7D 89 03 A6 */	mtctr r12
/* 802CE9A4 002C4724  4E 80 04 21 */	bctrl
/* 802CE9A8 002C4728  3C A0 80 53 */	lis r5, lbl_80532448@ha
/* 802CE9AC 002C472C  38 A5 24 48 */	addi r5, r5, lbl_80532448@l
/* 802CE9B0 002C4730  80 85 00 04 */	lwz r4, 0x4(r5)
/* 802CE9B4 002C4734  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802CE9B8 002C4738  7C 60 22 78 */	xor r0, r3, r4
/* 802CE9BC 002C473C  7C 00 00 34 */	cntlzw r0, r0
/* 802CE9C0 002C4740  7C 60 00 30 */	slw r0, r3, r0
/* 802CE9C4 002C4744  54 00 0F FE */	srwi r0, r0, 31
/* 802CE9C8 002C4748  7C 00 07 75 */	extsb. r0, r0
/* 802CE9CC 002C474C  41 82 00 24 */	beq .L_802CE9F0
/* 802CE9D0 002C4750  3C 60 80 41 */	lis r3, lbl_804103D0@ha
/* 802CE9D4 002C4754  38 63 03 D0 */	addi r3, r3, lbl_804103D0@l
/* 802CE9D8 002C4758  38 03 00 0C */	addi r0, r3, 0xc
/* 802CE9DC 002C475C  90 04 00 00 */	stw r0, 0x0(r4)
/* 802CE9E0 002C4760  7C 6C 42 E6 */	mftb r3, 268
/* 802CE9E4 002C4764  38 04 00 0C */	addi r0, r4, 0xc
/* 802CE9E8 002C4768  90 64 00 04 */	stw r3, 0x4(r4)
/* 802CE9EC 002C476C  90 05 00 04 */	stw r0, 0x4(r5)
.L_802CE9F0:
/* 802CE9F0 002C4770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE9F4 002C4774  7C 08 03 A6 */	mtlr r0
/* 802CE9F8 002C4778  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE9FC 002C477C  4E 80 00 20 */	blr
.endfn fn_802CE928
