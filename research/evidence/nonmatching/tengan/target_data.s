.include "macros.inc"
.file "auto_04_00000000_data"

# 0x00000000..0x00001208 | size: 0x1208
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x118
.obj lbl_60_data_0, global
	.4byte 0x73745465
	.4byte 0x6E67616E
	.4byte 0x00000000
	.4byte 0x64756D6D
	.4byte 0x79000000
	.4byte 0x4C617365
	.4byte 0x72417474
	.4byte 0x61636B50
	.4byte 0x6F696E74
	.4byte 0x53686F72
	.4byte 0x74000000
	.4byte 0x4C617365
	.4byte 0x72417474
	.4byte 0x61636B50
	.4byte 0x6F696E74
	.4byte 0x00000000
	.4byte 0x4C617365
	.4byte 0x72417474
	.4byte 0x61636B50
	.4byte 0x6F696E74
	.4byte 0x4C6F6E67
	.4byte 0x00000000
	.4byte 0x4C617365
	.4byte 0x72417474
	.4byte 0x61636B50
	.4byte 0x6F696E74
	.4byte 0x53696465
	.4byte 0x00000000
	.4byte 0x41757261
	.4byte 0x41747461
	.4byte 0x636B506F
	.4byte 0x696E7400
	.4byte 0x47616B65
	.4byte 0x00000000
	.4byte 0x436F6C6C
	.4byte 0x6973696F
	.4byte 0x6E000000
	.4byte 0x4C617365
	.4byte 0x72000000
	.4byte 0x41315369
	.4byte 0x676E0000
	.4byte 0x41325369
	.4byte 0x676E0000
	.4byte 0x42536967
	.4byte 0x6E000000
	.4byte 0x426F6F6D
	.4byte 0x6572616E
	.4byte 0x67000000
	.4byte 0x5243616C
	.4byte 0x6C000000
	.4byte 0x5263616C
	.4byte 0x6C000000
	.4byte 0x536F6E69
	.4byte 0x63576176
	.4byte 0x65000000
	.4byte 0x53570000
	.4byte 0x536F6E69
	.4byte 0x63576176
	.4byte 0x65437574
	.4byte 0x74657200
	.4byte 0x53574375
	.4byte 0x74000000
	.4byte 0x536F6E69
	.4byte 0x63576176
	.4byte 0x65437574
	.4byte 0x74657250
	.4byte 0x61746800
	.4byte 0x53574375
	.4byte 0x74506174
	.4byte 0x68000000
.endobj lbl_60_data_0

# .data:0x118 | 0x118 | size: 0xEC
.obj lbl_60_data_118, global
	.4byte 0x00000000
	.4byte 0x5357446D
	.4byte 0x67000000
	.4byte 0x506F6B65
	.4byte 0x54726169
	.4byte 0x6E657230
	.4byte 0x30000000
	.4byte 0x506F6B65
	.4byte 0x54726169
	.4byte 0x6E657230
	.4byte 0x31000000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E4C6173
	.4byte 0x65724131
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x5F4C6173
	.4byte 0x65724131
	.4byte 0x00000000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E4C6173
	.4byte 0x65724132
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x5F4C6173
	.4byte 0x65724132
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E4C6173
	.4byte 0x65724200
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x5F4C6173
	.4byte 0x65724200
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E4C6173
	.4byte 0x65724368
	.4byte 0x61726765
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x5F4C6173
	.4byte 0x65724368
	.4byte 0x61726765
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x536B7900
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x53746172
	.4byte 0x00000000
.endobj lbl_60_data_118

# .data:0x204 | 0x204 | size: 0x44
.obj lbl_60_data_204, global
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x4D61696E
	.4byte 0x42670000
	.4byte 0x6469616C
	.4byte 0x67610000
	.4byte 0x70616C6B
	.4byte 0x69610000
	.4byte 0x63726563
	.4byte 0x656C6961
	.4byte 0x00000000
	.4byte 0x61676E6F
	.4byte 0x6D650000
	.4byte 0x656D7269
	.4byte 0x74000000
	.4byte 0x79757869
	.4byte 0x65000000
.endobj lbl_60_data_204

# .data:0x248 | 0x248 | size: 0x44
.obj jumptable_60_data_248, global
	.4byte fn_60_1D8C+0x60
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0x108
	.4byte fn_60_1D8C+0xB4
	.4byte fn_60_1D8C+0xD0
	.4byte fn_60_1D8C+0xEC
	.4byte fn_60_1D8C+0x7C
	.4byte fn_60_1D8C+0x98
.endobj jumptable_60_data_248

# .data:0x28C | 0x28C | size: 0x174
.obj lbl_60_data_28C, global
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E417368
	.4byte 0x69626141
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x41736869
	.4byte 0x62614100
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E417368
	.4byte 0x69626142
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x41736869
	.4byte 0x62614200
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E42726B
	.4byte 0x59756B61
	.4byte 0x4C000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x466C6F6F
	.4byte 0x724C0000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E42726B
	.4byte 0x59756B61
	.4byte 0x43000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x466C6F6F
	.4byte 0x72430000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E42726B
	.4byte 0x59756B61
	.4byte 0x52000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x466C6F6F
	.4byte 0x72520000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E42726B
	.4byte 0x59756B61
	.4byte 0x434C0000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x466C6F6F
	.4byte 0x72434C00
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E42726B
	.4byte 0x59756B61
	.4byte 0x43520000
	.4byte 0x00000000
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x466C6F6F
	.4byte 0x72435200
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E50616C
	.4byte 0x6B69615F
	.4byte 0x4C466C61
	.4byte 0x73684579
	.4byte 0x654E0000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E50616C
	.4byte 0x6B69615F
	.4byte 0x52466C61
	.4byte 0x73684579
	.4byte 0x654E0000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E446961
	.4byte 0x6C67615F
	.4byte 0x4C466C61
	.4byte 0x73684579
	.4byte 0x654E0000
	.4byte 0x53746754
	.4byte 0x656E6761
	.4byte 0x6E446961
	.4byte 0x6C67615F
	.4byte 0x52466C61
	.4byte 0x73684579
	.4byte 0x654E0000
.endobj lbl_60_data_28C

# .data:0x400 | 0x400 | size: 0x38
.obj jumptable_60_data_400, global
	.4byte fn_60_34D4+0x9C
	.4byte fn_60_34D4+0x12C
	.4byte fn_60_34D4+0x168
	.4byte fn_60_34D4+0x31C
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x644
	.4byte fn_60_34D4+0x4BC
	.4byte fn_60_34D4+0x558
	.4byte fn_60_34D4+0x5D8
	.4byte fn_60_34D4+0x624
.endobj jumptable_60_data_400

# .data:0x438 | 0x438 | size: 0x17
.obj lbl_60_data_438, global
	.string "StgTenganDialga_origin"
.endobj lbl_60_data_438

# .data:0x44F | 0x44F | size: 0x1
.obj gap_04_0000044F_data, global
.hidden gap_04_0000044F_data
	.byte 0x00
