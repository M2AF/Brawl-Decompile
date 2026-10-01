.include "macros.inc"
.file "auto_fn_802B883C_text"

# 0x800076C4..0x800076CC | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800076C4 | size: 0x8
.obj "@etb_800076C4", local
.hidden "@etb_800076C4"
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
.endobj "@etb_800076C4"

# 0x8000A600..0x8000A60C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A600 | size: 0xC
.obj "@eti_8000A600", local
.hidden "@eti_8000A600"
	.4byte fn_802B883C
	.4byte 0x00000058
	.4byte "@etb_800076C4"
.endobj "@eti_8000A600"

# 0x802B883C..0x802B8894 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x802B883C | size: 0x58
.fn fn_802B883C, global
/* 802B883C 002AE5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8840 002AE5C0  7C 08 02 A6 */	mflr r0
/* 802B8844 002AE5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8848 002AE5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B884C 002AE5CC  7C 7F 1B 78 */	mr r31, r3
/* 802B8850 002AE5D0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802B8854 002AE5D4  80 A3 00 08 */	lwz r5, 0x8(r3)
/* 802B8858 002AE5D8  38 63 00 10 */	addi r3, r3, 0x10
/* 802B885C 002AE5DC  48 04 3E 51 */	bl fn_802FC6AC
/* 802B8860 002AE5E0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802B8864 002AE5E4  41 82 00 1C */	beq .L_802B8880
/* 802B8868 002AE5E8  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 802B886C 002AE5EC  7F E3 FB 78 */	mr r3, r31
/* 802B8870 002AE5F0  38 80 00 01 */	li r4, 0x1
/* 802B8874 002AE5F4  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B8878 002AE5F8  7D 89 03 A6 */	mtctr r12
/* 802B887C 002AE5FC  4E 80 04 21 */	bctrl
.L_802B8880:
/* 802B8880 002AE600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8884 002AE604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8888 002AE608  7C 08 03 A6 */	mtlr r0
/* 802B888C 002AE60C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8890 002AE610  4E 80 00 20 */	blr
.endfn fn_802B883C
