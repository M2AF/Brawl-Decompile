.include "macros.inc"
.file "auto_fn_80287AD0_text"

# 0x80287AD0..0x80287B04 | size: 0x34
.text
.balign 4

# .text:0x0 | 0x80287AD0 | size: 0x34
.fn fn_80287AD0, global
/* 80287AD0 0027D850  3C 60 80 53 */	lis r3, lbl_80532540@ha
/* 80287AD4 0027D854  3C A0 80 53 */	lis r5, lbl_80532550@ha
/* 80287AD8 0027D858  38 83 25 40 */	addi r4, r3, lbl_80532540@l
/* 80287ADC 0027D85C  C0 63 25 40 */	lfs f3, lbl_80532540@l(r3)
/* 80287AE0 0027D860  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 80287AE4 0027D864  38 65 25 50 */	addi r3, r5, lbl_80532550@l
/* 80287AE8 0027D868  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 80287AEC 0027D86C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80287AF0 0027D870  D0 65 25 50 */	stfs f3, lbl_80532550@l(r5)
/* 80287AF4 0027D874  D0 43 00 04 */	stfs f2, 0x4(r3)
/* 80287AF8 0027D878  D0 23 00 08 */	stfs f1, 0x8(r3)
/* 80287AFC 0027D87C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80287B00 0027D880  4E 80 00 20 */	blr
.endfn fn_80287AD0

# 0x80406614..0x80406618 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80287AD0
