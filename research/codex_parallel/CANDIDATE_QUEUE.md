# Next 10 small unsourced stage TU candidates

Historical research snapshot: 2026-10-01T02:26:57.071004+00:00. Battlefield excluded entirely because Claude owns it. No checkout/configuration edits or build were performed.

## Historical refresh — 2026-10-01, after New Pork

At `b284006`, #1 oldin, #2 tbreak, #3 Corneria and #4 New Pork are fully source-linked. Remaining original provisional groups rank #5 dxyorster (2,340 / 50), #6 dxgarden (3,148 / 50), #7 heal (3,508 / 37), #8 greenhill (4,008 / 53), #9 kart (4,432 / 59), #10 tengan (5,228 / 37). Their text counts were refreshed from current symbol tables and generated unit boundaries. No global smallest-TU claim is made. Next is #5 st_dxyorster stage body; identify its owned data before splitting.

Fresh generated config SHA-256: `37874e33b89dfcacd586e9f7cf33f65d475110ca93232454465a4facbe730cb9`.

## Historical refresh — 2026-10-01, after dxyorster

At `5d2d07c`, candidates #1–#5 are complete. Dxyorster's recovered ownership adds four registration functions to the initial 50-function group: 54 functions / 2,704 text bytes. Full source REL and 127/127 verified. Remaining provisional queue begins #6 dxgarden (3,148 / 50), #7 heal (3,508 / 37), #8 greenhill (4,008 / 53), #9 kart (4,432 / 59), #10 tengan (5,228 / 37). Refresh ranking before implementation; #6 has no code started. This is not a global smallest-TU claim.

## Current refresh — 2026-10-01, after dxgarden

At `eeca868`, #1–#6 are fully source-linked. Dxgarden has 53 actual functions / 3,488 text bytes after including registration and correcting a phantom function at its water-update epilogue. Full source REL and normal/independent 127/127 checks pass. Remaining provisional queue: #7 heal (3,508 / 37), #8 greenhill (4,008 / 53), #9 kart (4,432 / 59), #10 tengan (5,228 / 37). Refresh ranking and ownership before #7; no code started. These are provisional groups, not a global smallest-TU claim.

## Ranking definition and limits

Existing splits do not establish every original source-file boundary. This is a ranked **provisional TU queue**, not an assertion of recovered original TUs. Candidates are the first unsourced stage-body text chunk, or a ground-class tail following three identifiable stClassInfo implementation methods. Rank is ascending summed function bytes within these groups. Pure registration/constructor helpers are not counted as independent source files. Other unsplit ground code may contain additional small TUs; their boundaries require recovery before a global smallest-TU claim is possible.

Text sizes/counts are exact for the listed function groups in this generated snapshot. Data ownership is unresolved: module data below is an envelope for all unsourced units, not data attributable to the candidate. Source promotion must include identified data/vtables/RTTI/constants and any out-of-line helpers. Runtime assets are not included.

