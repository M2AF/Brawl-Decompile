.include "macros.inc"
.file "auto_fn_803FC9BC_text"

# 0x8000973C..0x80009744 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000973C | size: 0x8
.obj "@etb_8000973C", local
.hidden "@etb_8000973C"
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
.endobj "@etb_8000973C"

# 0x8000C820..0x8000C82C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C820 | size: 0xC
.obj "@eti_8000C820", local
.hidden "@eti_8000C820"
	.4byte fn_803FC9BC
	.4byte 0x00000040
	.4byte "@etb_8000973C"
.endobj "@eti_8000C820"

# 0x803FC9BC..0x803FC9FC | size: 0x40
.text
.balign 4

# .text:0x0 | 0x803FC9BC | size: 0x40
.fn fn_803FC9BC, global
/* 803FC9BC 003F273C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC9C0 003F2740  7C 08 02 A6 */	mflr r0
/* 803FC9C4 003F2744  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC9C8 003F2748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FC9CC 003F274C  7C 7F 1B 78 */	mr r31, r3
/* 803FC9D0 003F2750  38 61 00 08 */	addi r3, r1, 0x8
/* 803FC9D4 003F2754  48 00 3D 1D */	bl fn_804006F0
/* 803FC9D8 003F2758  80 01 00 08 */	lwz r0, 0x8(r1)
/* 803FC9DC 003F275C  7C 60 FA 14 */	add r3, r0, r31
/* 803FC9E0 003F2760  90 61 00 08 */	stw r3, 0x8(r1)
/* 803FC9E4 003F2764  48 00 3D 95 */	bl fn_80400778
/* 803FC9E8 003F2768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC9EC 003F276C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FC9F0 003F2770  7C 08 03 A6 */	mtlr r0
/* 803FC9F4 003F2774  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC9F8 003F2778  4E 80 00 20 */	blr
.endfn fn_803FC9BC
