.include "macros.inc"
.file "auto_fn_803FC704_text"

# 0x80009724..0x8000972C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009724 | size: 0x8
.obj "@etb_80009724", local
.hidden "@etb_80009724"
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
.endobj "@etb_80009724"

# 0x8000C7FC..0x8000C808 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C7FC | size: 0xC
.obj "@eti_8000C7FC", local
.hidden "@eti_8000C7FC"
	.4byte fn_803FC704
	.4byte 0x000000C4
	.4byte "@etb_80009724"
.endobj "@eti_8000C7FC"

# 0x803FC704..0x803FC7C8 | size: 0xC4
.text
.balign 4

# .text:0x0 | 0x803FC704 | size: 0xC4
.fn fn_803FC704, global
/* 803FC704 003F2484  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC708 003F2488  7C 08 02 A6 */	mflr r0
/* 803FC70C 003F248C  3C A0 80 40 */	lis r5, fn_803FA078@ha
/* 803FC710 003F2490  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC714 003F2494  38 00 00 00 */	li r0, 0x0
/* 803FC718 003F2498  38 A5 A0 78 */	addi r5, r5, fn_803FA078@l
/* 803FC71C 003F249C  38 C1 00 18 */	addi r6, r1, 0x18
/* 803FC720 003F24A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FC724 003F24A4  3F E0 80 00 */	lis r31, 0x8000
/* 803FC728 003F24A8  38 9F FF FF */	subi r4, r31, 0x1
/* 803FC72C 003F24AC  38 E1 00 08 */	addi r7, r1, 0x8
/* 803FC730 003F24B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 803FC734 003F24B4  39 01 00 0C */	addi r8, r1, 0xc
/* 803FC738 003F24B8  39 21 00 10 */	addi r9, r1, 0x10
/* 803FC73C 003F24BC  38 60 00 0A */	li r3, 0xa
/* 803FC740 003F24C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FC744 003F24C4  4B FF F5 39 */	bl fn_803FBC7C
/* 803FC748 003F24C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803FC74C 003F24CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FC750 003F24D0  40 82 00 30 */	bne .L_803FC780
/* 803FC754 003F24D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803FC758 003F24D8  2C 04 00 00 */	cmpwi r4, 0x0
/* 803FC75C 003F24DC  40 82 00 10 */	bne .L_803FC76C
/* 803FC760 003F24E0  38 1F FF FF */	subi r0, r31, 0x1
/* 803FC764 003F24E4  7C 03 00 40 */	cmplw r3, r0
/* 803FC768 003F24E8  41 81 00 18 */	bgt .L_803FC780
.L_803FC76C:
/* 803FC76C 003F24EC  2C 04 00 00 */	cmpwi r4, 0x0
/* 803FC770 003F24F0  41 82 00 38 */	beq .L_803FC7A8
/* 803FC774 003F24F4  3C 00 80 00 */	lis r0, 0x8000
/* 803FC778 003F24F8  7C 03 00 40 */	cmplw r3, r0
/* 803FC77C 003F24FC  40 81 00 2C */	ble .L_803FC7A8
.L_803FC780:
/* 803FC780 003F2500  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803FC784 003F2504  38 00 00 22 */	li r0, 0x22
/* 803FC788 003F2508  3C 60 80 00 */	lis r3, 0x8000
/* 803FC78C 003F250C  90 0D CE C0 */	stw r0, lbl_805A12E0@sda21(r0)
/* 803FC790 003F2510  7C 85 00 D0 */	neg r4, r5
/* 803FC794 003F2514  7C 84 2B 78 */	or r4, r4, r5
/* 803FC798 003F2518  38 03 FF FF */	subi r0, r3, 0x1
/* 803FC79C 003F251C  54 83 0F FE */	srwi r3, r4, 31
/* 803FC7A0 003F2520  7C 63 02 14 */	add r3, r3, r0
/* 803FC7A4 003F2524  48 00 00 10 */	b .L_803FC7B4
.L_803FC7A8:
/* 803FC7A8 003F2528  2C 04 00 00 */	cmpwi r4, 0x0
/* 803FC7AC 003F252C  41 82 00 08 */	beq .L_803FC7B4
/* 803FC7B0 003F2530  7C 63 00 D0 */	neg r3, r3
.L_803FC7B4:
/* 803FC7B4 003F2534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC7B8 003F2538  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FC7BC 003F253C  7C 08 03 A6 */	mtlr r0
/* 803FC7C0 003F2540  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC7C4 003F2544  4E 80 00 20 */	blr
.endfn fn_803FC704
