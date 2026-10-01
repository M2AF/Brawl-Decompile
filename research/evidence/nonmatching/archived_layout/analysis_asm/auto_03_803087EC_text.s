.include "macros.inc"
.file "auto_03_803087EC_text"

# 0x803087EC..0x8030880C | size: 0x20
.text
.balign 4

# .text:0x0 | 0x803087EC | size: 0xC
.fn fn_803087EC, global
/* 803087EC 002FE56C  88 0D CA E8 */	lbz r0, lbl_805A0F08@sda21(r0)
/* 803087F0 002FE570  54 03 C0 0E */	slwi r3, r0, 24
/* 803087F4 002FE574  4E 80 00 20 */	blr
.endfn fn_803087EC

# .text:0xC | 0x803087F8 | size: 0x14
.fn fn_803087F8, global
/* 803087F8 002FE578  3C 80 80 41 */	lis r4, lbl_80414270@ha
/* 803087FC 002FE57C  54 60 10 3A */	slwi r0, r3, 2
/* 80308800 002FE580  38 84 42 70 */	addi r4, r4, lbl_80414270@l
/* 80308804 002FE584  7C 64 00 2E */	lwzx r3, r4, r0
/* 80308808 002FE588  4E 80 00 20 */	blr
.endfn fn_803087F8
