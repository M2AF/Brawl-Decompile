# Actual Brawl gameplay executable catalog

Measured from both local images, September 30, 2026. Version: **RSBE01_01**. All 127 files are byte-identical between ISO and RVZ. All 126 REL hashes match the pinned upstream Rev2 manifest; main.dol differs.

See `reports/binary-catalog.csv` for hashes, byte sizes and module entry metadata, and `reports/binary-manifest.json` for structured records. The count covers the main Data partition, not update or other partition executables.

## main (1)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `sys/main.dol` | — | 4817568 |  |

## fighter (36)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `files/module/ft_captain.rel` | 100 | 165424 | 27, 100, 0 |
| `files/module/ft_dedede.rel` | 117 | 263680 | 27, 117, 0 |
| `files/module/ft_diddy.rel` | 115 | 208856 | 27, 115, 0 |
| `files/module/ft_donkey.rel` | 92 | 164584 | 27, 92, 0 |
| `files/module/ft_falco.rel` | 108 | 138640 | 27, 108, 0 |
| `files/module/ft_fox.rel` | 97 | 138856 | 27, 97, 0 |
| `files/module/ft_gamewatch.rel` | 107 | 261432 | 27, 107, 0 |
| `files/module/ft_ganon.rel` | 109 | 143752 | 27, 109, 0 |
| `files/module/ft_iceclimber.rel` | 105 | 241448 | 27, 105, 0 |
| `files/module/ft_ike.rel` | 119 | 146840 | 27, 119, 0 |
| `files/module/ft_kirby.rel` | 96 | 344192 | 27, 96, 0 |
| `files/module/ft_koopa.rel` | 102 | 202544 | 27, 102, 0 |
| `files/module/ft_link.rel` | 93 | 190320 | 27, 93, 0 |
| `files/module/ft_lucario.rel` | 118 | 152312 | 27, 118, 0 |
| `files/module/ft_lucas.rel` | 114 | 251168 | 27, 114, 0 |
| `files/module/ft_luigi.rel` | 99 | 135936 | 27, 99, 0 |
| `files/module/ft_mario.rel` | 91 | 204240 | 27, 91, 0 |
| `files/module/ft_marth.rel` | 106 | 107576 | 27, 106, 0 |
| `files/module/ft_metaknight.rel` | 111 | 133744 | 27, 111, 0 |
| `files/module/ft_ness.rel` | 101 | 277192 | 27, 101, 0 |
| `files/module/ft_peach.rel` | 103 | 148400 | 27, 103, 0 |
| `files/module/ft_pikachu.rel` | 98 | 211696 | 27, 98, 0 |
| `files/module/ft_pikmin.rel` | 113 | 307896 | 27, 113, 0 |
| `files/module/ft_pit.rel` | 112 | 182192 | 27, 112, 0 |
| `files/module/ft_poke.rel` | 116 | 288000 | 27, 116, 0 |
| `files/module/ft_purin.rel` | 124 | 102632 | 27, 124, 0 |
| `files/module/ft_robot.rel` | 120 | 184640 | 27, 120, 0 |
| `files/module/ft_samus.rel` | 94 | 253360 | 27, 94, 0 |
| `files/module/ft_snake.rel` | 122 | 313008 | 27, 122, 0 |
| `files/module/ft_sonic.rel` | 123 | 180680 | 27, 123, 0 |
| `files/module/ft_toonlink.rel` | 121 | 190600 | 27, 121, 0 |
| `files/module/ft_wario.rel` | 110 | 240280 | 27, 110, 0 |
| `files/module/ft_wolf.rel` | 125 | 138520 | 27, 125, 0 |
| `files/module/ft_yoshi.rel` | 95 | 224936 | 27, 95, 0 |
| `files/module/ft_zako.rel` | 126 | 134392 | 27, 126, 0 |
| `files/module/ft_zelda.rel` | 104 | 282136 | 27, 104, 0 |

