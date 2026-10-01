.include "macros.inc"
.file "auto_03_80297A94_text"

# 0x80297A94..0x80297B4C | size: 0xB8
.text
.balign 4

# .text:0x0 | 0x80297A94 | size: 0x8
.fn fn_80297A94, global
/* 80297A94 0028D814  38 63 00 10 */	addi r3, r3, 0x10
/* 80297A98 0028D818  4E 80 00 20 */	blr
.endfn fn_80297A94

# .text:0x8 | 0x80297A9C | size: 0x18
.fn fn_80297A9C, global
/* 80297A9C 0028D81C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 80297AA0 0028D820  54 60 10 3A */	slwi r0, r3, 2
/* 80297AA4 0028D824  7C 03 00 50 */	subf r0, r3, r0
/* 80297AA8 0028D828  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80297AAC 0028D82C  7C 64 02 14 */	add r3, r4, r0
/* 80297AB0 0028D830  4E 80 00 20 */	blr
.endfn fn_80297A9C

# .text:0x20 | 0x80297AB4 | size: 0x20
.fn fn_80297AB4, global
/* 80297AB4 0028D834  80 63 00 04 */	lwz r3, 0x4(r3)
/* 80297AB8 0028D838  54 60 10 3A */	slwi r0, r3, 2
/* 80297ABC 0028D83C  7C 03 00 50 */	subf r0, r3, r0
/* 80297AC0 0028D840  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80297AC4 0028D844  1C 63 00 90 */	mulli r3, r3, 0x90
/* 80297AC8 0028D848  7C 04 02 14 */	add r0, r4, r0
/* 80297ACC 0028D84C  7C 63 02 14 */	add r3, r3, r0
/* 80297AD0 0028D850  4E 80 00 20 */	blr
.endfn fn_80297AB4

# .text:0x40 | 0x80297AD4 | size: 0x6C
.fn fn_80297AD4, global
/* 80297AD4 0028D854  C0 C5 00 04 */	lfs f6, 0x4(r5)
/* 80297AD8 0028D858  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80297ADC 0028D85C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80297AE0 0028D860  EC A6 00 B2 */	fmuls f5, f6, f2
/* 80297AE4 0028D864  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80297AE8 0028D868  EC 66 00 72 */	fmuls f3, f6, f1
/* 80297AEC 0028D86C  C0 E5 00 00 */	lfs f7, 0x0(r5)
/* 80297AF0 0028D870  EC 26 00 32 */	fmuls f1, f6, f0
/* 80297AF4 0028D874  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 80297AF8 0028D878  EC C7 29 3A */	fmadds f6, f7, f4, f5
/* 80297AFC 0028D87C  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 80297B00 0028D880  C0 04 00 08 */	lfs f0, 0x8(r4)
/* 80297B04 0028D884  EC 87 18 BA */	fmadds f4, f7, f2, f3
/* 80297B08 0028D888  C1 05 00 08 */	lfs f8, 0x8(r5)
/* 80297B0C 0028D88C  EC 47 08 3A */	fmadds f2, f7, f0, f1
/* 80297B10 0028D890  C0 A4 00 20 */	lfs f5, 0x20(r4)
/* 80297B14 0028D894  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 80297B18 0028D898  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80297B1C 0028D89C  EC A8 31 7A */	fmadds f5, f8, f5, f6
/* 80297B20 0028D8A0  EC 68 20 FA */	fmadds f3, f8, f3, f4
/* 80297B24 0028D8A4  C0 02 AB 50 */	lfs f0, lbl_805A3E70@sda21(r0)
/* 80297B28 0028D8A8  EC 28 10 7A */	fmadds f1, f8, f1, f2
/* 80297B2C 0028D8AC  D0 A3 00 00 */	stfs f5, 0x0(r3)
/* 80297B30 0028D8B0  D0 63 00 04 */	stfs f3, 0x4(r3)
/* 80297B34 0028D8B4  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80297B38 0028D8B8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80297B3C 0028D8BC  4E 80 00 20 */	blr
.endfn fn_80297AD4

# .text:0xAC | 0x80297B40 | size: 0xC
.fn fn_80297B40, global
/* 80297B40 0028D8C0  54 80 10 3A */	slwi r0, r4, 2
/* 80297B44 0028D8C4  7C 23 04 2E */	lfsx f1, r3, r0
/* 80297B48 0028D8C8  4E 80 00 20 */	blr
.endfn fn_80297B40
