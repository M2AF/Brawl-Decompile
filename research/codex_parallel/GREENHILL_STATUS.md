# codex-parallel: Green Hill completed, ready for later integration

- Worktree: `C:\Users\balla\Documents\Brawl Decompile\brawl-greenhill`.
- Branch: `codex/st_greenhill`; base `eeca868`; local commit `3fc4040`.
- Worktree clean. No push, merge or rebase. Main checkout files were not edited;
  Claude's lease was never claimed, extended or released by Codex.
- Candidate #8 is fully source-linked: `mo_stage/st_greenhill/st_greenhill.cpp`,
  57 functions / 4,280 text bytes, all owned data and relocations. No outstanding
  function-only matches or near-misses; no permuter/flag sweeps.
- Full REL byte identity: 100,672 bytes, SHA-1
  `1b1bd2e86ff46d41bad1263cde6bb056fe0bd448`.
- Baseline, promoted stamp-removed build and independent manifest verification:
  `OK: 127/127 binaries verified`. Post-promotion source probe also passes.
- Branch-only totals: 188 source-linked TUs; 520/4409 instances,
  DOL 65/1722, REL 455/2687. Do not overwrite Claude/main totals with these.
- Green Hill has no stMadeinStaticPair pair: the static initializer registers
  only class info. Claude's exact pair definition was read, not duplicated.
- Matching/lifetime details are in this branch's `docs/RSBE01_01.md`.
  Matrix(true) suppresses redundant initialization; the final break-ground
  pointer is declared first for allocation; clamp keeps an integer intermediate
  with byte comparisons. No undefined alias/lifetime trick was introduced.
- Private target asm and all comparison/probe logs live only in
  `research/evidence/nonmatching/greenhill/`. Do not upload this directory.
- Adapted odiff/fdiff helpers use the current worktree, not the main checkout.
  Generated build directories, originals and copied tool/submodule metadata
  are ignored; none are committed. All 128 copied original files were compared
  to the main originals again after verification and are identical.

## Integration status and next action

The final live status at 14:04 shows owner none: Claude completed st_heal at
main commit 6cb6eb8 and released its lease. This supersedes the earlier active
lease observation; Codex did not release it. The requested isolation remains:
no rebase or integration was performed. The integrating agent should inspect
current main state/lease, rebase `codex/st_greenhill` onto the current support
branch, resolve configure.py/verified_objects.txt/docs/config.yml conflicts,
keep both agents' additions and rename/split ownership intact, then rerun
configure, remove build/RSBE01_01/ok and require 127/127. Also rerun the Green
Hill source probe. Update main PROJECT_STATE and its totals only at that point.
No automatic integration was performed here.

## Reproduction (from brawl-greenhill)

```
../.venv/Scripts/python.exe configure.py --version RSBE01_01
Remove-Item -LiteralPath build/RSBE01_01/ok -ErrorAction SilentlyContinue
../.venv/Scripts/ninja.exe
../.venv/Scripts/python.exe ../research/claude_tools/probe_source_rel.py st_greenhill mo_stage/st_greenhill/st_greenhill
../.venv/Scripts/python.exe tools/verify_manifest.py config/RSBE01_01/binary-manifest.json --sha1-file config/RSBE01_01/build.sha1 --orig --dtk build/tools/dtk.exe
```