## stage (49)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `files/module/st_battle.rel` | 43 | 16288 | 27, 43, 0 |
| `files/module/st_battles.rel` | 42 | 13592 | 27, 42, 0 |
| `files/module/st_config.rel` | 44 | 13040 | 27, 44, 0 |
| `files/module/st_crayon.rel` | 56 | 83920 | 27, 56, 0 |
| `files/module/st_croll.rel` | 90 | 71272 | 27, 90, 0 |
| `files/module/st_dolpic.rel` | 46 | 61400 | 27, 46, 0 |
| `files/module/st_donkey.rel` | 50 | 89008 | 27, 50, 0 |
| `files/module/st_dxbigblue.rel` | 81 | 64688 | 27, 81, 0 |
| `files/module/st_dxcorneria.rel` | 82 | 34344 | 27, 82, 0 |
| `files/module/st_dxgarden.rel` | 77 | 56704 | 27, 77, 0 |
| `files/module/st_dxgreens.rel` | 79 | 89784 | 27, 79, 0 |
| `files/module/st_dxonett.rel` | 78 | 70568 | 27, 78, 0 |
| `files/module/st_dxpstadium.rel` | 83 | 25904 | 27, 83, 0 |
| `files/module/st_dxrcruise.rel` | 80 | 24328 | 27, 80, 0 |
| `files/module/st_dxshrine.rel` | 75 | 13232 | 27, 75, 0 |
| `files/module/st_dxyorster.rel` | 76 | 62768 | 27, 76, 0 |
| `files/module/st_dxzebes.rel` | 84 | 30208 | 27, 84, 0 |
| `files/module/st_earth.rel` | 66 | 138704 | 27, 66, 0 |
| `files/module/st_emblem.rel` | 64 | 23704 | 27, 64, 0 |
| `files/module/st_famicom.rel` | 68 | 130424 | 27, 68, 0 |
| `files/module/st_final.rel` | 45 | 14232 | 27, 45, 0 |
| `files/module/st_fzero.rel` | 61 | 109360 | 27, 61, 0 |
| `files/module/st_greenhill.rel` | 72 | 100672 | 27, 72, 0 |
| `files/module/st_gw.rel` | 63 | 175152 | 27, 63, 0 |
| `files/module/st_halberd.rel` | 57 | 124592 | 27, 57, 0 |
| `files/module/st_heal.rel` | 87 | 14312 | 27, 87, 0 |
| `files/module/st_homerun.rel` | 88 | 68656 | 27, 88, 0 |
| `files/module/st_ice.rel` | 62 | 134880 | 27, 62, 0 |
| `files/module/st_jungle.rel` | 51 | 199008 | 27, 51, 0 |
| `files/module/st_kart.rel` | 49 | 88312 | 27, 49, 0 |
| `files/module/st_madein.rel` | 65 | 48072 | 27, 65, 0 |
| `files/module/st_mansion.rel` | 47 | 95752 | 27, 47, 0 |
| `files/module/st_mariopast.rel` | 48 | 96408 | 27, 48, 0 |
| `files/module/st_metalgear.rel` | 71 | 119168 | 27, 71, 0 |
| `files/module/st_newpork.rel` | 69 | 27944 | 27, 69, 0 |
| `files/module/st_norfair.rel` | 54 | 122616 | 27, 54, 0 |
| `files/module/st_oldin.rel` | 53 | 32744 | 27, 53, 0 |
| `files/module/st_orpheon.rel` | 55 | 22848 | 27, 55, 0 |
| `files/module/st_otrain.rel` | 86 | 12144 | 27, 86, 0 |
| `files/module/st_palutena.rel` | 67 | 95664 | 27, 67, 0 |
| `files/module/st_pictchat.rel` | 73 | 137624 | 27, 73, 0 |
| `files/module/st_pirates.rel` | 52 | 145584 | 27, 52, 0 |
| `files/module/st_plankton.rel` | 74 | 97752 | 27, 74, 0 |
| `files/module/st_stadium.rel` | 59 | 29528 | 27, 59, 0 |
| `files/module/st_stageedit.rel` | 85 | 36696 | 27, 85, 0 |
| `files/module/st_starfox.rel` | 58 | 23856 | 27, 58, 0 |
| `files/module/st_tbreak.rel` | 89 | 23744 | 27, 89, 0 |
| `files/module/st_tengan.rel` | 60 | 57504 | 27, 60, 0 |
| `files/module/st_village.rel` | 70 | 113112 | 27, 70, 0 |

