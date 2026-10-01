.include "macros.inc"
.file "auto_fn_802B4948_text"

# 0x800074CC..0x800074E4 | size: 0x18
.section extab, "a"
.balign 4

# extab:0x0 | 0x800074CC | size: 0x18
.obj "@etb_800074CC", local
.hidden "@etb_800074CC"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r27-r31
 * 
 * PC actions:
 * PC=00000060, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A1FD4"
 * Has end bit
 */
	.4byte 0x28080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A1FD4
.endobj "@etb_800074CC"

# 0x8000A4D4..0x8000A4E0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A4D4 | size: 0xC
.obj "@eti_8000A4D4", local
.hidden "@eti_8000A4D4"
	.4byte fn_802B4948
	.4byte 0x00000084
	.4byte "@etb_800074CC"
.endobj "@eti_8000A4D4"

# 0x802B4948..0x802B49CC | size: 0x84
.text
.balign 4

# .text:0x0 | 0x802B4948 | size: 0x84
.fn fn_802B4948, global
/* 802B4948 002AA6C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B494C 002AA6CC  7C 08 02 A6 */	mflr r0
/* 802B4950 002AA6D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B4954 002AA6D4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B4958 002AA6D8  7C 7B 1B 78 */	mr r27, r3
/* 802B495C 002AA6DC  7C 9C 23 78 */	mr r28, r4
/* 802B4960 002AA6E0  7C BD 2B 78 */	mr r29, r5
/* 802B4964 002AA6E4  7C DE 33 78 */	mr r30, r6
/* 802B4968 002AA6E8  38 80 00 18 */	li r4, 0x18
/* 802B496C 002AA6EC  38 A0 00 1D */	li r5, 0x1d
/* 802B4970 002AA6F0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B4974 002AA6F4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B4978 002AA6F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B497C 002AA6FC  7D 89 03 A6 */	mtctr r12
/* 802B4980 002AA700  4E 80 04 21 */	bctrl
/* 802B4984 002AA704  38 00 00 18 */	li r0, 0x18
/* 802B4988 002AA708  7C 7F 1B 79 */	mr. r31, r3
/* 802B498C 002AA70C  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B4990 002AA710  41 82 00 24 */	beq .L_802B49B4
/* 802B4994 002AA714  7F 84 E3 78 */	mr r4, r28
/* 802B4998 002AA718  7F 65 DB 78 */	mr r5, r27
/* 802B499C 002AA71C  7F A6 EB 78 */	mr r6, r29
/* 802B49A0 002AA720  7F C7 F3 78 */	mr r7, r30
/* 802B49A4 002AA724  4B FF FB 81 */	bl fn_802B4524
/* 802B49A8 002AA728  3C 60 80 48 */	lis r3, lbl_80486BF8@ha
/* 802B49AC 002AA72C  38 63 6B F8 */	addi r3, r3, lbl_80486BF8@l
/* 802B49B0 002AA730  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802B49B4:
/* 802B49B4 002AA734  7F E3 FB 78 */	mr r3, r31
/* 802B49B8 002AA738  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B49BC 002AA73C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B49C0 002AA740  7C 08 03 A6 */	mtlr r0
/* 802B49C4 002AA744  38 21 00 20 */	addi r1, r1, 0x20
/* 802B49C8 002AA748  4E 80 00 20 */	blr
.endfn fn_802B4948