| Rank | REL / candidate | Text bytes | Functions | First-last symbol | Unsourced module data envelope | Task 1 direct callees |
|---|---|---:|---:|---|---:|---|
| 1 (DONE) | `st_oldin` / ground tail (source-linked) | 432 | 17 | `fn_53_418C`-`fn_53_4334` | 2,756 | None |
| 2 (DONE) | `st_tbreak` / ground tail (source-linked) | 540 | 6 | `fn_89_1B64`-`fn_89_1D7C` | 4,172 | None |
| 3 (DONE) | `st_dxcorneria` / ground tail (source-linked) | 1,044 | 21 | `fn_82_4044`-`fn_82_4450` | 3,364 | None |
| 4 (DONE) | `st_newpork` / ground tail (source-linked) | 2,108 | 29 | `fn_69_2724`-`fn_69_2F58` | 3,784 | None |
| 5 (DONE) | `st_dxyorster` / stage body + registration (source-linked) | 2,704 | 54 | `.text 0x70..0xB00` | 1,100 owned bytes incl. bss/ctors | None |
| 6 (DONE) | `st_dxgarden` / stage body + registration (source-linked) | 3,488 | 53 | `.text 0x70..0xE10` | 1,380 owned bytes incl. padding/bss/ctors | None |
| 7 (DONE) | `st_heal` / stage body + registration (source-linked, 6cb6eb8) | 3,884 | 41 | `.text 0x70..0xF9C` | rodata 0x14, data 0x450, bss 0x20, ctors 4 | 6 extern C (sora_melee x5, qsort) |
| 8 (DONE) | `st_greenhill` / stage body + registration (source-linked, Codex, f60af98) | 4,280 | 57 | `.text 0x70..0x1128` | see docs | None |
| 9 (IN PROGRESS) | `st_kart` / stage body (split, NonMatching, c472821; 61/63 functions) | 4,704 | 63 | `.text 0x70..0x12D0` | see kart/NOTES.md | CosFIdx named |
| 10 (MOSTLY DONE) | `st_tengan` ground tail: base (0ee87a1), Bg (a29d1b2), Ashiba (625b4c8) source-linked; Floor NonMatching draft (6bf569c) | 5,228 | 37 | `fn_60_6348`-`fn_60_770C` | see TENGAN_STATUS.md | Floor near-misses |

### 1. st_oldin - ground tail (provisional TU)

Generated unit: `auto_00_000040E0_text`. 17 functions, 432 text bytes. Proposed source basename: `gr_oldin.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__8grMadeinFPCc`, `__dl__FPv`, `__dt__8grMadeinFv`, `__nw__FUlQ25Heaps8HeapType`, `makeCalcuCallback__9grGimmickFUlQ25Heaps8HeapType`, `setCalcuCallbackRoot__9grGimmickFUl`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 2. st_tbreak - ground tail (provisional TU)

Generated unit: `auto_00_00001AB8_text`. 6 functions, 540 text bytes. Proposed source basename: `gr_tbreak.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__8grMadeinFPCc`, `__dl__FPv`, `__dt__8grMadeinFv`, `__nw__FUlQ25Heaps8HeapType`, `createSoundWork__9grGimmickFUlUl`, `makeCalcuCallback__9grGimmickFUlQ25Heaps8HeapType`, `setCalcuCallbackRoot__9grGimmickFUl`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 3. st_dxcorneria - ground tail (provisional TU)

Generated unit: `auto_00_00003F24_text`. 21 functions, 1,044 text bytes. Proposed source basename: `gr_dxcorneria.cpp`; basename/class boundary is provisional.

Direct dependencies: `OSReport`, `__ct__8grMadeinFPCc`, `__dl__FPv`, `__dt__8grMadeinFv`, `__nw__FUlQ25Heaps8HeapType`, `getTeam__8YakumonoFv`, `makeCalcuCallback__9grGimmickFUlQ25Heaps8HeapType`, `setCalcuCallbackRoot__9grGimmickFUl`, `setTeam__8YakumonoFi`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 4. st_newpork - ground tail (provisional TU)

Generated unit: `auto_00_00002678_text`. 29 functions, 2,108 text bytes. Proposed source basename: `gr_newpork.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__8grMadeinFPCc`, `__dl__FPv`, `__dt__8grMadeinFv`, `__nw__FUlQ25Heaps8HeapType`, `_restgpr_26`, `_savegpr_26`, `createAttackPointNormal__8grMadeinFP21soCollisionAttackData`, `createSoundWork__9grGimmickFUlUl`, `fn_27_27C150`, `fn_27_27C1E8`, `getOverwriteAttackData__8grMadeinFv`, `makeCalcuCallback__9grGimmickFUlQ25Heaps8HeapType`, `randi__Fl`, `setAttack__8grMadeinFfP5Vec3f`, `setCalcuCallbackRoot__9grGimmickFUl`, `setSleepAttack__10grYakumonoFb`, `startGimmickSE__9grGimmickFUl`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 5. st_dxyorster - stage body (provisional TU)

