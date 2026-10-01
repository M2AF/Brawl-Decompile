.include "macros.inc"
.file "auto_fn_802B3700_text"

# 0x8000744C..0x80007474 | size: 0x28
.section extab, "a"
.balign 4

# extab:0x0 | 0x8000744C | size: 0x28
.obj "@etb_8000744C", local
.hidden "@etb_8000744C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=0000006C, Action: 000018
 * PC=000000C0, Action: 000020
 * 
 * Exception actions:
 * 000018:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 * 000020:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x0000006C
	.4byte 0x00000018
	.4byte 0x000000C0
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_8000744C"

# 0x8000A48C..0x8000A498 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A48C | size: 0xC
.obj "@eti_8000A48C", local
.hidden "@eti_8000A48C"
	.4byte fn_802B3700
	.4byte 0x000000E4
	.4byte "@etb_8000744C"
.endobj "@eti_8000A48C"

# 0x802B3700..0x802B37E4 | size: 0xE4
.text
.balign 4

# .text:0x0 | 0x802B3700 | size: 0xE4
.fn fn_802B3700, global
/* 802B3700 002A9480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B3704 002A9484  7C 08 02 A6 */	mflr r0
/* 802B3708 002A9488  2C 06 00 00 */	cmpwi r6, 0x0
/* 802B370C 002A948C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B3710 002A9490  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B3714 002A9494  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B3718 002A9498  7C DE 33 78 */	mr r30, r6
/* 802B371C 002A949C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B3720 002A94A0  7C 9D 23 78 */	mr r29, r4
/* 802B3724 002A94A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B3728 002A94A8  7C 7C 1B 78 */	mr r28, r3
/* 802B372C 002A94AC  41 82 00 54 */	beq .L_802B3780
/* 802B3730 002A94B0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B3734 002A94B4  38 80 00 80 */	li r4, 0x80
/* 802B3738 002A94B8  38 A0 00 1D */	li r5, 0x1d
/* 802B373C 002A94BC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B3740 002A94C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B3744 002A94C4  7D 89 03 A6 */	mtctr r12
/* 802B3748 002A94C8  4E 80 04 21 */	bctrl
/* 802B374C 002A94CC  38 00 00 80 */	li r0, 0x80
/* 802B3750 002A94D0  7C 7F 1B 79 */	mr. r31, r3
/* 802B3754 002A94D4  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B3758 002A94D8  41 82 00 20 */	beq .L_802B3778
/* 802B375C 002A94DC  7F 84 E3 78 */	mr r4, r28
/* 802B3760 002A94E0  7F A5 EB 78 */	mr r5, r29
/* 802B3764 002A94E4  7F C6 F3 78 */	mr r6, r30
/* 802B3768 002A94E8  4B FF F1 09 */	bl fn_802B2870
/* 802B376C 002A94EC  3C 60 80 48 */	lis r3, lbl_80486BA8@ha
/* 802B3770 002A94F0  38 63 6B A8 */	addi r3, r3, lbl_80486BA8@l
/* 802B3774 002A94F4  90 7F 00 00 */	stw r3, 0x0(r31)
.L_802B3778:
/* 802B3778 002A94F8  7F E3 FB 78 */	mr r3, r31
/* 802B377C 002A94FC  48 00 00 48 */	b .L_802B37C4
.L_802B3780:
/* 802B3780 002A9500  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802B3784 002A9504  38 80 00 30 */	li r4, 0x30
/* 802B3788 002A9508  38 A0 00 1D */	li r5, 0x1d
/* 802B378C 002A950C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802B3790 002A9510  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B3794 002A9514  7D 89 03 A6 */	mtctr r12
/* 802B3798 002A9518  4E 80 04 21 */	bctrl
/* 802B379C 002A951C  38 00 00 30 */	li r0, 0x30
/* 802B37A0 002A9520  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B37A4 002A9524  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802B37A8 002A9528  7C 7F 1B 78 */	mr r31, r3
/* 802B37AC 002A952C  41 82 00 14 */	beq .L_802B37C0
/* 802B37B0 002A9530  7F 84 E3 78 */	mr r4, r28
/* 802B37B4 002A9534  7F A5 EB 78 */	mr r5, r29
/* 802B37B8 002A9538  7F C6 F3 78 */	mr r6, r30
/* 802B37BC 002A953C  4B FF E1 81 */	bl fn_802B193C
.L_802B37C0:
/* 802B37C0 002A9540  7F E3 FB 78 */	mr r3, r31
.L_802B37C4:
/* 802B37C4 002A9544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B37C8 002A9548  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B37CC 002A954C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B37D0 002A9550  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B37D4 002A9554  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B37D8 002A9558  7C 08 03 A6 */	mtlr r0
/* 802B37DC 002A955C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B37E0 002A9560  4E 80 00 20 */	blr
.endfn fn_802B3700