.endobj gap_04_0000044F_data

# .data:0x450 | 0x450 | size: 0x14
.obj lbl_60_data_450, global
	.string "StgTenganBoomerang1"
.endobj lbl_60_data_450

# .data:0x464 | 0x464 | size: 0xD
.obj lbl_60_data_464, global
	.string "shotPosition"
.endobj lbl_60_data_464

# .data:0x471 | 0x471 | size: 0x3
.obj gap_04_00000471_data, global
.hidden gap_04_00000471_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00000471_data

# .data:0x474 | 0x474 | size: 0x14
.obj lbl_60_data_474, global
	.string "StgTenganDialga_jaw"
.endobj lbl_60_data_474

# .data:0x488 | 0x488 | size: 0x14
.obj lbl_60_data_488, global
	.string "StgTenganPalkia_Jaw"
.endobj lbl_60_data_488

# .data:0x49C | 0x49C | size: 0x1C
.obj jumptable_60_data_49C, global
	.4byte fn_60_5154+0x1D4
	.4byte fn_60_5154+0x1E4
	.4byte fn_60_5154+0x28C
	.4byte fn_60_5154+0x2CC
	.4byte fn_60_5154+0x2DC
	.4byte fn_60_5154+0x2EC
	.4byte fn_60_5154+0x2FC
.endobj jumptable_60_data_49C

# .data:0x4B8 | 0x4B8 | size: 0x1C
.obj jumptable_60_data_4B8, global
	.4byte fn_60_5154+0xCC
	.4byte fn_60_5154+0xE8
	.4byte fn_60_5154+0x104
	.4byte fn_60_5154+0x128
	.4byte fn_60_5154+0x144
	.4byte fn_60_5154+0x160
	.4byte fn_60_5154+0x17C
.endobj jumptable_60_data_4B8

# .data:0x4D4 | 0x4D4 | size: 0x4
.obj gap_04_000004D4_data, global
.hidden gap_04_000004D4_data
	.4byte 0x00000000
.endobj gap_04_000004D4_data

# .data:0x4D8 | 0x4D8 | size: 0x238
.obj lbl_60_data_4D8, global
	.4byte lbl_60_data_740
	.4byte 0x00000000
	.4byte processDefault__6gfTaskFv
	.4byte processBegin__7stMeleeFv
	.4byte processAnim__5StageFv
	.4byte processUpdate__7stMeleeFv
	.4byte processPreMapCorrection__6gfTaskFv
	.4byte processMapCorrection__5StageFv
	.4byte processFixPosition__6gfTaskFv
	.4byte processPreCollision__6gfTaskFv
	.4byte processCollision__6gfTaskFv
	.4byte processCatch__6gfTaskFv
	.4byte processHit__6gfTaskFv
	.4byte processCamera__6gfTaskFv
	.4byte processFixCamera__5StageFv
	.4byte processEffect__6gfTaskFv
	.4byte processGameProc__6gfTaskFv
	.4byte processEnd__5StageFv
	.4byte renderPre__5StageFv
	.4byte renderOpa__6gfTaskFv
	.4byte renderXlu__6gfTaskFv
	.4byte processDebug__6gfTaskFv
	.4byte renderDebug__5StageFv
	.4byte init__6gfTaskFv
	.4byte fn_60_2A0
	.4byte fn_60_440
	.4byte createObjPokeTrainer__5StageFP9gfArchiveiPCcP5Vec3fP5Vec3f
	.4byte fn_60_620C
	.4byte fn_60_6208
	.4byte fn_60_61FC
	.4byte fn_60_61F4
	.4byte fn_60_61EC
	.4byte getItemPac__5StageFPP9gfArchivePP9gfArchive6itKindi
	.4byte getItemGenPac__7stMeleeFPP9gfArchive
	.4byte getItemPacEnemyFigure__5StageFPP9gfArchive
	.4byte getEnemyPac__5StageFPP9gfArchivePP9gfArchivePP9gfArchivePP9gfArchive6emKind
	.4byte getAdvRadarData__5StageFPP9gfArchivePP9gfArchive
	.4byte initializeStage__5StageFv
	.4byte closeStage__5StageFv
	.4byte renderDebugPositions__5StageFv
	.4byte fn_60_438
	.4byte process__5StageFv
	.4byte updateStagePositions__5StageFv
	.4byte debugCollision__5StageFv
	.4byte fn_60_61E4
	.4byte fn_60_61DC
	.4byte fn_60_6098
	.4byte fn_60_61C0
	.4byte clearCameraParam__5StageFv
	.4byte initCameraParam__5StageFv
	.4byte startLoadLocalData__5StageFv
	.4byte isLoadLocalData__5StageFv
	.4byte entryLocalData__5StageFv
	.4byte removeLocalData__5StageFv
	.4byte fn_60_61BC
	.4byte getFighterStartPos__7stMeleeFP5Vec3fi
	.4byte getFighterReStartPos__7stMeleeFP5Vec3fi
	.4byte fn_60_6214
	.4byte getPokeTrainerStartPos__5StageFP5Vec3fUl
	.4byte getItemPosCount__5StageFv
	.4byte getItemPos__5StageFP5Vec3fP5Vec3fUl
	.4byte getRandItemPos__5StageFP5Vec3f
	.4byte getKirifudaPos__5StageFP5Vec3fUl
	.4byte getKirifudaAngle__5StageFUl
	.4byte getKirifudaScale__5StageFP5Vec3fUl
	.4byte getKirifudaModelType__5StageFUl
	.4byte getPokeTrainerPosCount__5StageFv
	.4byte getPokeTrainerPos__5StageFP5Vec3fP5Vec3fUl
	.4byte getFighterDeadEffectSizeRate__5StageFv
	.4byte getEnemyDeadEffectSizeRate__5StageFv
	.4byte getEnableZ__5StageFv
	.4byte fn_60_61AC
	.4byte fn_60_61B4
	.4byte fn_60_61A4
	.4byte fn_60_619C
	.4byte fn_60_6194
	.4byte fn_60_6180
	.4byte fn_60_6170
	.4byte fn_60_6164
	.4byte fn_60_6158
	.4byte fn_60_6150
	.4byte fn_60_6148
	.4byte fn_60_6140
	.4byte fn_60_613C
	.4byte isEnd__5StageFv
	.4byte isEventEnd__5StageFiPiPi
	.4byte enableDevil__5StageFv
	.4byte disableDevil__5StageFv
	.4byte isDevil__5StageFv
	.4byte setDevilScrool__5StageFff
	.4byte getLucarioFinalTechniquePosition__5StageFP5Vec3f
	.4byte startAppear__5StageFv
	.4byte setAppearKind__5StageFUc
	.4byte endAppear__5StageFv
	.4byte getAppearTask__5StageFv
	.4byte forceStopAppear__5StageFv
	.4byte fn_60_622C
	.4byte setMotionRatio__5StageFff
	.4byte saveMotionRatio__5StageFi
	.4byte restoreMotionRatio__5StageFi
	.4byte setMotionSubRatio__5StageFff
	.4byte saveMotionSubRatio__5StageFi
	.4byte restoreMotionSubRatio__5StageFi
	.4byte fn_60_6134
	.4byte fn_60_612C
	.4byte fn_60_6124
	.4byte isAppear__5StageFv
	.4byte isStartAppearTimming__5StageFv
	.4byte getMadeinAiData__5StageFv
	.4byte fn_60_6224
	.4byte getBamperVector__5StageFP5Vec3f
	.4byte notifyEventInfoReady__5StageFv
	.4byte notifyEventInfoGo__5StageFv
	.4byte getDestroyBossParamCommon__5StageFUl
	.4byte stAdventureEventGetItem__5StageFi6itKindiii
	.4byte setStageOutEffectInit__5StageFv
	.4byte setStageInEffectInit__5StageFv
	.4byte fn_60_611C
	.4byte fn_60_6114
	.4byte fn_60_6110
	.4byte getZoneState__5StageFv
	.4byte getZonePos__5StageFP5Vec3f
	.4byte getMagmaHeight__5StageFv
	.4byte getAcidHeight__5StageFv
	.4byte getIteamDropStatus__5StageFv
	.4byte createWind2ndOnly__7stMeleeFv
	.4byte fn_60_621C
	.4byte updateWind2ndOnly__7stMeleeFv
	.4byte setVision__5StageFUc
	.4byte fn_60_22FC
	.4byte setCameraLimitRange__7stMeleeFffff
	.4byte resetCameraLimitRange__7stMeleeFv
	.4byte checkChangeScene__7stMeleeFv
	.4byte resetChangeScene__7stMeleeFv
	.4byte setChangeSceneNumber__7stMeleeFl
	.4byte fn_60_1BD0
	.4byte fn_60_1CA0
	.4byte fn_60_1D8C
	.4byte fn_60_2030
	.4byte fn_60_2134
	.4byte fn_60_1A88
	.4byte fn_60_56B4
