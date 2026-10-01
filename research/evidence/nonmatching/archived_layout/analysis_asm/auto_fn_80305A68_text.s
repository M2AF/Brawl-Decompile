.include "macros.inc"
.file "auto_fn_80305A68_text"

# 0x80008814..0x8000881C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008814 | size: 0x8
.obj "@etb_80008814", local
.hidden "@etb_80008814"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 */
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80008814"

# 0x8000B758..0x8000B764 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B758 | size: 0xC
.obj "@eti_8000B758", local
.hidden "@eti_8000B758"
	.4byte fn_80305A68
	.4byte 0x0000006C
	.4byte "@etb_80008814"
.endobj "@eti_8000B758"

# 0x80305A68..0x80305AD4 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x80305A68 | size: 0x6C
.fn fn_80305A68, global
/* 80305A68 002FB7E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80305A6C 002FB7EC  C0 42 B2 A4 */	lfs f2, lbl_805A45C4@sda21(r0)
/* 80305A70 002FB7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305A74 002FB7F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80305A78 002FB7F8  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 80305A7C 002FB7FC  7C C0 00 26 */	mfcr r6
/* 80305A80 002FB800  C0 03 00 08 */	lfs f0, 0x8(r3)
/* 80305A84 002FB804  54 C6 0F FE */	srwi r6, r6, 31
/* 80305A88 002FB808  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80305A8C 002FB80C  7C 00 00 26 */	mfcr r0
/* 80305A90 002FB810  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 80305A94 002FB814  54 05 17 BC */	rlwinm r5, r0, 2, 30, 30
/* 80305A98 002FB818  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80305A9C 002FB81C  7C 00 00 26 */	mfcr r0
/* 80305AA0 002FB820  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 80305AA4 002FB824  54 04 27 38 */	rlwinm r4, r0, 4, 28, 28
/* 80305AA8 002FB828  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80305AAC 002FB82C  7C 60 00 26 */	mfcr r3
/* 80305AB0 002FB830  80 01 00 08 */	lwz r0, 0x8(r1)
/* 80305AB4 002FB834  54 63 1F 7A */	rlwinm r3, r3, 3, 29, 29
/* 80305AB8 002FB838  7C 84 1B 78 */	or r4, r4, r3
/* 80305ABC 002FB83C  54 03 27 38 */	rlwinm r3, r0, 4, 28, 28
/* 80305AC0 002FB840  7C A0 23 78 */	or r0, r5, r4
/* 80305AC4 002FB844  7C C0 03 78 */	or r0, r6, r0
/* 80305AC8 002FB848  50 03 26 34 */	rlwimi r3, r0, 4, 24, 26
/* 80305ACC 002FB84C  38 21 00 10 */	addi r1, r1, 0x10
/* 80305AD0 002FB850  4E 80 00 20 */	blr
.endfn fn_80305A68
