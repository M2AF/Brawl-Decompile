.include "macros.inc"
.file "auto_fn_802BD804_text"

# 0x80007A5C..0x80007A80 | size: 0x24
.section extab, "a"
.balign 4

# extab:0x0 | 0x80007A5C | size: 0x24
.obj "@etb_80007A5C", local
.hidden "@etb_80007A5C"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r28-r31
 * 
 * PC actions:
 * PC=000000A4, Action: 000010
 * 
 * Exception actions:
 * 000010:
 * Type: DESTROYBASE
 * Member: 0x0(r30)
 * Dtor: "dtor_802A0E20"
 * 00001C:
 * Type: DELETEPOINTER
 * Pointer: r31)
 * Dtor: "dtor_802A0DA4"
 * Has end bit
 */
	.4byte 0x20080000
	.4byte 0x000000A4
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000000
	.4byte dtor_802A0E20
	.4byte 0x8A80001F
	.4byte dtor_802A0DA4
.endobj "@etb_80007A5C"

# 0x8000A84C..0x8000A858 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000A84C | size: 0xC
.obj "@eti_8000A84C", local
.hidden "@eti_8000A84C"
	.4byte fn_802BD804
	.4byte 0x000000D4
	.4byte "@etb_80007A5C"
.endobj "@eti_8000A84C"

# 0x802BD804..0x802BD8D8 | size: 0xD4
.text
.balign 4

# .text:0x0 | 0x802BD804 | size: 0xD4
.fn fn_802BD804, global
/* 802BD804 002B3584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD808 002B3588  7C 08 02 A6 */	mflr r0
/* 802BD80C 002B358C  38 80 00 2C */	li r4, 0x2c
/* 802BD810 002B3590  38 A0 00 1D */	li r5, 0x1d
/* 802BD814 002B3594  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD818 002B3598  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD81C 002B359C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD820 002B35A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD824 002B35A4  7C DD 33 78 */	mr r29, r6
/* 802BD828 002B35A8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BD82C 002B35AC  7C 7C 1B 78 */	mr r28, r3
/* 802BD830 002B35B0  80 6D CA 98 */	lwz r3, lbl_805A0EB8@sda21(r0)
/* 802BD834 002B35B4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802BD838 002B35B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802BD83C 002B35BC  7D 89 03 A6 */	mtctr r12
/* 802BD840 002B35C0  4E 80 04 21 */	bctrl
/* 802BD844 002B35C4  7C 7E 1B 79 */	mr. r30, r3
/* 802BD848 002B35C8  38 00 00 2C */	li r0, 0x2c
/* 802BD84C 002B35CC  B0 03 00 04 */	sth r0, 0x4(r3)
/* 802BD850 002B35D0  7F DF F3 78 */	mr r31, r30
/* 802BD854 002B35D4  41 82 00 60 */	beq .L_802BD8B4
/* 802BD858 002B35D8  38 00 00 01 */	li r0, 0x1
/* 802BD85C 002B35DC  3C C0 80 48 */	lis r6, lbl_80486E64@ha
/* 802BD860 002B35E0  B0 03 00 06 */	sth r0, 0x6(r3)
/* 802BD864 002B35E4  3C 80 00 01 */	lis r4, 0x1
/* 802BD868 002B35E8  38 04 FF FF */	subi r0, r4, 0x1
/* 802BD86C 002B35EC  38 C6 6E 64 */	addi r6, r6, lbl_80486E64@l
/* 802BD870 002B35F0  93 A3 00 08 */	stw r29, 0x8(r3)
/* 802BD874 002B35F4  38 9E 00 0C */	addi r4, r30, 0xc
/* 802BD878 002B35F8  80 BC 00 00 */	lwz r5, 0x0(r28)
/* 802BD87C 002B35FC  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802BD880 002B3600  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 802BD884 002B3604  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 802BD888 002B3608  B0 03 00 20 */	sth r0, 0x20(r3)
/* 802BD88C 002B360C  B0 03 00 22 */	sth r0, 0x22(r3)
/* 802BD890 002B3610  B0 03 00 24 */	sth r0, 0x24(r3)
/* 802BD894 002B3614  B0 03 00 26 */	sth r0, 0x26(r3)
/* 802BD898 002B3618  B0 03 00 28 */	sth r0, 0x28(r3)
/* 802BD89C 002B361C  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 802BD8A0 002B3620  38 65 00 10 */	addi r3, r5, 0x10
/* 802BD8A4 002B3624  48 06 78 E1 */	bl fn_80325184
/* 802BD8A8 002B3628  3C 60 80 48 */	lis r3, lbl_80486E28@ha
/* 802BD8AC 002B362C  38 63 6E 28 */	addi r3, r3, lbl_80486E28@l
/* 802BD8B0 002B3630  90 7E 00 00 */	stw r3, 0x0(r30)
.L_802BD8B4:
/* 802BD8B4 002B3634  7F E3 FB 78 */	mr r3, r31
/* 802BD8B8 002B3638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD8BC 002B363C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD8C0 002B3640  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD8C4 002B3644  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BD8C8 002B3648  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD8CC 002B364C  7C 08 03 A6 */	mtlr r0
/* 802BD8D0 002B3650  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD8D4 002B3654  4E 80 00 20 */	blr
.endfn fn_802BD804
