.include "macros.inc"
.file "auto_fn_8014E2FC_text"

# 0x8014E2FC..0x8014E344 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x8014E2FC | size: 0x48
.fn fn_8014E2FC, global
/* 8014E2FC 0014407C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014E300 00144080  7C 08 02 A6 */	mflr r0
/* 8014E304 00144084  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014E308 00144088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014E30C 0014408C  3F E0 80 4A */	lis r31, lbl_8049ECC8@ha
/* 8014E310 00144090  38 7F EC C8 */	addi r3, r31, lbl_8049ECC8@l
/* 8014E314 00144094  48 09 08 69 */	bl fn_801DEB7C
/* 8014E318 00144098  3C 80 80 02 */	lis r4, fn_80020AF8@ha
/* 8014E31C 0014409C  3C A0 80 4A */	lis r5, lbl_8049ECB8@ha
/* 8014E320 001440A0  38 7F EC C8 */	addi r3, r31, lbl_8049ECC8@l
/* 8014E324 001440A4  38 84 0A F8 */	addi r4, r4, fn_80020AF8@l
/* 8014E328 001440A8  38 A5 EC B8 */	addi r5, r5, lbl_8049ECB8@l
/* 8014E32C 001440AC  48 2A 23 F9 */	bl __register_global_object
/* 8014E330 001440B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014E334 001440B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014E338 001440B8  7C 08 03 A6 */	mtlr r0
/* 8014E33C 001440BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014E340 001440C0  4E 80 00 20 */	blr
.endfn fn_8014E2FC

# 0x8040656C..0x80406570 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8014E2FC
