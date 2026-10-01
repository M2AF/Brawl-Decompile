.include "macros.inc"
.file "auto_fn_80038790_text"

# 0x80038790..0x800387AC | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x80038790 | size: 0x1C
.fn fn_80038790, global
/* 80038790 0002E510  80 0D BC 80 */	lwz r0, lbl_805A00A0@sda21(r0)
/* 80038794 0002E514  38 80 00 00 */	li r4, 0x0
/* 80038798 0002E518  38 6D BC 80 */	li r3, lbl_805A00A0@sda21
/* 8003879C 0002E51C  54 00 04 0E */	rlwinm r0, r0, 0, 16, 7
/* 800387A0 0002E520  90 83 00 04 */	stw r4, 0x4(r3)
/* 800387A4 0002E524  90 0D BC 80 */	stw r0, lbl_805A00A0@sda21(r0)
/* 800387A8 0002E528  4E 80 00 20 */	blr
.endfn fn_80038790

# 0x80406508..0x8040650C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_80038790