Generated unit: `auto_00_00000070_text`. 50 functions, 2,340 text bytes. Proposed source basename: `st_dxyorster.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__7stMeleeFPCcQ26Stages11srStageKind`, `__dl__FPv`, `__dt__7stMeleeFv`, `__nw__FUlQ25Heaps8HeapType`, `addGround__5StageFP6Ground`, `createCollision__5StageFP9gfArchiveiP6Ground`, `createStagePositions__5StageFPQ34nw4r3g3d7ResFile`, `createStagePositions__5StageFv`, `fn_76_1140`, `fn_76_19F8`, `fn_76_B00`, `fn_76_C9C`, `getData__9gfArchiveF11ARCNodeTypeiUs`, `initPosPokeTrainer__5StageFii`, `loadStageAttrParam__5StageFP9gfArchivei`, `memset`, `registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl`, `releaseArchive__15stCommonGimmickFv`, `testStageParamInit__5StageFP9gfArchivei`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 6. st_dxgarden - stage body (provisional TU)

Generated unit: `auto_00_00000070_text`. 50 functions, 3,148 text bytes. Proposed source basename: `st_dxgarden.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__7stMeleeFPCcQ26Stages11srStageKind`, `__dl__FPv`, `__dt__7stMeleeFv`, `__nw__FUlQ25Heaps8HeapType`, `addGround__5StageFP6Ground`, `createCollision__5StageFP9gfArchiveiP6Ground`, `createStagePositions__5StageFPQ34nw4r3g3d7ResFile`, `createStagePositions__5StageFv`, `createTrigger__12stTriggerMngFQ27Gimmick8AreaKindi`, `fn_77_1038`, `fn_77_1140`, `fn_77_190C`, `fn_77_605C`, `fn_77_6284`, `fn_77_E10`, `getData__9gfArchiveF11ARCNodeTypeiUs`, `getInstance__16CameraControllerFv`, `initPosPokeTrainer__5StageFii`, `loadStageAttrParam__5StageFP9gfArchivei`, `memset`, `playSE__9sndSystemF5SndIDiiii`, `registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl`, `releaseArchive__15stCommonGimmickFv`, `setWaterTrigger__9stTriggerFP18grGimmickWaterData`, `testStageDataInit__5StageFP9gfArchiveii`, `testStageParamInit__5StageFP9gfArchivei`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 7. st_heal - stage body (provisional TU)

Generated unit: `auto_00_00000070_text`. 37 functions, 3,508 text bytes. Proposed source basename: `st_heal.cpp`; basename/class boundary is provisional.

Direct dependencies: `OSReport`, `__ct__7stMeleeFPCcQ26Stages11srStageKind`, `__dl__FPv`, `__dt__7stMeleeFv`, `__nw__FUlQ25Heaps8HeapType`, `_restgpr_22`, `_restgpr_27`, `_savegpr_22`, `_savegpr_27`, `addGround__5StageFP6Ground`, `createCollision__5StageFP9gfArchiveiP6Ground`, `createItem__9itManagerF6itKindUliP16soResourceModuleUciii`, `createStagePositions__5StageFPQ34nw4r3g3d7ResFile`, `createStagePositions__5StageFv`, `create__8grMadeinFiPCcPCcQ25Heaps8HeapType`, `fn_27_24810C`, `fn_27_27BDB8`, `fn_27_27BF44`, `fn_27_28E7B4`, `fn_27_2A5B84`, `fn_803F8ACC`, `getData__9gfArchiveF11ARCNodeTypeiUs`, `getGround__5StageFi`, `getInstance__9itManagerFv`, `getItemFromInstanceId__9itManagerFi`, `initPosPokeTrainer__5StageFii`, `initializeEntity__8grMadeinFv`, `loadStageAttrParam__5StageFP9gfArchivei`, `playSE__9sndSystemF5SndIDiiii`, `registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl`, `releaseArchive__15stCommonGimmickFv`, `requestFill__8efScreenFfiiP8_GXColor`, `setPos__9grGimmickFP5Vec3f`, `setVanishMode__8BaseItemFb`, `sprintf`, `startEntityAutoLoop__8grMadeinFv`, `testStageParamInit__5StageFP9gfArchivei`, `warp__8BaseItemFP5Vec3f`.