.endobj lbl_60_data_4D8

# .data:0x710 | 0x710 | size: 0x9
.obj lbl_60_data_710, global
	.string "stTengan"
.endobj lbl_60_data_710

# .data:0x719 | 0x719 | size: 0x3
.obj gap_04_00000719_data, global
.hidden gap_04_00000719_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00000719_data

# .data:0x71C | 0x71C | size: 0x24
.obj lbl_60_data_71C, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_7C0
	.4byte 0x00000000
	.4byte lbl_60_data_7A0
	.4byte 0x00000000
	.4byte lbl_60_data_770
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_71C

# .data:0x740 | 0x740 | size: 0x8
.obj lbl_60_data_740, global
	.4byte lbl_60_data_710
	.4byte lbl_60_data_71C
.endobj lbl_60_data_740

# .data:0x748 | 0x748 | size: 0x8
.obj lbl_60_data_748, global
	.string "stMelee"
.endobj lbl_60_data_748

# .data:0x750 | 0x750 | size: 0x20
.obj lbl_60_data_750, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_7C0
	.4byte 0x00000000
	.4byte lbl_60_data_7A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_750

# .data:0x770 | 0x770 | size: 0x8
.obj lbl_60_data_770, global
	.4byte lbl_60_data_748
	.4byte lbl_60_data_750
.endobj lbl_60_data_770

# .data:0x778 | 0x778 | size: 0x10
.obj lbl_60_data_778, global
	.string "stCommonGimmick"
.endobj lbl_60_data_778

# .data:0x788 | 0x788 | size: 0x18
.obj lbl_60_data_788, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_7C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_788

# .data:0x7A0 | 0x7A0 | size: 0x8
.obj lbl_60_data_7A0, global
	.4byte lbl_60_data_778
	.4byte lbl_60_data_788
.endobj lbl_60_data_7A0

# .data:0x7A8 | 0x7A8 | size: 0x6
.obj lbl_60_data_7A8, global
	.string "Stage"
.endobj lbl_60_data_7A8

# .data:0x7AE | 0x7AE | size: 0x2
.obj gap_04_000007AE_data, global
.hidden gap_04_000007AE_data
	.2byte 0x0000
.endobj gap_04_000007AE_data

# .data:0x7B0 | 0x7B0 | size: 0x10
.obj lbl_60_data_7B0, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_7B0

# .data:0x7C0 | 0x7C0 | size: 0x8
.obj lbl_60_data_7C0, global
	.4byte lbl_60_data_7A8
	.4byte lbl_60_data_7B0
.endobj lbl_60_data_7C0

# .data:0x7C8 | 0x7C8 | size: 0x7
.obj lbl_60_data_7C8, global
	.string "gfTask"
.endobj lbl_60_data_7C8

# .data:0x7CF | 0x7CF | size: 0x1
.obj gap_04_000007CF_data, global
.hidden gap_04_000007CF_data
	.byte 0x00
.endobj gap_04_000007CF_data

# .data:0x7D0 | 0x7D0 | size: 0x8
.obj lbl_60_data_7D0, global
	.4byte lbl_60_data_7C8
	.4byte 0x00000000
.endobj lbl_60_data_7D0

# .data:0x7D8 | 0x7D8 | size: 0x14
.obj lbl_60_data_7D8, global
	.4byte lbl_60_data_818
	.4byte 0x00000000
	.4byte fn_60_629C
	.4byte fn_60_6310
	.4byte fn_60_6344
.endobj lbl_60_data_7D8

# .data:0x7EC | 0x7EC | size: 0x1E
.obj lbl_60_data_7EC, global
	.string "stClassInfoImpl<21, stTengan>"
.endobj lbl_60_data_7EC

# .data:0x80A | 0x80A | size: 0x2
.obj gap_04_0000080A_data, global
.hidden gap_04_0000080A_data
	.2byte 0x0000
.endobj gap_04_0000080A_data

# .data:0x80C | 0x80C | size: 0xC
.obj lbl_60_data_80C, global
	.4byte lbl_60_data_830
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_80C

# .data:0x818 | 0x818 | size: 0x8
.obj lbl_60_data_818, global
	.4byte lbl_60_data_7EC
	.4byte lbl_60_data_80C
.endobj lbl_60_data_818

# .data:0x820 | 0x820 | size: 0xC
.obj lbl_60_data_820, global
	.string "stClassInfo"
.endobj lbl_60_data_820

# .data:0x82C | 0x82C | size: 0x4
.obj gap_04_0000082C_data, global
.hidden gap_04_0000082C_data
	.4byte 0x00000000
.endobj gap_04_0000082C_data

# .data:0x830 | 0x830 | size: 0x8
.obj lbl_60_data_830, global
	.4byte lbl_60_data_820
	.4byte 0x00000000
.endobj lbl_60_data_830

# .data:0x838 | 0x838 | size: 0x8
.obj lbl_60_data_838, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_838

