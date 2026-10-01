.include "macros.inc"
.file "auto_fn_803FC570_text"

# 0x80009714..0x8000971C | size: 0x8
.section extab, "a"
.balign 4

# extab:0x0 | 0x80009714 | size: 0x8
.obj "@etb_80009714", local
.hidden "@etb_80009714"
/*
 * Flag values:
 * Has Elf Vector: No
 * Large Frame: Yes
 * Has Frame Pointer: No
 * Saved CR: No
 * Saved GPR range: r30-r31
 */
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80009714"

# 0x8000C7E4..0x8000C7F0 | size: 0xC
.section extabindex, "a"
.balign 4

# extabindex:0x0 | 0x8000C7E4 | size: 0xC
.obj "@eti_8000C7E4", local
.hidden "@eti_8000C7E4"
	.4byte fn_803FC570
	.4byte 0x000000A8
	.4byte "@etb_80009714"
.endobj "@eti_8000C7E4"

# 0x803FC570..0x803FC618 | size: 0xA8
.text
.balign 4

# .text:0x0 | 0x803FC570 | size: 0xA8
.fn fn_803FC570, global
/* 803FC570 003F22F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FC574 003F22F4  7C 08 02 A6 */	mflr r0
/* 803FC578 003F22F8  3C E0 80 00 */	lis r7, 0x8000
/* 803FC57C 003F22FC  3C C0 80 40 */	lis r6, fn_803FA078@ha
/* 803FC580 003F2300  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FC584 003F2304  38 00 00 00 */	li r0, 0x0
/* 803FC588 003F2308  39 01 00 0C */	addi r8, r1, 0xc
/* 803FC58C 003F230C  39 21 00 08 */	addi r9, r1, 0x8
/* 803FC590 003F2310  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FC594 003F2314  7C 9F 23 78 */	mr r31, r4
/* 803FC598 003F2318  38 87 FF FF */	subi r4, r7, 0x1
/* 803FC59C 003F231C  38 E1 00 10 */	addi r7, r1, 0x10
/* 803FC5A0 003F2320  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803FC5A4 003F2324  7C 7E 1B 78 */	mr r30, r3
/* 803FC5A8 003F2328  7C A3 2B 78 */	mr r3, r5
/* 803FC5AC 003F232C  38 A6 A0 78 */	addi r5, r6, fn_803FA078@l
/* 803FC5B0 003F2330  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803FC5B4 003F2334  38 C1 00 18 */	addi r6, r1, 0x18
/* 803FC5B8 003F2338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803FC5BC 003F233C  4B FF F6 C1 */	bl fn_803FBC7C
/* 803FC5C0 003F2340  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803FC5C4 003F2344  41 82 00 10 */	beq .L_803FC5D4
/* 803FC5C8 003F2348  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803FC5CC 003F234C  7C 1E 02 14 */	add r0, r30, r0
/* 803FC5D0 003F2350  90 1F 00 00 */	stw r0, 0x0(r31)
.L_803FC5D4:
/* 803FC5D4 003F2354  80 01 00 08 */	lwz r0, 0x8(r1)
/* 803FC5D8 003F2358  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FC5DC 003F235C  41 82 00 14 */	beq .L_803FC5F0
/* 803FC5E0 003F2360  38 00 00 22 */	li r0, 0x22
/* 803FC5E4 003F2364  38 60 FF FF */	li r3, -0x1
/* 803FC5E8 003F2368  90 0D CE C0 */	stw r0, lbl_805A12E0@sda21(r0)
/* 803FC5EC 003F236C  48 00 00 14 */	b .L_803FC600
.L_803FC5F0:
/* 803FC5F0 003F2370  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FC5F4 003F2374  2C 00 00 00 */	cmpwi r0, 0x0
/* 803FC5F8 003F2378  41 82 00 08 */	beq .L_803FC600
/* 803FC5FC 003F237C  7C 63 00 D0 */	neg r3, r3
.L_803FC600:
/* 803FC600 003F2380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FC604 003F2384  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FC608 003F2388  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803FC60C 003F238C  7C 08 03 A6 */	mtlr r0
/* 803FC610 003F2390  38 21 00 30 */	addi r1, r1, 0x30
/* 803FC614 003F2394  4E 80 00 20 */	blr
.endfn fn_803FC570