## menu (24)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `files/module/sora_menu_boot.rel` | 22 | 19776 | 22, 0 |
| `files/module/sora_menu_challenger.rel` | 23 | 10488 | 23, 0 |
| `files/module/sora_menu_collect_viewer.rel` | 6 | 73848 | 16, 6, 0 |
| `files/module/sora_menu_edit.rel` | 5 | 113480 | 1, 6, 16, 5, 0 |
| `files/module/sora_menu_event.rel` | 9 | 25624 | 1, 16, 9, 0 |
| `files/module/sora_menu_fig_get_demo.rel` | 26 | 14536 | 27, 26, 0 |
| `files/module/sora_menu_friend_list.rel` | 14 | 60264 | 16, 14, 0 |
| `files/module/sora_menu_game_over.rel` | 12 | 13928 | 1, 12, 0 |
| `files/module/sora_menu_intro.rel` | 13 | 16816 | 13, 0 |
| `files/module/sora_menu_main.rel` | 2 | 361112 | 1, 11, 16, 18, 27, 2, 0 |
| `files/module/sora_menu_name.rel` | 16 | 64928 | 16, 0 |
| `files/module/sora_menu_qm.rel` | 4 | 57480 | 3, 16, 18, 4, 0 |
| `files/module/sora_menu_replay.rel` | 7 | 17512 | 1, 6, 7, 0 |
| `files/module/sora_menu_rule.rel` | 18 | 61272 | 1, 18, 0 |
| `files/module/sora_menu_sel_char.rel` | 10 | 157136 | 1, 16, 17, 18, 10, 0 |
| `files/module/sora_menu_sel_char_access.rel` | 17 | 6968 | 17, 0 |
| `files/module/sora_menu_sel_stage.rel` | 11 | 53712 | 11, 0 |
| `files/module/sora_menu_simple_ending.rel` | 19 | 14480 | 19, 0 |
| `files/module/sora_menu_snap_shot.rel` | 8 | 12640 | 1, 6, 8, 0 |
| `files/module/sora_menu_time_result.rel` | 21 | 12152 | 21, 0 |
| `files/module/sora_menu_title.rel` | 24 | 28416 | 24, 0 |
| `files/module/sora_menu_title_sunset.rel` | 25 | 30064 | 25, 0 |
| `files/module/sora_menu_tour.rel` | 3 | 120976 | 16, 18, 3, 0 |
| `files/module/sora_menu_watch.rel` | 15 | 33808 | 1, 27, 15, 0 |

## adventure (14)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `files/module/sora_adv_menu_difficulty.rel` | 32 | 12104 | 32, 0 |
| `files/module/sora_adv_menu_ending.rel` | 37 | 15624 | 37, 0 |
| `files/module/sora_adv_menu_game_over.rel` | 33 | 26616 | 1, 27, 33, 0 |
| `files/module/sora_adv_menu_name.rel` | 28 | 24696 | 28, 0 |
| `files/module/sora_adv_menu_result.rel` | 34 | 15240 | 1, 27, 34, 0 |
| `files/module/sora_adv_menu_save_load.rel` | 35 | 6824 | 35, 0 |
| `files/module/sora_adv_menu_save_point.rel` | 39 | 6824 | 39, 0 |
| `files/module/sora_adv_menu_seal.rel` | 36 | 6824 | 36, 0 |
| `files/module/sora_adv_menu_sel_char.rel` | 30 | 6824 | 30, 0 |
| `files/module/sora_adv_menu_sel_map.rel` | 31 | 30264 | 1, 31, 0 |
| `files/module/sora_adv_menu_telop.rel` | 38 | 9616 | 38, 0 |
| `files/module/sora_adv_menu_visual.rel` | 29 | 21760 | 29, 0 |
| `files/module/sora_adv_stage.rel` | 40 | 537616 | 1, 27, 41, 40, 0 |
| `files/module/sora_enemy.rel` | 41 | 784104 | 27, 41, 0 |

## scene/core (3)

| Original path | Module ID | Bytes | Imports |
|---|---:|---:|---|
| `files/module/sora_melee.rel` | 27 | 5877568 | 1, 5, 40, 41, 110, 27, 0 |
| `files/module/sora_minigame.rel` | 20 | 85376 | 27, 20, 0 |
| `files/module/sora_scene.rel` | 1 | 400648 | 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 37, 38, 40, 1, 0 |

