# Fighter-count limits - read-only roadmap

RSBE01_01, 2026-09-30. There is no demonstrated single universal `MAX_FIGHTERS = 4` switch. The examined paths distinguish player records, entry/slot capacity, per-entry fighter instances, physical controllers and network peers. Increasing one can leave the others inconsistent.

Address notation: DOL addresses are absolute virtual addresses. `sora_melee .text:+offset` and `.bss:+offset` are **REL section offsets**, not fixed runtime addresses. This REL has module ID 27; .text is section 1, .rodata 4, .data 5, .bss 6. Actual runtime addresses require the module's loaded section bases. Findings are paraphrased; no target disassembly is included.

## Binary-confirmed paths

| System | Address / evidence | Constraint and implication |
|---|---|---|
| Manager initialization | `sora_melee .text:+0x1081D4`; call argument at +0x108938 and +0x108958 | Allocates slot manager (0x540-byte object) and entry manager (0x50-byte object), passing **9** to both constructors. This is internal capacity, not proof that nine human players can join a normal match. |
| Entry allocation | `.text:+0x118E70` | Entry-manager constructor stores caller-supplied count at +4, allocates that many 0x244-byte ftEntry records plus array overhead. Its in-object list starts at +8. Community header's nine-element vector agrees with normal initialization. |
| Entry admission/search | `.text:+0x119124`, selection at +0x119144-+0x119154 | An input flag chooses a scan starting at index 0 or **4**, then scans to stored capacity; free-state byte at entry +0xF is compared with 7. This partitions a primary four-entry prefix from an additional pool; it does not itself enforce a four-entry end bound. Exact flag semantics remain unnamed. |
| Entry ID lookup | `.text:+0x1190D0`, +0x1190DC / +0x1190E0; `getEntity` +0x119110 | Validity checks reject -1, compare low-eight-bit index with stored count, and check full generated ID. getEntity indexes 0x244-byte records using low eight bits, without its own bounds check. Widening capacities must preserve ID/generation rules or replace them deliberately. |
| Entry count / fighter instances | `getEntryCount` +0x10B1D0; `getFighter` +0x10A50C | Count goes through entry-manager list vtable +0x14. Fighter lookup uses eight-byte instance stride and pointer at entry +0x34; -1 selects the active instance index at +0xA. This is a different count domain from players. |
| Slot initialization and resources | `.text:+0x120E30`; threshold at +0x121138 | Caller count is stored at +4; loop traverses that count, using 0x4D4-byte slot stride. **Indices below 4** receive table-derived configuration; later indices receive alternate/default values. Important resource bottleneck even though nine slots exist. |
| Four heap mappings | `sora_melee .rodata:+0xFC8`, +0xFD8, +0xFF8, used by slot constructor | Four-entry tables correspond to fighter instance heap IDs 0x1B-0x1E, resource IDs 0x12-0x15 and secondary resource IDs 0x16-0x19. The separate +0xFE8 table is not identified as a heap table here. Increasing slots needs corresponding resource ownership, not just larger allocation. |
| Wii controller loop | DOL `updateLowWii` 0x80029750; loop bound at **0x80029E8C** | Reads four Wii controller channels. `updateSystem` 0x8002A210 has four/eight handling boundaries at 0x8002A4A0 and 0x8002A4D0. Eight physical input records cover two controller families; they do not establish eight independent players. |
| Input global | DOL **0x805A0040**, `g_gfPadSystem` | Pointer to controller state; useful runtime watchpoint. GC input path is `updateLowGC` 0x80029578; game input update is 0x8002A4F8. Input indices, masks and merged-controller sentinel 0xF0 need separate audit. |
| Network peer rejection | DOL `NtSend::pushback` **0x8013D6C0**; threshold at **0x8013D708** | After membership-bitmap checking, peer/AID values >=4 return -1. This is an explicit four-peer send-path limit. Peers, consoles and fighters are not interchangeable. |
| Network storage | DOL `NtSend::create` 0x8013D490; globals **0x805A0388** (sender), **0x805A040C** (AID bitmap) | Queue capacity is 64 packets, with 0xC-byte descriptors and 0x384-byte backing packet slots; queue mask 0x3F and fullness threshold 0x3E. Packet payload limit is 0x37E plus timestamp/alignment. Queue length is not player count. A 32-bit peer bitmap cannot represent arbitrarily many peers. |
| Four network records | DOL **0x8049EB68**, `g_NtBlockArray`, size 0x20 | Source defines four 8-byte records, agreeing with symbol size. Record semantics remain unknown; do not assume they are fighter simulation states. |
| Heap addressing | DOL `getHeap` **0x800249CC**, `alloc` 0x800249E4; **0x80494958** (`g_HeapInfos`) | Heap records are indexed with 16-byte stride and pool pointer at +4. `createHeap` 0x80024544 and `getMaxFreeSize` 0x80024A34 are budget/profiling entry points. Existing allocation budgets were not measured; extra fighters require resource, instance, effects and render budgets. |

