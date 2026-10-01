.include "macros.inc"
.file "auto_fn_8015D8C4_text"

# 0x8015D8C4..0x8015D8DC | size: 0x18
.text
.balign 4

# .text:0x0 | 0x8015D8C4 | size: 0x18
.fn fn_8015D8C4, global
/* 8015D8C4 00153644  3C 80 80 4A */	lis r4, lbl_8049ED70@ha
/* 8015D8C8 00153648  38 00 00 00 */	li r0, 0x0
/* 8015D8CC 0015364C  38 64 ED 70 */	addi r3, r4, lbl_8049ED70@l
/* 8015D8D0 00153650  98 04 ED 70 */	stb r0, lbl_8049ED70@l(r4)
/* 8015D8D4 00153654  38 63 00 04 */	addi r3, r3, 0x4
/* 8015D8D8 00153658  48 08 12 A4 */	b fn_801DEB7C
.endfn fn_8015D8C4

# 0x8040658C..0x80406590 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8015D8C4
