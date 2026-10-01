# codex-parallel: fresh candidate comparison at f60af98

Generated config SHA-256: `47755302c9726bf366c63393e14b4c8fc3249e4c8ce77a4c47a0e413654a279c`.

Stage envelopes include class-info registration. Homerun/ice/norfair ends are the first ground factory after registration; these remain provisional ownership envelopes. Counts are recovered analysis functions, not independent TUs.

| Candidate | Text bytes | Functions | Unnamed direct callees |
|---|---:|---:|---|
| st_tengan (0x6348..0x77b4) | 5228 | 37 | 5: fn_8018D6D8, fn_8018D8E0, fn_8018DAE8, fn_8018DCF0, fn_8018DEF8 |
| st_tbreak (0x70..0x1b64) | 6900 | 58 | 2: fn_27_279FA4, fn_27_279FC8 |
| st_ice (0x70..0x2ba4) | 11060 | 92 | 17: fn_27_10B224, fn_27_233C70, fn_62_10058, fn_62_2BA4, fn_62_2D40, fn_62_3148, fn_62_34A4, fn_62_84E0, fn_62_8CE4, fn_62_CDCC, fn_62_D308, fn_62_DB20, fn_62_F0B0, fn_8003DE70, fn_8005136C, fn_8009CEA8, fn_8016232C |
| st_norfair (0x70..0x2c40) | 11216 | 82 | 15: fn_27_1F299C, fn_27_2249E0, fn_27_2AA7AC, fn_54_2D08, fn_54_33C0, fn_54_376C, fn_54_B334, fn_54_C060, fn_54_C958, fn_54_CF40, fn_54_E57C, fn_54_EFD0, fn_8004E96C, fn_8009CEA8, fn_8009E090 |
| st_oldin (0x70..0x418c) | 16668 | 53 | 12: fn_27_1F290C, fn_27_263984, fn_27_279228, fn_27_279FA4, fn_27_279FC8, fn_8003E918, fn_8003F074, fn_8005E3C8, fn_8009ED40, fn_8009EE60, fn_8009EF8C, fn_8009F1FC |
| st_homerun (0x70..0x4360) | 17136 | 112 | 33: fn_27_226CFC, fn_27_233ACC, fn_27_238DD8, fn_27_239AF4, fn_27_239BDC, fn_27_239E58, fn_27_28DE90, fn_27_290060, fn_27_8CC2C, fn_80018610, fn_8003DE70, fn_800516F0, fn_8009D158, fn_800DCD84, fn_800DCD8C, fn_800DCD94, fn_800DCDB0, fn_800DCDD4, fn_800E14A4, fn_800E3684, fn_801622A0, fn_8016232C, fn_80162384, fn_801623F0, fn_804008E4, fn_88_44B0, fn_88_4DD0, fn_88_5568, fn_88_5E30, fn_88_651C, fn_88_6C44, fn_88_73B8, fn_88_7F48 |
| st_madein (0x70..0x6b24) | 27316 | 61 | 14: fn_27_10C18C, fn_27_10CFEC, fn_27_10D0B0, fn_27_239FEC, fn_27_279228, fn_27_279250, fn_27_2793BC, fn_27_2AA7AC, fn_8004E96C, fn_80077B98, fn_80077D54, fn_800790FC, fn_801AAFF0, fn_801AB014 |

Selected ONE TU: `st_tengan` ground tail, candidate #10 (5228 bytes /37 functions). It is smallest of this requested set. Its five unnamed imports are the indexed NW4R ResFile animation getters identified in CALLEE_NAMING.md; headers and target call signatures must be checked before naming/using. All stage bodies are larger; tbreak is next (6900 bytes), with two unnamed imports. The shared static-pair header move and st_heal probe are an explicitly required support change, not a second decompilation candidate. No stage-body boundary is asserted as final.


## Ownership refinement and actual selected TU

The provisional Tengan envelope contains four original class objects. The
base `grTengan` is the smallest clean boundary validated in this session:
628 text bytes /21 functions, no unnamed direct imports, 640 data bytes.
The smaller Bg envelope (560 bytes/3 functions) includes redundant stripped
RTTI metadata whose ownership is not yet clean, so it was not selected as
another task. Only the base TU is implemented on codex/next; the remaining
classes are still extracted. Base full-REL probe passes at 57504 bytes/SHA1
839c8054988ecf7f32862da78fc429daea8833b1. The former combined draft is private
failed evidence, not additional source-linked progress.