# .data:0x840 | 0x840 | size: 0x1C8
.obj lbl_60_data_840, global
	.4byte lbl_60_data_A38
	.4byte 0x00000000
	.4byte processDefault__6gfTaskFv
	.4byte processBegin__6gfTaskFv
	.4byte processAnim__6GroundFv
	.4byte processUpdate__10grYakumonoFv
	.4byte processPreMapCorrection__6gfTaskFv
	.4byte processMapCorrection__6gfTaskFv
	.4byte processFixPosition__6gfTaskFv
	.4byte processPreCollision__6gfTaskFv
	.4byte processCollision__6gfTaskFv
	.4byte processCatch__6gfTaskFv
	.4byte processHit__6gfTaskFv
	.4byte processCamera__6gfTaskFv
	.4byte processFixCamera__6gfTaskFv
	.4byte processEffect__6gfTaskFv
	.4byte processGameProc__6GroundFv
	.4byte processEnd__6gfTaskFv
	.4byte renderPre__6GroundFv
	.4byte renderOpa__6gfTaskFv
	.4byte renderXlu__6gfTaskFv
	.4byte processDebug__6gfTaskFv
	.4byte renderDebug__9grGimmickFv
	.4byte init__6gfTaskFv
	.4byte fn_60_6470
	.4byte fn_60_64C8
	.4byte loadGroundData__6GroundFQ34nw4r3g3d7ResFileUlQ211gfSceneRoot9LayerType
	.4byte bindData__9grGimmickFP9gfArchive
	.4byte setupMelee__6GroundFv
	.4byte setVisibility__6GroundFUl
	.4byte setVisibilityByClipping__6GroundFUl
	.4byte setVisibilityAttachedEffect__9grGimmickFUl
	.4byte receiveCollMsg__6GroundFiP12grCollStatusP16grCollisionJoint
	.4byte receiveCollMsg_Landing__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Heading__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Wall__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Attack__6GroundFP12grCollStatusP16grCollisionJoint
	.4byte unloadData__6GroundFv
	.4byte fn_60_6588
	.4byte startup__10grYakumonoFP9gfArchiveUlQ211gfSceneRoot9LayerType
	.4byte setNode__9grGimmickFv
	.4byte fn_60_1A80
	.4byte fn_60_6580
	.4byte fn_60_657C
	.4byte fn_60_641C
	.4byte fn_60_6574
	.4byte fn_60_6568
	.4byte fn_60_6558
	.4byte fn_60_6548
	.4byte getNodeIndex__6GroundFUlPCc
	.4byte getNodePosition__6GroundFP5Vec3fUlUl
	.4byte getNodePosition__6GroundFP5Vec3fUlPCc
	.4byte getNodeMatrix__6GroundFP6MatrixUlUl
	.4byte getNodeMatrix__6GroundFP6MatrixUlPCc
	.4byte setNodeVisibility__6GroundFbUlUlbb
	.4byte setNodeVisibility__6GroundFbUlPCcbb
	.4byte setNodeVisibilityAll__6GroundFbUl
	.4byte isNodeVisible__6GroundFUlUl
	.4byte setNodeCollision__6GroundFbUlUlb
	.4byte setNodeCollision__6GroundFbUlPCcb
	.4byte getNodeScale__6GroundFP5Vec3fUlUl
	.4byte getNodeScale__6GroundFP5Vec3fUlPCc
	.4byte setValid__10grYakumonoFUl
	.4byte setValidAttachedEffect__10grYakumonoFUl
	.4byte fn_60_6544
	.4byte fn_60_6540
	.4byte fn_60_6538
	.4byte setMotionRatio__9grGimmickFf
	.4byte setMotionFrame__6GroundFfUl
	.4byte getMotionFrame__6GroundFUl
	.4byte setMotionLoop__6GroundFbUl
	.4byte setMatAlphaMul__6GroundFUlUl
	.4byte setMatAlpha__6GroundFUlUl
	.4byte updateG3dProcCalcWorld__6GroundFv
	.4byte preExit__10grYakumonoFv
	.4byte fn_60_6530
	.4byte invalidatedByCameraClipping__9grGimmickFv
	.4byte setTransparencyFlag__9grGimmickFc
	.4byte updateCallback__9grGimmickFUl
	.4byte fixedPosition__9grGimmickFf
	.4byte fn_60_64CC
	.4byte fn_60_6528
	.4byte fn_60_65B4
	.4byte fn_60_65AC
	.4byte changeNodeAnim__9grGimmickFUlUl
	.4byte createFadeVisibleProduction__9grGimmickFf
	.4byte createSoundEffectVisibleProductionForExcel__9grGimmickFUlUlUl
	.4byte createEffectVisibleProductionForExcel__9grGimmickFPQ29grGimmick16SimpleEffectDataPUlPP19grVisibleProduction
	.4byte setSimpleEffectVisibleProduction__9grGimmickFv
	.4byte dbDispInvalidatedByCameraClippingSphere__9grGimmickFv
	.4byte setTransparency__10grYakumonoFUlUl
	.4byte fn_60_65A4
	.4byte onDamage__10grYakumonoFiP8soDamageP20soDamageAttackerInfo
	.4byte onInflict__10grYakumonoFP14soCollisionLogUlf
	.4byte onInflictEach__10grYakumonoFP14soCollisionLogf
	.4byte onGimmickEvent__10grYakumonoFP18soGimmickEventArgsPi
	.4byte enableYakumono__10grYakumonoFUl
	.4byte disableYakumono__10grYakumonoFUlUl
	.4byte enableHit__10grYakumonoFUlUl
	.4byte disableHit__10grYakumonoFUlUl
	.4byte disableAttack__10grYakumonoFUl
	.4byte enableArea__10grYakumonoFv
	.4byte disableArea__10grYakumonoFv
	.4byte setSleepArea__10grYakumonoFb
	.4byte setTeamYakumonoOwnerId__10grYakumonoFUl
	.4byte setTeamYakumono__10grYakumonoFUlUl
	.4byte getTeamYakumono__10grYakumonoFPi
	.4byte setOffsetAttack__10grYakumonoFP5Vec3fi
	.4byte "setAreaGimmick__10grYakumonoFP10soAreaDataP19soSet<10soAreaData>P10ykAreaDatab"
	.4byte setAttackGimmick__10grYakumonoFiiUlPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setSoCollisionAttackData__10grYakumonoFP21soCollisionAttackDataPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setAttackGimmickDetails__10grYakumonoFP21soCollisionAttackDataffffiP5Vec3fiiiiUlUlUlbUlQ221soCollisionAttackData9AttributeQ221soCollisionAttackData10SoundLevelQ221soCollisionAttackData14SoundAttributebbbbbbUlUlbbbQ221soCollisionAttackData7LrCheckbbbbbQ221soCollisionAttackData6Regionb
	.4byte isEnableAttackPersonAttacked__10grYakumonoFUlUlUl
	.4byte isEnableAttackAttribute__10grYakumonoFUlUl
.endobj lbl_60_data_840

# .data:0xA08 | 0xA08 | size: 0x9
.obj lbl_60_data_A08, global
	.string "grTengan"
.endobj lbl_60_data_A08

