.include "macros.inc"
.file "auto_fn_8017053C_text"

# 0x8017053C..0x80170594 | size: 0x58
.text
.balign 4

# .text:0x0 | 0x8017053C | size: 0x58
.fn fn_8017053C, global
/* 8017053C 001662BC  3D 20 80 46 */	lis r9, lbl_80465418@ha
/* 80170540 001662C0  3D 00 80 46 */	lis r8, lbl_80465408@ha
/* 80170544 001662C4  3C E0 80 46 */	lis r7, lbl_80465438@ha
/* 80170548 001662C8  3C C0 80 46 */	lis r6, lbl_80465428@ha
/* 8017054C 001662CC  3C A0 80 46 */	lis r5, lbl_80465448@ha
/* 80170550 001662D0  3C 80 80 46 */	lis r4, lbl_80465458@ha
/* 80170554 001662D4  3C 60 80 46 */	lis r3, lbl_804653F8@ha
/* 80170558 001662D8  39 29 54 18 */	addi r9, r9, lbl_80465418@l
/* 8017055C 001662DC  39 08 54 08 */	addi r8, r8, lbl_80465408@l
/* 80170560 001662E0  38 E7 54 38 */	addi r7, r7, lbl_80465438@l
/* 80170564 001662E4  38 C6 54 28 */	addi r6, r6, lbl_80465428@l
/* 80170568 001662E8  38 A5 54 48 */	addi r5, r5, lbl_80465448@l
/* 8017056C 001662EC  38 84 54 58 */	addi r4, r4, lbl_80465458@l
/* 80170570 001662F0  38 63 53 F8 */	addi r3, r3, lbl_804653F8@l
/* 80170574 001662F4  91 2D C0 B0 */	stw r9, lbl_805A04D0@sda21(r0)
/* 80170578 001662F8  91 0D C0 B4 */	stw r8, lbl_805A04D4@sda21(r0)
/* 8017057C 001662FC  90 ED C0 B8 */	stw r7, lbl_805A04D8@sda21(r0)
/* 80170580 00166300  90 CD C0 BC */	stw r6, lbl_805A04DC@sda21(r0)
/* 80170584 00166304  90 AD C0 C0 */	stw r5, lbl_805A04E0@sda21(r0)
/* 80170588 00166308  90 8D C0 C4 */	stw r4, lbl_805A04E4@sda21(r0)
/* 8017058C 0016630C  90 6D C0 C8 */	stw r3, lbl_805A04E8@sda21(r0)
/* 80170590 00166310  4E 80 00 20 */	blr
.endfn fn_8017053C

# 0x804065A0..0x804065A4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8017053C
