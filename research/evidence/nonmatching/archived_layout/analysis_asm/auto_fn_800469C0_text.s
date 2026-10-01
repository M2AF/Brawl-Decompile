.include "macros.inc"
.file "auto_fn_800469C0_text"

# 0x800469C0..0x800469E4 | size: 0x24
.text
.balign 4

# .text:0x0 | 0x800469C0 | size: 0x24
.fn fn_800469C0, global
/* 800469C0 0003C740  3C 60 80 43 */	lis r3, lbl_8042B680@ha
/* 800469C4 0003C744  3C 80 80 04 */	lis r4, fn_800469E4@ha
/* 800469C8 0003C748  38 63 B6 80 */	addi r3, r3, lbl_8042B680@l
/* 800469CC 0003C74C  3C A0 80 49 */	lis r5, lbl_804977C0@ha
/* 800469D0 0003C750  90 6D BC A0 */	stw r3, lbl_805A00C0@sda21(r0)
/* 800469D4 0003C754  38 84 69 E4 */	addi r4, r4, fn_800469E4@l
/* 800469D8 0003C758  38 A5 77 C0 */	addi r5, r5, lbl_804977C0@l
/* 800469DC 0003C75C  38 6D BC A0 */	li r3, lbl_805A00C0@sda21
/* 800469E0 0003C760  48 3A 9D 44 */	b __register_global_object
.endfn fn_800469C0

# 0x80406518..0x8040651C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_800469C0