# .data:0xA11 | 0xA11 | size: 0x3
.obj gap_04_00000A11_data, global
.hidden gap_04_00000A11_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00000A11_data

# .data:0xA14 | 0xA14 | size: 0x24
.obj lbl_60_data_A14, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte lbl_60_data_A68
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_A14

# .data:0xA38 | 0xA38 | size: 0x8
.obj lbl_60_data_A38, global
	.4byte lbl_60_data_A08
	.4byte lbl_60_data_A14
.endobj lbl_60_data_A38

# .data:0xA40 | 0xA40 | size: 0xB
.obj lbl_60_data_A40, global
	.string "grYakumono"
.endobj lbl_60_data_A40

# .data:0xA4B | 0xA4B | size: 0x1
.obj gap_04_00000A4B_data, global
.hidden gap_04_00000A4B_data
	.byte 0x00
.endobj gap_04_00000A4B_data

# .data:0xA4C | 0xA4C | size: 0x1C
.obj lbl_60_data_A4C, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_A4C

# .data:0xA68 | 0xA68 | size: 0x8
.obj lbl_60_data_A68, global
	.4byte lbl_60_data_A40
	.4byte lbl_60_data_A4C
.endobj lbl_60_data_A68

# .data:0xA70 | 0xA70 | size: 0xA
.obj lbl_60_data_A70, global
	.string "grGimmick"
.endobj lbl_60_data_A70

# .data:0xA7A | 0xA7A | size: 0x2
.obj gap_04_00000A7A_data, global
.hidden gap_04_00000A7A_data
	.2byte 0x0000
.endobj gap_04_00000A7A_data

# .data:0xA7C | 0xA7C | size: 0x14
.obj lbl_60_data_A7C, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_A7C

# .data:0xA90 | 0xA90 | size: 0x8
.obj lbl_60_data_A90, global
	.4byte lbl_60_data_A70
	.4byte lbl_60_data_A7C
.endobj lbl_60_data_A90

# .data:0xA98 | 0xA98 | size: 0x7
.obj lbl_60_data_A98, global
	.string "Ground"
.endobj lbl_60_data_A98

# .data:0xA9F | 0xA9F | size: 0x1
.obj gap_04_00000A9F_data, global
.hidden gap_04_00000A9F_data
	.byte 0x00
.endobj gap_04_00000A9F_data

# .data:0xAA0 | 0xAA0 | size: 0x10
.obj lbl_60_data_AA0, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_AA0

# .data:0xAB0 | 0xAB0 | size: 0x8
.obj lbl_60_data_AB0, global
	.4byte lbl_60_data_A98
	.4byte lbl_60_data_AA0
.endobj lbl_60_data_AB0

# .data:0xAB8 | 0xAB8 | size: 0x48
.obj lbl_60_data_AB8, global
	.4byte 0x6469616C
	.4byte 0x6761506F
	.4byte 0x73697469
	.4byte 0x6F6E0000
	.4byte 0x61736869
	.4byte 0x6261415F
	.4byte 0x55700000
	.4byte 0x61736869
	.4byte 0x6261415F
	.4byte 0x446F776E
	.4byte 0x00000000
	.4byte 0x61736869
	.4byte 0x6261415F
	.4byte 0x55703100
	.4byte 0x61736869
	.4byte 0x6261415F
	.4byte 0x446F776E
	.4byte 0x31000000
.endobj lbl_60_data_AB8

# .data:0xB00 | 0xB00 | size: 0x1D0
.obj lbl_60_data_B00, global
	.4byte lbl_60_data_D08
	.4byte 0x00000000
	.4byte processDefault__6gfTaskFv
	.4byte processBegin__6gfTaskFv
	.4byte processAnim__6GroundFv
	.4byte processUpdate__10grYakumonoFv
	.4byte processPreMapCorrection__6gfTaskFv
	.4byte processMapCorrection__6gfTaskFv
	.4byte processFixPosition__6gfTaskFv
	.4byte processPreCollision__6gfTaskFv
	.4byte processCollision__6gfTaskFv
	.4byte processCatch__6gfTaskFv
	.4byte processHit__6gfTaskFv
	.4byte processCamera__6gfTaskFv
	.4byte processFixCamera__6gfTaskFv
	.4byte processEffect__6gfTaskFv
	.4byte processGameProc__6GroundFv
	.4byte processEnd__6gfTaskFv
	.4byte renderPre__6GroundFv
	.4byte renderOpa__6gfTaskFv
	.4byte renderXlu__6gfTaskFv
	.4byte processDebug__6gfTaskFv
	.4byte renderDebug__9grGimmickFv
	.4byte init__6gfTaskFv
	.4byte fn_60_668C
	.4byte fn_60_66E4
	.4byte loadGroundData__6GroundFQ34nw4r3g3d7ResFileUlQ211gfSceneRoot9LayerType
	.4byte bindData__9grGimmickFP9gfArchive
	.4byte setupMelee__6GroundFv
	.4byte setVisibility__6GroundFUl
	.4byte setVisibilityByClipping__6GroundFUl
	.4byte setVisibilityAttachedEffect__9grGimmickFUl
	.4byte receiveCollMsg__6GroundFiP12grCollStatusP16grCollisionJoint
	.4byte receiveCollMsg_Landing__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Heading__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Wall__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Attack__6GroundFP12grCollStatusP16grCollisionJoint
	.4byte unloadData__6GroundFv
	.4byte fn_60_6588
	.4byte startup__10grYakumonoFP9gfArchiveUlQ211gfSceneRoot9LayerType
	.4byte setNode__9grGimmickFv
	.4byte fn_60_1A80
	.4byte fn_60_6580
	.4byte fn_60_657C
	.4byte fn_60_641C
	.4byte fn_60_6574
	.4byte fn_60_6568
	.4byte fn_60_6558
	.4byte fn_60_6548
	.4byte getNodeIndex__6GroundFUlPCc
	.4byte getNodePosition__6GroundFP5Vec3fUlUl
	.4byte getNodePosition__6GroundFP5Vec3fUlPCc
	.4byte getNodeMatrix__6GroundFP6MatrixUlUl
	.4byte getNodeMatrix__6GroundFP6MatrixUlPCc
	.4byte setNodeVisibility__6GroundFbUlUlbb
	.4byte setNodeVisibility__6GroundFbUlPCcbb
	.4byte setNodeVisibilityAll__6GroundFbUl
	.4byte isNodeVisible__6GroundFUlUl
	.4byte setNodeCollision__6GroundFbUlUlb
	.4byte setNodeCollision__6GroundFbUlPCcb
	.4byte getNodeScale__6GroundFP5Vec3fUlUl
	.4byte getNodeScale__6GroundFP5Vec3fUlPCc
	.4byte setValid__10grYakumonoFUl
	.4byte setValidAttachedEffect__10grYakumonoFUl
	.4byte fn_60_6544
	.4byte fn_60_6540
	.4byte fn_60_6538
	.4byte setMotionRatio__9grGimmickFf
	.4byte setMotionFrame__6GroundFfUl
	.4byte getMotionFrame__6GroundFUl
	.4byte setMotionLoop__6GroundFbUl
	.4byte setMatAlphaMul__6GroundFUlUl
	.4byte setMatAlpha__6GroundFUlUl
	.4byte updateG3dProcCalcWorld__6GroundFv
	.4byte preExit__10grYakumonoFv
	.4byte fn_60_6530
	.4byte invalidatedByCameraClipping__9grGimmickFv
	.4byte setTransparencyFlag__9grGimmickFc
	.4byte updateCallback__9grGimmickFUl
	.4byte fixedPosition__9grGimmickFf
	.4byte fn_60_64CC
	.4byte fn_60_6528
	.4byte fn_60_65B4
	.4byte fn_60_65AC
	.4byte changeNodeAnim__9grGimmickFUlUl
	.4byte createFadeVisibleProduction__9grGimmickFf
	.4byte createSoundEffectVisibleProductionForExcel__9grGimmickFUlUlUl
	.4byte createEffectVisibleProductionForExcel__9grGimmickFPQ29grGimmick16SimpleEffectDataPUlPP19grVisibleProduction
	.4byte setSimpleEffectVisibleProduction__9grGimmickFv
	.4byte dbDispInvalidatedByCameraClippingSphere__9grGimmickFv
	.4byte setTransparency__10grYakumonoFUlUl
	.4byte fn_60_65A4
	.4byte onDamage__10grYakumonoFiP8soDamageP20soDamageAttackerInfo
	.4byte onInflict__10grYakumonoFP14soCollisionLogUlf
	.4byte onInflictEach__10grYakumonoFP14soCollisionLogf
	.4byte onGimmickEvent__10grYakumonoFP18soGimmickEventArgsPi
	.4byte enableYakumono__10grYakumonoFUl
	.4byte disableYakumono__10grYakumonoFUlUl
	.4byte enableHit__10grYakumonoFUlUl
	.4byte disableHit__10grYakumonoFUlUl
	.4byte disableAttack__10grYakumonoFUl
	.4byte enableArea__10grYakumonoFv
	.4byte disableArea__10grYakumonoFv
	.4byte setSleepArea__10grYakumonoFb
	.4byte setTeamYakumonoOwnerId__10grYakumonoFUl
	.4byte setTeamYakumono__10grYakumonoFUlUl
	.4byte getTeamYakumono__10grYakumonoFPi
	.4byte setOffsetAttack__10grYakumonoFP5Vec3fi
	.4byte "setAreaGimmick__10grYakumonoFP10soAreaDataP19soSet<10soAreaData>P10ykAreaDatab"
	.4byte setAttackGimmick__10grYakumonoFiiUlPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setSoCollisionAttackData__10grYakumonoFP21soCollisionAttackDataPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setAttackGimmickDetails__10grYakumonoFP21soCollisionAttackDataffffiP5Vec3fiiiiUlUlUlbUlQ221soCollisionAttackData9AttributeQ221soCollisionAttackData10SoundLevelQ221soCollisionAttackData14SoundAttributebbbbbbUlUlbbbQ221soCollisionAttackData7LrCheckbbbbbQ221soCollisionAttackData6Regionb
	.4byte isEnableAttackPersonAttacked__10grYakumonoFUlUlUl
	.4byte isEnableAttackAttribute__10grYakumonoFUlUl
	.4byte fn_60_1D7C
	.4byte fn_60_1D84