Entry/slot globals are REL-relative: `g_ftManager` .bss:+0x2E68, `g_ftEntryManager` +0x2E88, `g_ftSlotManager` +0x2E90. Manager methods above therefore reside in sora_melee, not main.dol. `getFighter` accesses the entry-manager pointer at manager +0x154; initialization stores the slot manager at +0x158.

## Header evidence requiring further binary validation

Local BrawlHeaders contains custom/mod fields, so declarations alone do not prove retail bounds. The following are useful audit leads:

- `gm/gm_lib.h`: MAX_PLAYERS is **7**. `gmGlobalModeMelee` declares seven 0x5C-byte player records at +0x98 and total size 0x320. Its setup record has a three-bit player-count field. Runtime watch chain: DOL `g_GameGlobal` pointer at **0x805A00E0**, GameGlobal +8 -> modeMelee, then +0x98 -> player records. Confirm constructors and indexing loops before treating all seven as joinable slots.
- Selection/result records and stage player loaders also use MAX_PLAYERS; `g_stLoaderManager` is sora_melee .bss:+0x5910. HUD IfMngr declares seven player pointers; its global pointer slot is DOL **0x805A02D0**. These differ from the four-controller limit.
- `ftEntry` declares **four Instance records**, each containing kind plus Fighter pointer. These are per-entry instances/forms, not four players. Binary lookup stride agrees; every producer's instance bound still needs auditing.
- `gfPadSystem` declares four GC and four Wii records for each low/debug/game/menu family, plus merged records and eight motor masks. Its declared size is 0xB78. Replay/input-switch conversion must preserve the distinction between physical ports and logical players.
- Heap enum also has four fighter-overlay IDs 0x35-0x38. Overlay lifetime and actual loader use need tracing. Header declares 0x47 HeapInfo entries, but symbol envelope is 0x488 bytes, not exactly 0x47 times the verified 16-byte stride: do not infer precise table capacity from that envelope.
- Network global at **0x8049EBE0** has a 0x50-byte symbol envelope; the community Network declaration is 0x40. Packet/session/receive and replay layouts remain incomplete. No working expanded netplay or rollback protocol is established by this research.

## Roadmap and remaining gaps

1. Trace normal versus additional entry admission from +0x119124 back to match initialization; recover flag meanings, player-count checks and reservations. Audit seven-player setup/selection/result/HUD indexing and special modes. **The complete active-player admission ceiling is not recovered yet.**
2. Recover slot configuration tables, port-to-player mappings, overlay ownership and heap creation sizes. Separate logical player IDs from hardware port IDs; test extra CPU entries before extra human players.
3. Audit simulation loops, collision pair lists, target masks, stage spawn tables, cameras, HUD and replay formats. A literal 4 can mean players, forms, channels or vector dimensions; change only classified bounds. Paired fighters and transformation instances must remain distinct from entry count.
4. For a future portable fork, keep the matching reference build intact and introduce configurable capacities with explicit player/entry/instance/peer types. Measure memory and frame-time growth. Browser/native portability also needs platform and graphics replacement; matching PowerPC code alone does not supply that.
5. Treat larger **lobbies/spectator rooms** as a separate service capacity from larger **simultaneous matches**. Expanded matches need a specified simulation/network protocol, stable serialization and replay compatibility; the four-peer AID path and fixed queue cannot simply be widened to promise a 128-fighter match.

Evidence sources: RSBE01_01 main and sora_melee symbol tables; generated assembly inspected locally; `src/sora/nt/nt_send.cpp`, `nt_report.cpp`; local nt headers; BrawlHeaders gm/ft/gf/if/st/sr declarations. Original instructions, binaries, disassembly and raw asset data remain outside this report. This is an initial dependency trace with explicit gaps, not an exhaustive proof that every fighter-count bound has been found.
