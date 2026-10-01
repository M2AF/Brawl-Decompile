.include "macros.inc"
.file "auto_fn_802A9E74_text"

# 0x80006E5C..0x80006E74 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x80006E5C | size: 0x18
.obj "@etb_80006E5C", local
.hidden "@etb_80006E5C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000064, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_80006E5C"

# 0x8000A060..0x8000A06C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A060 | size: 0xC
.obj "@eti_8000A060", local
.hidden "@eti_8000A060"
	.4byte fn_802A9E74
	.4byte 0x0000007C
	.4byte "@etb_80006E5C"
.endobj "@eti_8000A060"

# 0x802A9E74..0x802A9EF0 | size: 0x7C
.text
.balign 4

# .text:0x0 | 0x802A9E74 | size: 0x7C
.fn fn_802A9E74, global
/* 802A9E74 0029FBF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9E78 0029FBF8  7C 08 02 A6 */	mflr r0
/* 802A9E7C 0029FBFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A9E80 0029FC00  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802A9E84 0029FC04  7C 7B 1B 78 */	mr r27, r3
/* 802A9E88 0029FC08  7C 9C 23 78 */	mr r28, r4
/* 802A9E8C 0029FC0C  7C BD 2B 78 */	mr r29, r5
/* 802A9E90 0029FC10  7C DE 33 78 */	mr r30, r6
/* 802A9E94 0029FC14  38 80 00 40 */	li r4, 0x40
/* 802A9E98 0029FC18  38 A0 00 1D */	li r5, 0x1d
/* 802A9E9C 0029FC1C  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802A9EA0 0029FC20  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802A9EA4 0029FC24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802A9EA8 0029FC28  7D 89 03 A6 */	mtctr r12
/* 802A9EAC 0029FC2C  4E 80 04 21 */	bctrl
/* 802A9EB0 0029FC30  38 00 00 40 */	li r0, 0x40
/* 802A9EB4 0029FC34  2C 03 00 00 */	cmpwi r3, 0x0
/* 802A9EB8 0029FC38  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802A9EBC 0029FC3C  7C 7F 1B 78 */	mr r31, r3
/* 802A9EC0 0029FC40  41 82 00 18 */	beq .L_802A9ED8
/* 802A9EC4 0029FC44  7F 64 DB 78 */	mr r4, r27
/* 802A9EC8 0029FC48  7F 85 E3 78 */	mr r5, r28
/* 802A9ECC 0029FC4C  7F A6 EB 78 */	mr r6, r29
/* 802A9ED0 0029FC50  7F C7 F3 78 */	mr r7, r30
/* 802A9ED4 0029FC54  4B FF FA DD */	bl fn_802A99B0
.L_802A9ED8:
/* 802A9ED8 0029FC58  7F E3 FB 78 */	mr r3, r31
/* 802A9EDC 0029FC5C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802A9EE0 0029FC60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9EE4 0029FC64  7C 08 03 A6 */	mtlr r0
/* 802A9EE8 0029FC68  38 21 00 20 */	addi r1, r1, 0x20
/* 802A9EEC 0029FC6C  4E 80 00 20 */	blr
.endfn fn_802A9E74