.endobj lbl_60_data_B00

# .data:0xCD0 | 0xCD0 | size: 0xB
.obj lbl_60_data_CD0, global
	.string "grTenganBg"
.endobj lbl_60_data_CD0

# .data:0xCDB | 0xCDB | size: 0x1
.obj gap_04_00000CDB_data, global
.hidden gap_04_00000CDB_data
	.byte 0x00
.endobj gap_04_00000CDB_data

# .data:0xCDC | 0xCDC | size: 0x2C
.obj lbl_60_data_CDC, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte lbl_60_data_A68
	.4byte 0x00000000
	.4byte lbl_60_data_A38
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_CDC

# .data:0xD08 | 0xD08 | size: 0xC8
.obj lbl_60_data_D08, global
	.4byte lbl_60_data_CD0
	.4byte lbl_60_data_CDC
	.4byte 0x67725465
	.4byte 0x6E67616E
	.4byte 0x00000000
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte lbl_60_data_A68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x67725961
	.4byte 0x6B756D6F
	.4byte 0x6E6F0000
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x67724769
	.4byte 0x6D6D6963
	.4byte 0x6B000000
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x47726F75
	.4byte 0x6E640000
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x67665461
	.4byte 0x736B0000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_D08

# .data:0xDD0 | 0xDD0 | size: 0x1E0
.obj lbl_60_data_DD0, global
	.4byte lbl_60_data_FE8
	.4byte 0x00000000
	.4byte processDefault__6gfTaskFv
	.4byte processBegin__6gfTaskFv
	.4byte processAnim__6GroundFv
	.4byte processUpdate__10grYakumonoFv
	.4byte processPreMapCorrection__6gfTaskFv
	.4byte processMapCorrection__6gfTaskFv
	.4byte processFixPosition__6gfTaskFv
	.4byte processPreCollision__6gfTaskFv
	.4byte processCollision__6gfTaskFv
	.4byte processCatch__6gfTaskFv
	.4byte processHit__6gfTaskFv
	.4byte processCamera__6gfTaskFv
	.4byte processFixCamera__6gfTaskFv
	.4byte processEffect__6gfTaskFv
	.4byte processGameProc__6GroundFv
	.4byte processEnd__6gfTaskFv
	.4byte renderPre__6GroundFv
	.4byte renderOpa__6gfTaskFv
	.4byte renderXlu__6gfTaskFv
	.4byte processDebug__6gfTaskFv
	.4byte renderDebug__9grGimmickFv
	.4byte init__6gfTaskFv
	.4byte fn_60_68F0
	.4byte fn_60_6948
	.4byte loadGroundData__6GroundFQ34nw4r3g3d7ResFileUlQ211gfSceneRoot9LayerType
	.4byte bindData__9grGimmickFP9gfArchive
	.4byte setupMelee__6GroundFv
	.4byte setVisibility__6GroundFUl
	.4byte setVisibilityByClipping__6GroundFUl
	.4byte setVisibilityAttachedEffect__9grGimmickFUl
	.4byte receiveCollMsg__6GroundFiP12grCollStatusP16grCollisionJoint
	.4byte receiveCollMsg_Landing__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Heading__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Wall__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Attack__6GroundFP12grCollStatusP16grCollisionJoint
	.4byte unloadData__6GroundFv
	.4byte fn_60_6588
	.4byte startup__10grYakumonoFP9gfArchiveUlQ211gfSceneRoot9LayerType
	.4byte setNode__9grGimmickFv
	.4byte fn_60_1A80
	.4byte fn_60_6580
	.4byte fn_60_657C
	.4byte fn_60_641C
	.4byte fn_60_6574
	.4byte fn_60_6568
	.4byte fn_60_6558
	.4byte fn_60_6548
	.4byte getNodeIndex__6GroundFUlPCc
	.4byte getNodePosition__6GroundFP5Vec3fUlUl
	.4byte getNodePosition__6GroundFP5Vec3fUlPCc
	.4byte getNodeMatrix__6GroundFP6MatrixUlUl
	.4byte getNodeMatrix__6GroundFP6MatrixUlPCc
	.4byte setNodeVisibility__6GroundFbUlUlbb
	.4byte setNodeVisibility__6GroundFbUlPCcbb
	.4byte setNodeVisibilityAll__6GroundFbUl
	.4byte isNodeVisible__6GroundFUlUl
	.4byte setNodeCollision__6GroundFbUlUlb
	.4byte setNodeCollision__6GroundFbUlPCcb
	.4byte getNodeScale__6GroundFP5Vec3fUlUl
	.4byte getNodeScale__6GroundFP5Vec3fUlPCc
	.4byte setValid__10grYakumonoFUl
	.4byte setValidAttachedEffect__10grYakumonoFUl
	.4byte fn_60_6544
	.4byte fn_60_6540
	.4byte fn_60_6538
	.4byte setMotionRatio__9grGimmickFf
	.4byte setMotionFrame__6GroundFfUl
	.4byte getMotionFrame__6GroundFUl
	.4byte setMotionLoop__6GroundFbUl
	.4byte setMatAlphaMul__6GroundFUlUl
	.4byte setMatAlpha__6GroundFUlUl
	.4byte updateG3dProcCalcWorld__6GroundFv
	.4byte preExit__10grYakumonoFv
	.4byte fn_60_6530
	.4byte invalidatedByCameraClipping__9grGimmickFv
	.4byte setTransparencyFlag__9grGimmickFc
	.4byte updateCallback__9grGimmickFUl
	.4byte fixedPosition__9grGimmickFf
	.4byte setTgtNode__9grGimmickFPCc
	.4byte getTgtNode__9grGimmickFv
	.4byte fn_60_65B4
	.4byte fn_60_65AC
	.4byte changeNodeAnim__9grGimmickFUlUl
	.4byte createFadeVisibleProduction__9grGimmickFf
	.4byte createSoundEffectVisibleProductionForExcel__9grGimmickFUlUlUl
	.4byte createEffectVisibleProductionForExcel__9grGimmickFPQ29grGimmick16SimpleEffectDataPUlPP19grVisibleProduction
	.4byte setSimpleEffectVisibleProduction__9grGimmickFv
	.4byte dbDispInvalidatedByCameraClippingSphere__9grGimmickFv
	.4byte setTransparency__10grYakumonoFUlUl
	.4byte fn_60_65A4
	.4byte onDamage__10grYakumonoFiP8soDamageP20soDamageAttackerInfo
	.4byte onInflict__10grYakumonoFP14soCollisionLogUlf
	.4byte onInflictEach__10grYakumonoFP14soCollisionLogf
	.4byte onGimmickEvent__10grYakumonoFP18soGimmickEventArgsPi
	.4byte enableYakumono__10grYakumonoFUl
	.4byte disableYakumono__10grYakumonoFUlUl
	.4byte enableHit__10grYakumonoFUlUl
	.4byte disableHit__10grYakumonoFUlUl
	.4byte disableAttack__10grYakumonoFUl
	.4byte enableArea__10grYakumonoFv
	.4byte disableArea__10grYakumonoFv
	.4byte setSleepArea__10grYakumonoFb
	.4byte setTeamYakumonoOwnerId__10grYakumonoFUl
	.4byte setTeamYakumono__10grYakumonoFUlUl
	.4byte getTeamYakumono__10grYakumonoFPi
	.4byte setOffsetAttack__10grYakumonoFP5Vec3fi
	.4byte "setAreaGimmick__10grYakumonoFP10soAreaDataP19soSet<10soAreaData>P10ykAreaDatab"
	.4byte setAttackGimmick__10grYakumonoFiiUlPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setSoCollisionAttackData__10grYakumonoFP21soCollisionAttackDataPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setAttackGimmickDetails__10grYakumonoFP21soCollisionAttackDataffffiP5Vec3fiiiiUlUlUlbUlQ221soCollisionAttackData9AttributeQ221soCollisionAttackData10SoundLevelQ221soCollisionAttackData14SoundAttributebbbbbbUlUlbbbQ221soCollisionAttackData7LrCheckbbbbbQ221soCollisionAttackData6Regionb
	.4byte isEnableAttackPersonAttacked__10grYakumonoFUlUlUl
	.4byte isEnableAttackAttribute__10grYakumonoFUlUl
	.4byte fn_60_69BC
	.4byte fn_60_6CFC
	.4byte fn_60_6D2C
	.4byte fn_60_22E4
	.4byte fn_60_22EC
	.4byte fn_60_22F4
