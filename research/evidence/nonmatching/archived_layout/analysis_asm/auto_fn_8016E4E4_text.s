.include "macros.inc"
.file "auto_fn_8016E4E4_text"

# 0x8016E4E4..0x8016E4E8 | size: 0x4
.text
.balign 4

# .text:0x0 | 0x8016E4E4 | size: 0x4
.fn fn_8016E4E4, global
/* 8016E4E4 00164264  4E 80 00 20 */	blr
.endfn fn_8016E4E4

# 0x80406598..0x8040659C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte fn_8016E4E4