Unresolved direct main.dol callees: 0x803F8ACC.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 8. st_greenhill - stage body (provisional TU)

Generated unit: `auto_00_00000070_text`. 53 functions, 4,008 text bytes. Proposed source basename: `st_greenhill.cpp`; basename/class boundary is provisional.

Direct dependencies: `__ct__7stMeleeFPCcQ26Stages11srStageKind`, `__dl__FPv`, `__dt__7stMeleeFv`, `__nw__FUlQ25Heaps8HeapType`, `_restgpr_27`, `_savegpr_27`, `addGround__5StageFP6Ground`, `createCollision__5StageFP9gfArchiveiP6Ground`, `createStagePositions__5StageFPQ34nw4r3g3d7ResFile`, `createStagePositions__5StageFv`, `fn_72_11EC`, `fn_72_1ACC`, `fn_72_9D54`, `fn_72_A4`, `fn_72_C06C`, `fn_72_C5CC`, `getData__9gfArchiveF11ARCNodeTypeiUs`, `initPosPokeTrainer__5StageFii`, `loadStageAttrParam__5StageFP9gfArchivei`, `memset`, `randf__Fv`, `registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl`, `releaseArchive__15stCommonGimmickFv`, `setIdentity__6MatrixFv`, `testStageDataInit__5StageFP9gfArchiveii`, `testStageParamInit__5StageFP9gfArchivei`.

Unresolved direct main.dol callees: None.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 9. st_kart - stage body (provisional TU)

Generated unit: `auto_00_00000070_text`. 59 functions, 4,432 text bytes. Proposed source basename: `st_kart.cpp`; basename/class boundary is provisional.

Direct dependencies: `SinFIdx__Q24nw4r4mathFf`, `__ct__7stMeleeFPCcQ26Stages11srStageKind`, `__dl__FPv`, `__dt__7stMeleeFv`, `__nw__FUlQ25Heaps8HeapType`, `addGround__5StageFP6Ground`, `createCollision__5StageFP9gfArchiveiP6Ground`, `createStagePositions__5StageFPQ34nw4r3g3d7ResFile`, `createStagePositions__5StageFv`, `fn_49_12D0`, `fn_49_146C`, `fn_49_1AF8`, `fn_49_4248`, `fn_49_A4`, `fn_49_B974`, `fn_49_C084`, `fn_8016232C`, `getData__9gfArchiveF11ARCNodeTypeiUs`, `getInstance__16CameraControllerFv`, `initPosPokeTrainer__5StageFii`, `loadStageAttrParam__5StageFP9gfArchivei`, `memset`, `registScnAnim__5StageFPQ34nw4r3g3d11ResFileDataUl`, `releaseArchive__15stCommonGimmickFv`, `relocation__21grFixedPathCollectionFv`, `testStageDataInit__5StageFP9gfArchiveii`, `testStageParamInit__5StageFP9gfArchivei`, `zoomInCamera__7stMeleeFv`, `zoomOutCamera__7stMeleeFff`.

Unresolved direct main.dol callees: 0x8016232C.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

### 10. st_tengan - ground tail (provisional TU)

Generated unit: `auto_00_0000629C_text`. 37 functions, 5,228 text bytes. Proposed source basename: `gr_tengan.cpp`; basename/class boundary is provisional.

