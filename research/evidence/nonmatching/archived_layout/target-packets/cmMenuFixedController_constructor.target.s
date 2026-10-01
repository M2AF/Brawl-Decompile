# Local RSBE01_01 target; community semantic name is provisional.
# research\analysis\asm\auto_03_800A624C_text.s
.fn fn_800A68C0, global
/* 800A68C0 0009C640  88 03 00 08 */	lbz r0, 0x8(r3)
/* 800A68C4 0009C644  3C 80 80 45 */	lis r4, lbl_80454ED8@ha
/* 800A68C8 0009C648  C0 02 8D 30 */	lfs f0, lbl_805A2050@sda21(r0)
/* 800A68CC 0009C64C  38 84 4E D8 */	addi r4, r4, lbl_80454ED8@l
/* 800A68D0 0009C650  C0 42 8D 28 */	lfs f2, lbl_805A2048@sda21(r0)
/* 800A68D4 0009C654  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 800A68D8 0009C658  C0 22 8D 2C */	lfs f1, lbl_805A204C@sda21(r0)
/* 800A68DC 0009C65C  38 A0 00 00 */	li r5, 0x0
/* 800A68E0 0009C660  90 A3 00 00 */	stw r5, 0x0(r3)
/* 800A68E4 0009C664  90 83 00 04 */	stw r4, 0x4(r3)
/* 800A68E8 0009C668  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 800A68EC 0009C66C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 800A68F0 0009C670  98 03 00 08 */	stb r0, 0x8(r3)
/* 800A68F4 0009C674  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800A68F8 0009C678  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800A68FC 0009C67C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800A6900 0009C680  4E 80 00 20 */	blr
.endfn fn_800A68C0
