.include "macros.inc"
.file "auto_fn_802A99B0_text"

# 0x80006DF4..0x80006E1C | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006DF4 | size: 0x28
.obj "@etb_80006DF4", local
.hidden "@etb_80006DF4"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r31
 * 
 * PC actions:
 * PC=0000008C, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYMEMBER
 * Member: 0x30(r31)
 * Dtor: "dtor_802A9A5C"
 * 00001C:
 * Type: DESTROYBASE
 * Member: 0x0(r31)
 * Dtor: "dtor_802A0DC4"
 * Has end bit
 */
	.4byte 0x080A0000
	.4byte 0x0000008C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001F
	.4byte 0x00000030
	.4byte dtor_802A9A5C
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte dtor_802A0DC4
.endobj "@etb_80006DF4"

# 0x8000A00C..0x8000A018 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A00C | size: 0xC
.obj "@eti_8000A00C", local
.hidden "@eti_8000A00C"
	.4byte fn_802A99B0
	.4byte 0x000000A4
	.4byte "@etb_80006DF4"
.endobj "@eti_8000A00C"

# 0x802A99B0..0x802A9A54 | size: 0xA4
.text
.balign 4

# .text:0x0 | 0x802A99B0 | size: 0xA4
.fn fn_802A99B0, global
/* 802A99B0 0029F730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A99B4 0029F734  7C 08 02 A6 */	mflr r0
/* 802A99B8 0029F738  3C A0 80 48 */	lis r5, lbl_80486CA8@ha
/* 802A99BC 0029F73C  3D 00 80 48 */	lis r8, lbl_80486924@ha
/* 802A99C0 0029F740  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A99C4 0029F744  3C 80 80 00 */	lis r4, 0x8000
/* 802A99C8 0029F748  38 04 00 01 */	addi r0, r4, 0x1
/* 802A99CC 0029F74C  38 A5 6C A8 */	addi r5, r5, lbl_80486CA8@l
/* 802A99D0 0029F750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A99D4 0029F754  39 20 00 01 */	li r9, 0x1
/* 802A99D8 0029F758  38 80 00 00 */	li r4, 0x0
/* 802A99DC 0029F75C  39 43 00 30 */	addi r10, r3, 0x30
/* 802A99E0 0029F760  90 A3 00 00 */	stw r5, 0x0(r3)
/* 802A99E4 0029F764  39 08 69 24 */	addi r8, r8, lbl_80486924@l
/* 802A99E8 0029F768  38 AA 00 0C */	addi r5, r10, 0xc
/* 802A99EC 0029F76C  C0 02 AB E0 */	lfs f0, lbl_805A3F00@sda21(r0)
/* 802A99F0 0029F770  B1 23 00 06 */	sth r9, 0x6(r3)
/* 802A99F4 0029F774  7C 7F 1B 78 */	mr r31, r3
/* 802A99F8 0029F778  90 E3 00 08 */	stw r7, 0x8(r3)
/* 802A99FC 0029F77C  91 03 00 00 */	stw r8, 0x0(r3)
/* 802A9A00 0029F780  90 A3 00 30 */	stw r5, 0x30(r3)
/* 802A9A04 0029F784  90 83 00 34 */	stw r4, 0x34(r3)
/* 802A9A08 0029F788  90 03 00 38 */	stw r0, 0x38(r3)
/* 802A9A0C 0029F78C  80 06 00 00 */	lwz r0, 0x0(r6)
/* 802A9A10 0029F790  90 03 00 0C */	stw r0, 0xc(r3)
/* 802A9A14 0029F794  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802A9A18 0029F798  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802A9A1C 0029F79C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802A9A20 0029F7A0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802A9A24 0029F7A4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802A9A28 0029F7A8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802A9A2C 0029F7AC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802A9A30 0029F7B0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802A9A34 0029F7B4  7D 43 53 78 */	mr r3, r10
/* 802A9A38 0029F7B8  48 05 30 DD */	bl fn_802FCB14
/* 802A9A3C 0029F7BC  7F E3 FB 78 */	mr r3, r31
/* 802A9A40 0029F7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9A44 0029F7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9A48 0029F7C8  7C 08 03 A6 */	mtlr r0
/* 802A9A4C 0029F7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9A50 0029F7D0  4E 80 00 20 */	blr
.endfn fn_802A99B0