Direct dependencies: `Construct__Q34nw4r3g3d12AnmObjChrResFP12MEMAllocatorPiQ34nw4r3g3d9ResAnmChrQ34nw4r3g3d6ResMdlb`, `Construct__Q34nw4r3g3d12AnmObjVisResFP12MEMAllocatorPiQ34nw4r3g3d9ResAnmVisQ34nw4r3g3d6ResMdl`, `Construct__Q34nw4r3g3d15AnmObjMatClrResFP12MEMAllocatorPiQ34nw4r3g3d9ResAnmClrQ34nw4r3g3d6ResMdlb`, `Construct__Q34nw4r3g3d15AnmObjTexPatResFP12MEMAllocatorPiQ34nw4r3g3d12ResAnmTexPatQ34nw4r3g3d6ResMdlb`, `Construct__Q34nw4r3g3d15AnmObjTexSrtResFP12MEMAllocatorPiQ34nw4r3g3d12ResAnmTexSrtQ34nw4r3g3d6ResMdlb`, `Destroy__Q34nw4r3g3d6G3dObjFv`, `EnableScnMdlCallbackTiming__Q34nw4r3g3d12ScnMdlSimpleFUl`, `GetResAnmChrNumEntries__Q34nw4r3g3d7ResFileFv`, `GetResAnmClrNumEntries__Q34nw4r3g3d7ResFileFv`, `GetResAnmTexPatNumEntries__Q34nw4r3g3d7ResFileFv`, `GetResAnmTexSrtNumEntries__Q34nw4r3g3d7ResFileFv`, `GetResAnmVisNumEntries__Q34nw4r3g3d7ResFileFv`, `__ct__10grYakumonoFPCc`, `__dl__FPv`, `__dt__10grYakumonoFv`, `__nw__FUlQ25Heaps8HeapType`, `_restgpr_25`, `_savegpr_25`, `bind__16gfModelAnimationFPQ34nw4r3g3d6ScnMdlP16gfModelAnimation`, `fn_60_6424`, `fn_60_6470`, `fn_60_64C8`, `fn_60_7230`, `fn_8018D6D8`, `fn_8018D8E0`, `fn_8018DAE8`, `fn_8018DCF0`, `fn_8018DEF8`, `getFrameCount__16gfModelAnimationFd`, `getMEMAllocator__13gfHeapManagerFQ25Heaps8HeapType`, `memset`, `playSE__9sndSystemF5SndIDiiii`, `randf__Fv`, `setEffect__5ecMgrF4EfID`, `setEnableCollisionStatus__6GroundFb`, `setFrame__16gfModelAnimationFd`, `setLoop__16gfModelAnimationFd`, `setParent__5ecMgrFUlPQ34nw4r3g3d6ScnMdlUlb`, `setUpdateRate__16gfModelAnimationFf`, `strcpy`, `strncpy`, `unbindMatColAnim__16gfModelAnimationFPQ34nw4r3g3d6ScnMdl`, `unbindNodeAnim__16gfModelAnimationFPQ34nw4r3g3d6ScnMdl`, `unbindTexAnim__16gfModelAnimationFPQ34nw4r3g3d6ScnMdl`, `unbindTexSrtAnim__16gfModelAnimationFPQ34nw4r3g3d6ScnMdl`, `unbindVisibleAnim__16gfModelAnimationFPQ34nw4r3g3d6ScnMdl`, `update__9grGimmickFf`.

Unresolved direct main.dol callees: 0x8018D6D8, 0x8018D8E0, 0x8018DAE8, 0x8018DCF0, 0x8018DEF8.

Before coding: identify each class through RTTI/vtable references, assign its associated data, then separate stage registration methods from ground methods. An unnamed caller dependency is not proof of a material dependency; only task-1 proposals are marked in the table.

## Handoff gate

Work on one candidate file including its data at a time. Latest user authorization permits Codex to implement in the main checkout on `rsbe01_01-support`; do not overlap a TU another session owns. Use the normal build and 127/127 verification before source promotion. Function-only matches are distinct from source-linked files. Commit locally and push nothing.

Metadata: `brawl/build/RSBE01_01/config.json`, SHA-256 `be1a8cf562e26812da89f33ca704b2fe69c2a8df773cd66b2e0d6554e721b0dd`. Candidates were autogenerated units in that snapshot. Generated assembly supplied function sizes and direct-call identities; no instructions are retained here. Because Claude can rebuild concurrently, rerank against a fresh generated configuration before starting implementation.
