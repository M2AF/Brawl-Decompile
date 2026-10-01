.include "macros.inc"
.file "auto_fn_802D26CC_text"

# 0x800084B8..0x800084C0 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x800084B8 | size: 0x8
.obj "@etb_800084B8", local
.hidden "@etb_800084B8"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800084B8"

# 0x8000B284..0x8000B290 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B284 | size: 0xC
.obj "@eti_8000B284", local
.hidden "@eti_8000B284"
	.4byte fn_802D26CC
	.4byte 0x00000048
	.4byte "@etb_800084B8"
.endobj "@eti_8000B284"

# 0x802D26CC..0x802D2714 | size: 0x48
.text
.balign 4

# .text:0x0 | 0x802D26CC | size: 0x48
.fn fn_802D26CC, global
/* 802D26CC 002C844C  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D26D0 002C8450  7C 2C 0B 78 */	mr r12, r1
/* 802D26D4 002C8454  21 6B FF 80 */	subfic r11, r11, -0x80
/* 802D26D8 002C8458  7C 21 59 6E */	stwux r1, r1, r11
/* 802D26DC 002C845C  7C 08 02 A6 */	mflr r0
/* 802D26E0 002C8460  34 61 00 20 */	addic. r3, r1, 0x20
/* 802D26E4 002C8464  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D26E8 002C8468  38 00 00 00 */	li r0, 0x0
/* 802D26EC 002C846C  41 82 00 10 */	beq .L_802D26FC
/* 802D26F0 002C8470  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D26F4 002C8474  38 81 00 10 */	addi r4, r1, 0x10
/* 802D26F8 002C8478  48 00 00 A5 */	bl fn_802D279C
.L_802D26FC:
/* 802D26FC 002C847C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802D2700 002C8480  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D2704 002C8484  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D2708 002C8488  7C 08 03 A6 */	mtlr r0
/* 802D270C 002C848C  7D 41 53 78 */	mr r1, r10
/* 802D2710 002C8490  4E 80 00 20 */	blr
.endfn fn_802D26CC
