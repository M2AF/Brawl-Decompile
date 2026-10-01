.include "macros.inc"
.file "auto_fn_802D0BE4_text"

# 0x80008400..0x80008408 | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80008400 | size: 0x8
.obj "@etb_80008400", local
.hidden "@etb_80008400"
/*
 * Flag values:
 * Has Elf Vector: Yes
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r29-r31
 */
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_80008400"

# 0x8000B170..0x8000B17C | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000B170 | size: 0xC
.obj "@eti_8000B170", local
.hidden "@eti_8000B170"
	.4byte fn_802D0BE4
	.4byte 0x0000012C
	.4byte "@etb_80008400"
.endobj "@eti_8000B170"

# 0x802D0BE4..0x802D0D10 | size: 0x12C
.text
.balign 4

# .text:0x0 | 0x802D0BE4 | size: 0x12C
.fn fn_802D0BE4, global
/* 802D0BE4 002C6964  54 2B 07 3E */	clrlwi r11, r1, 28
/* 802D0BE8 002C6968  7C 2C 0B 78 */	mr r12, r1
/* 802D0BEC 002C696C  21 6B FF D0 */	subfic r11, r11, -0x30
/* 802D0BF0 002C6970  7C 21 59 6E */	stwux r1, r1, r11
/* 802D0BF4 002C6974  7C 08 02 A6 */	mflr r0
/* 802D0BF8 002C6978  90 0C 00 04 */	stw r0, 0x4(r12)
/* 802D0BFC 002C697C  93 EC FF FC */	stw r31, -0x4(r12)
/* 802D0C00 002C6980  7C BF 2B 78 */	mr r31, r5
/* 802D0C04 002C6984  93 CC FF F8 */	stw r30, -0x8(r12)
/* 802D0C08 002C6988  7C 9E 23 78 */	mr r30, r4
/* 802D0C0C 002C698C  93 AC FF F4 */	stw r29, -0xc(r12)
/* 802D0C10 002C6990  7C 7D 1B 78 */	mr r29, r3
/* 802D0C14 002C6994  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D0C18 002C6998  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802D0C1C 002C699C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D0C20 002C69A0  7D 89 03 A6 */	mtctr r12
/* 802D0C24 002C69A4  4E 80 04 21 */	bctrl
/* 802D0C28 002C69A8  C0 FD 00 24 */	lfs f7, 0x24(r29)
/* 802D0C2C 002C69AC  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 802D0C30 002C69B0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 802D0C34 002C69B4  EC A7 00 B2 */	fmuls f5, f7, f2
/* 802D0C38 002C69B8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 802D0C3C 002C69BC  EC 67 00 72 */	fmuls f3, f7, f1
/* 802D0C40 002C69C0  C0 DD 00 20 */	lfs f6, 0x20(r29)
/* 802D0C44 002C69C4  EC 27 00 32 */	fmuls f1, f7, f0
/* 802D0C48 002C69C8  C0 9E 00 00 */	lfs f4, 0x0(r30)
/* 802D0C4C 002C69CC  C0 5E 00 04 */	lfs f2, 0x4(r30)
/* 802D0C50 002C69D0  EC A6 29 3A */	fmadds f5, f6, f4, f5
/* 802D0C54 002C69D4  C0 1E 00 08 */	lfs f0, 0x8(r30)
/* 802D0C58 002C69D8  EC 66 18 BA */	fmadds f3, f6, f2, f3
/* 802D0C5C 002C69DC  C0 FD 00 28 */	lfs f7, 0x28(r29)
/* 802D0C60 002C69E0  EC 26 08 3A */	fmadds f1, f6, f0, f1
/* 802D0C64 002C69E4  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 802D0C68 002C69E8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 802D0C6C 002C69EC  ED 67 29 3A */	fmadds f11, f7, f4, f5
/* 802D0C70 002C69F0  ED 47 18 BA */	fmadds f10, f7, f2, f3
/* 802D0C74 002C69F4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802D0C78 002C69F8  C1 02 AD 90 */	lfs f8, lbl_805A40B0@sda21(r0)
/* 802D0C7C 002C69FC  ED 27 08 3A */	fmadds f9, f7, f0, f1
/* 802D0C80 002C6A00  C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 802D0C84 002C6A04  C0 3F 00 04 */	lfs f1, 0x4(r31)
/* 802D0C88 002C6A08  EC E2 58 2A */	fadds f7, f2, f11
/* 802D0C8C 002C6A0C  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 802D0C90 002C6A10  EC C1 50 2A */	fadds f6, f1, f10
/* 802D0C94 002C6A14  EC A0 48 2A */	fadds f5, f0, f9
/* 802D0C98 002C6A18  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 802D0C9C 002C6A1C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 802D0CA0 002C6A20  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 802D0CA4 002C6A24  EC 84 40 2A */	fadds f4, f4, f8
/* 802D0CA8 002C6A28  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 802D0CAC 002C6A2C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802D0CB0 002C6A30  EC 63 58 2A */	fadds f3, f3, f11
/* 802D0CB4 002C6A34  EC 42 50 2A */	fadds f2, f2, f10
/* 802D0CB8 002C6A38  D0 FF 00 00 */	stfs f7, 0x0(r31)
/* 802D0CBC 002C6A3C  EC 21 48 2A */	fadds f1, f1, f9
/* 802D0CC0 002C6A40  EC 00 40 2A */	fadds f0, f0, f8
/* 802D0CC4 002C6A44  D0 DF 00 04 */	stfs f6, 0x4(r31)
/* 802D0CC8 002C6A48  D0 BF 00 08 */	stfs f5, 0x8(r31)
/* 802D0CCC 002C6A4C  D0 9F 00 0C */	stfs f4, 0xc(r31)
/* 802D0CD0 002C6A50  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 802D0CD4 002C6A54  D0 5F 00 14 */	stfs f2, 0x14(r31)
/* 802D0CD8 002C6A58  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802D0CDC 002C6A5C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 802D0CE0 002C6A60  D1 61 00 10 */	stfs f11, 0x10(r1)
/* 802D0CE4 002C6A64  D1 41 00 14 */	stfs f10, 0x14(r1)
/* 802D0CE8 002C6A68  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 802D0CEC 002C6A6C  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802D0CF0 002C6A70  81 41 00 00 */	lwz r10, 0x0(r1)
/* 802D0CF4 002C6A74  83 EA FF FC */	lwz r31, -0x4(r10)
/* 802D0CF8 002C6A78  83 CA FF F8 */	lwz r30, -0x8(r10)
/* 802D0CFC 002C6A7C  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 802D0D00 002C6A80  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 802D0D04 002C6A84  7C 08 03 A6 */	mtlr r0
/* 802D0D08 002C6A88  7D 41 53 78 */	mr r1, r10
/* 802D0D0C 002C6A8C  4E 80 00 20 */	blr
.endfn fn_802D0BE4
