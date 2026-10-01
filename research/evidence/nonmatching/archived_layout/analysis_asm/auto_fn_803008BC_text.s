.include "macros.inc"
.file "auto_fn_803008BC_text"

# 0x80008764..0x8000876C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008764 | size: 0x8
.obj "@etb_80008764", local
.hidden "@etb_80008764"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 */
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_80008764"

# 0x8000B668..0x8000B674 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B668 | size: 0xC
.obj "@eti_8000B668", local
.hidden "@eti_8000B668"
	.4byte fn_803008BC
	.4byte 0x000000BC
	.4byte "@etb_80008764"
.endobj "@eti_8000B668"

# 0x803008BC..0x80300978 | size: 0xBC
.text
.balign 4

# .text:0x0 | 0x803008BC | size: 0xBC
.fn fn_803008BC, global
/* 803008BC 002F663C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803008C0 002F6640  7C 08 02 A6 */	mflr r0
/* 803008C4 002F6644  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 803008C8 002F6648  90 01 00 24 */	stw r0, 0x24(r1)
/* 803008CC 002F664C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 803008D0 002F6650  7C BD 2B 78 */	mr r29, r5
/* 803008D4 002F6654  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 803008D8 002F6658  7C 7B 1B 78 */	mr r27, r3
/* 803008DC 002F665C  7C 9C 23 78 */	mr r28, r4
/* 803008E0 002F6660  83 C6 00 00 */	lwz r30, 0x0(r6)
/* 803008E4 002F6664  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 803008E8 002F6668  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 803008EC 002F666C  7F C3 F3 78 */	mr r3, r30
/* 803008F0 002F6670  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 803008F4 002F6674  7D 89 03 A6 */	mtctr r12
/* 803008F8 002F6678  4E 80 04 21 */	bctrl
/* 803008FC 002F667C  2C 03 00 06 */	cmpwi r3, 0x6
/* 80300900 002F6680  40 82 00 1C */	bne .L_8030091C
/* 80300904 002F6684  7F A3 EB 78 */	mr r3, r29
/* 80300908 002F6688  7F E4 FB 78 */	mr r4, r31
/* 8030090C 002F668C  7F C5 F3 78 */	mr r5, r30
/* 80300910 002F6690  38 DB 00 10 */	addi r6, r27, 0x10
/* 80300914 002F6694  48 01 BF B9 */	bl fn_8031C8CC
/* 80300918 002F6698  48 00 00 18 */	b .L_80300930
.L_8030091C:
/* 8030091C 002F669C  7F A3 EB 78 */	mr r3, r29
/* 80300920 002F66A0  7F E4 FB 78 */	mr r4, r31
/* 80300924 002F66A4  7F C5 F3 78 */	mr r5, r30
/* 80300928 002F66A8  38 DB 00 10 */	addi r6, r27, 0x10
/* 8030092C 002F66AC  48 01 C4 39 */	bl fn_8031CD64
.L_80300930:
/* 80300930 002F66B0  38 00 00 00 */	li r0, 0x0
/* 80300934 002F66B4  98 1C 00 02 */	stb r0, 0x2(r28)
/* 80300938 002F66B8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8030093C 002F66BC  88 7D 00 0C */	lbz r3, 0xc(r29)
/* 80300940 002F66C0  88 1D 00 0D */	lbz r0, 0xd(r29)
/* 80300944 002F66C4  88 9D 00 0E */	lbz r4, 0xe(r29)
/* 80300948 002F66C8  7C 03 02 14 */	add r0, r3, r0
/* 8030094C 002F66CC  54 83 18 38 */	slwi r3, r4, 3
/* 80300950 002F66D0  54 00 08 3C */	slwi r0, r0, 1
/* 80300954 002F66D4  7C 63 02 14 */	add r3, r3, r0
/* 80300958 002F66D8  38 03 00 1F */	addi r0, r3, 0x1f
/* 8030095C 002F66DC  54 00 00 36 */	clrrwi r0, r0, 4
/* 80300960 002F66E0  7C 7D 02 14 */	add r3, r29, r0
/* 80300964 002F66E4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80300968 002F66E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030096C 002F66EC  7C 08 03 A6 */	mtlr r0
/* 80300970 002F66F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80300974 002F66F4  4E 80 00 20 */	blr
.endfn fn_803008BC
