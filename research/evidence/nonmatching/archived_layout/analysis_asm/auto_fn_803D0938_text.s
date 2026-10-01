.include "macros.inc"
.file "auto_fn_803D0938_text"

# 0x80009394..0x8000939C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009394 | size: 0x8
.obj "@etb_80009394", local
.hidden "@etb_80009394"
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
.endobj "@etb_80009394"

# 0x8000C2F8..0x8000C304 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C2F8 | size: 0xC
.obj "@eti_8000C2F8", local
.hidden "@eti_8000C2F8"
	.4byte fn_803D0938
	.4byte 0x000000C0
	.4byte "@etb_80009394"
.endobj "@eti_8000C2F8"

# 0x803D0938..0x803D09F8 | size: 0xC0
.text
.balign 4

# .text:0x0 | 0x803D0938 | size: 0xC0
.fn fn_803D0938, global
/* 803D0938 003C66B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D093C 003C66BC  7C 08 02 A6 */	mflr r0
/* 803D0940 003C66C0  38 80 00 00 */	li r4, 0x0
/* 803D0944 003C66C4  38 A0 00 01 */	li r5, 0x1
/* 803D0948 003C66C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D094C 003C66CC  38 C0 00 02 */	li r6, 0x2
/* 803D0950 003C66D0  38 E0 00 03 */	li r7, 0x3
/* 803D0954 003C66D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D0958 003C66D8  7C 7F 1B 78 */	mr r31, r3
/* 803D095C 003C66DC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 803D0960 003C66E0  4B E2 35 FD */	bl fn_801F3F5C
/* 803D0964 003C66E4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803D0968 003C66E8  38 80 00 00 */	li r4, 0x0
/* 803D096C 003C66EC  38 A0 00 03 */	li r5, 0x3
/* 803D0970 003C66F0  38 C0 00 02 */	li r6, 0x2
/* 803D0974 003C66F4  38 63 00 01 */	addi r3, r3, 0x1
/* 803D0978 003C66F8  38 E0 00 01 */	li r7, 0x1
/* 803D097C 003C66FC  4B E2 35 E1 */	bl fn_801F3F5C
/* 803D0980 003C6700  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 803D0984 003C6704  4B E2 38 75 */	bl fn_801F41F8
/* 803D0988 003C6708  38 60 00 00 */	li r3, 0x0
/* 803D098C 003C670C  4B E2 31 71 */	bl fn_801F3AFC
/* 803D0990 003C6710  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 803D0994 003C6714  38 60 00 00 */	li r3, 0x0
/* 803D0998 003C6718  38 80 00 00 */	li r4, 0x0
/* 803D099C 003C671C  38 A0 00 00 */	li r5, 0x0
/* 803D09A0 003C6720  38 C0 00 00 */	li r6, 0x0
/* 803D09A4 003C6724  38 E0 00 01 */	li r7, 0x1
/* 803D09A8 003C6728  4B E2 33 61 */	bl fn_801F3D08
/* 803D09AC 003C672C  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 803D09B0 003C6730  38 60 00 00 */	li r3, 0x0
/* 803D09B4 003C6734  38 80 00 00 */	li r4, 0x0
/* 803D09B8 003C6738  38 A0 00 00 */	li r5, 0x0
/* 803D09BC 003C673C  38 C0 00 00 */	li r6, 0x0
/* 803D09C0 003C6740  38 E0 00 01 */	li r7, 0x1
/* 803D09C4 003C6744  4B E2 32 ED */	bl fn_801F3CB0
/* 803D09C8 003C6748  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 803D09CC 003C674C  38 60 00 00 */	li r3, 0x0
/* 803D09D0 003C6750  38 84 00 0C */	addi r4, r4, 0xc
/* 803D09D4 003C6754  4B E2 34 AD */	bl fn_801F3E80
/* 803D09D8 003C6758  38 60 00 00 */	li r3, 0x0
/* 803D09DC 003C675C  38 80 00 00 */	li r4, 0x0
/* 803D09E0 003C6760  4B E2 34 F1 */	bl fn_801F3ED0
/* 803D09E4 003C6764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D09E8 003C6768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D09EC 003C676C  7C 08 03 A6 */	mtlr r0
/* 803D09F0 003C6770  38 21 00 10 */	addi r1, r1, 0x10
/* 803D09F4 003C6774  4E 80 00 20 */	blr
.endfn fn_803D0938