.endobj lbl_60_data_DD0

# .data:0xFB0 | 0xFB0 | size: 0xE
.obj lbl_60_data_FB0, global
	.string "grTenganFloor"
.endobj lbl_60_data_FB0

# .data:0xFBE | 0xFBE | size: 0x2
.obj gap_04_00000FBE_data, global
.hidden gap_04_00000FBE_data
	.2byte 0x0000
.endobj gap_04_00000FBE_data

# .data:0xFC0 | 0xFC0 | size: 0x28
.obj lbl_60_data_FC0, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte lbl_60_data_A68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_FC0

# .data:0xFE8 | 0xFE8 | size: 0x8
.obj lbl_60_data_FE8, global
	.4byte lbl_60_data_FB0
	.4byte lbl_60_data_FC0
.endobj lbl_60_data_FE8

# .data:0xFF0 | 0xFF0 | size: 0x1D4
.obj lbl_60_data_FF0, global
	.4byte lbl_60_data_1200
	.4byte 0x00000000
	.4byte processDefault__6gfTaskFv
	.4byte processBegin__6gfTaskFv
	.4byte processAnim__6GroundFv
	.4byte processUpdate__10grYakumonoFv
	.4byte processPreMapCorrection__6gfTaskFv
	.4byte processMapCorrection__6gfTaskFv
	.4byte processFixPosition__6gfTaskFv
	.4byte processPreCollision__6gfTaskFv
	.4byte processCollision__6gfTaskFv
	.4byte processCatch__6gfTaskFv
	.4byte processHit__6gfTaskFv
	.4byte processCamera__6gfTaskFv
	.4byte processFixCamera__6gfTaskFv
	.4byte processEffect__6gfTaskFv
	.4byte processGameProc__6GroundFv
	.4byte processEnd__6gfTaskFv
	.4byte renderPre__6GroundFv
	.4byte renderOpa__6gfTaskFv
	.4byte renderXlu__6gfTaskFv
	.4byte processDebug__6gfTaskFv
	.4byte renderDebug__9grGimmickFv
	.4byte init__6gfTaskFv
	.4byte fn_60_72EC
	.4byte fn_60_7344
	.4byte loadGroundData__6GroundFQ34nw4r3g3d7ResFileUlQ211gfSceneRoot9LayerType
	.4byte bindData__9grGimmickFP9gfArchive
	.4byte setupMelee__6GroundFv
	.4byte setVisibility__6GroundFUl
	.4byte setVisibilityByClipping__6GroundFUl
	.4byte setVisibilityAttachedEffect__9grGimmickFUl
	.4byte receiveCollMsg__6GroundFiP12grCollStatusP16grCollisionJoint
	.4byte receiveCollMsg_Landing__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Heading__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Wall__6GroundFP12grCollStatusP16grCollisionJointb
	.4byte receiveCollMsg_Attack__6GroundFP12grCollStatusP16grCollisionJoint
	.4byte unloadData__6GroundFv
	.4byte fn_60_6588
	.4byte startup__10grYakumonoFP9gfArchiveUlQ211gfSceneRoot9LayerType
	.4byte setNode__9grGimmickFv
	.4byte fn_60_1A80
	.4byte fn_60_6580
	.4byte fn_60_657C
	.4byte fn_60_641C
	.4byte fn_60_6574
	.4byte fn_60_6568
	.4byte fn_60_6558
	.4byte fn_60_6548
	.4byte getNodeIndex__6GroundFUlPCc
	.4byte getNodePosition__6GroundFP5Vec3fUlUl
	.4byte getNodePosition__6GroundFP5Vec3fUlPCc
	.4byte getNodeMatrix__6GroundFP6MatrixUlUl
	.4byte getNodeMatrix__6GroundFP6MatrixUlPCc
	.4byte setNodeVisibility__6GroundFbUlUlbb
	.4byte setNodeVisibility__6GroundFbUlPCcbb
	.4byte setNodeVisibilityAll__6GroundFbUl
	.4byte isNodeVisible__6GroundFUlUl
	.4byte setNodeCollision__6GroundFbUlUlb
	.4byte setNodeCollision__6GroundFbUlPCcb
	.4byte getNodeScale__6GroundFP5Vec3fUlUl
	.4byte getNodeScale__6GroundFP5Vec3fUlPCc
	.4byte setValid__10grYakumonoFUl
	.4byte setValidAttachedEffect__10grYakumonoFUl
	.4byte fn_60_6544
	.4byte fn_60_6540
	.4byte fn_60_6538
	.4byte setMotionRatio__9grGimmickFf
	.4byte setMotionFrame__6GroundFfUl
	.4byte getMotionFrame__6GroundFUl
	.4byte setMotionLoop__6GroundFbUl
	.4byte setMatAlphaMul__6GroundFUlUl
	.4byte setMatAlpha__6GroundFUlUl
	.4byte updateG3dProcCalcWorld__6GroundFv
	.4byte preExit__10grYakumonoFv
	.4byte fn_60_6530
	.4byte invalidatedByCameraClipping__9grGimmickFv
	.4byte setTransparencyFlag__9grGimmickFc
	.4byte updateCallback__9grGimmickFUl
	.4byte fixedPosition__9grGimmickFf
	.4byte fn_60_64CC
	.4byte fn_60_6528
	.4byte fn_60_65B4
	.4byte fn_60_65AC
	.4byte changeNodeAnim__9grGimmickFUlUl
	.4byte createFadeVisibleProduction__9grGimmickFf
	.4byte createSoundEffectVisibleProductionForExcel__9grGimmickFUlUlUl
	.4byte createEffectVisibleProductionForExcel__9grGimmickFPQ29grGimmick16SimpleEffectDataPUlPP19grVisibleProduction
	.4byte setSimpleEffectVisibleProduction__9grGimmickFv
	.4byte dbDispInvalidatedByCameraClippingSphere__9grGimmickFv
	.4byte setTransparency__10grYakumonoFUlUl
	.4byte fn_60_65A4
	.4byte onDamage__10grYakumonoFiP8soDamageP20soDamageAttackerInfo
	.4byte onInflict__10grYakumonoFP14soCollisionLogUlf
	.4byte onInflictEach__10grYakumonoFP14soCollisionLogf
	.4byte onGimmickEvent__10grYakumonoFP18soGimmickEventArgsPi
	.4byte enableYakumono__10grYakumonoFUl
	.4byte disableYakumono__10grYakumonoFUlUl
	.4byte enableHit__10grYakumonoFUlUl
	.4byte disableHit__10grYakumonoFUlUl
	.4byte disableAttack__10grYakumonoFUl
	.4byte enableArea__10grYakumonoFv
	.4byte disableArea__10grYakumonoFv
	.4byte setSleepArea__10grYakumonoFb
	.4byte setTeamYakumonoOwnerId__10grYakumonoFUl
	.4byte setTeamYakumono__10grYakumonoFUlUl
	.4byte getTeamYakumono__10grYakumonoFPi
	.4byte setOffsetAttack__10grYakumonoFP5Vec3fi
	.4byte "setAreaGimmick__10grYakumonoFP10soAreaDataP19soSet<10soAreaData>P10ykAreaDatab"
	.4byte setAttackGimmick__10grYakumonoFiiUlPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setSoCollisionAttackData__10grYakumonoFP21soCollisionAttackDataPQ29grGimmick10AttackDataPQ29grGimmick13AttackDetails
	.4byte setAttackGimmickDetails__10grYakumonoFP21soCollisionAttackDataffffiP5Vec3fiiiiUlUlUlbUlQ221soCollisionAttackData9AttributeQ221soCollisionAttackData10SoundLevelQ221soCollisionAttackData14SoundAttributebbbbbbUlUlbbbQ221soCollisionAttackData7LrCheckbbbbbQ221soCollisionAttackData6Regionb
	.4byte isEnableAttackPersonAttacked__10grYakumonoFUlUlUl
	.4byte isEnableAttackAttribute__10grYakumonoFUlUl
	.4byte fn_60_73B8
	.4byte fn_60_770C
	.4byte fn_60_212C
.endobj lbl_60_data_FF0

# .data:0x11C4 | 0x11C4 | size: 0xF
.obj lbl_60_data_11C4, global
	.string "grTenganAshiba"
.endobj lbl_60_data_11C4

# .data:0x11D3 | 0x11D3 | size: 0x1
.obj gap_04_000011D3_data, global
.hidden gap_04_000011D3_data
	.byte 0x00
.endobj gap_04_000011D3_data

# .data:0x11D4 | 0x11D4 | size: 0x2C
.obj lbl_60_data_11D4, global
	.4byte lbl_60_data_7D0
	.4byte 0x00000000
	.4byte lbl_60_data_AB0
	.4byte 0x00000000
	.4byte lbl_60_data_A90
	.4byte 0x00000000
	.4byte lbl_60_data_A68
	.4byte 0x00000000
	.4byte lbl_60_data_A38
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_60_data_11D4

# .data:0x1200 | 0x1200 | size: 0x8
.obj lbl_60_data_1200, global
	.4byte lbl_60_data_11C4
	.4byte lbl_60_data_11D4
.endobj lbl_60_data_1200
