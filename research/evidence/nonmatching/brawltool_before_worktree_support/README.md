# BrawlTool

These are local helpers for the RSBE01_01 matching decomp. They do the build, check and bookkeeping steps, so AI
sessions only need to handle the actual matching.

- **Window:** double-click `research/BrawlTool.bat`.
- **Command line:** `research/brawltool-cli.bat <command> ...`, or `python -m brawltool <command>` run from `research/`.

| Button / command | What it does | Changes files? |
|---|---|---|
| **Run autopilot** / `autopilot` | the routine loop in order: claim lease → build 127/127 → integrate Codex branches with new commits → diff+probe our in-progress TUs and promote+commit any that now match → status page → summary + journal → release lease. Stops if another agent holds the lease. `--dry-run` (Plan button), `--no-integrate`, `--no-promote` | commits on main |
| Build & verify / `build` | configure, remove the stamp, run ninja; must print `OK: 127/127` | build output only |
| Clean rebuild / `build --clean` | same, after clearing the compiled-source cache (use after adding or shadowing headers) | build output only |
| Independent check / `check` | `verify_manifest --orig --dtk`, the verifier tests, and the original `main.dol` hash | no |
| Status page / `status` | regenerates `research/status/brawl_status.html` and opens it | the page |
| Rank candidates / `rank` | smallest remaining extracted text chunks (`--exclude`, `--min`, `--top`) | no |
| New split… / `split` | adds a `splits.txt` entry, an `Object(NonMatching, ...)` and an optional `force_active` entry for a new TU | config + empty source stub |
| m2c draft / `draft` | m2c's PowerPC C draft of a split unit, saved to `research/drafts/` (machine output, not source) | draft file |
| TU dropdown (window only) | picks Module + Unit for you. Order: our in-progress TUs, upstream in-progress, our matched, upstream matched ("ours" = file added since upstream f168bd9) | no |
| Diff / `diff` | compiles the candidate and compares functions and data sections with the extracted target | no |
| Probe full REL / `probe` | links the module with the unit from source and checks it is byte-identical to the original | no |
| Promote… / `promote` | probe, set MatchingFor + allowlist, build 127/127, independent check, re-probe; **rolls back** if any gate fails; optional commit | config (+ commit) |
| Integrate / `integrate` | cherry-picks a Codex branch's new commits, auto-resolves docs/allowlist conflicts by keeping both sides, then a clean rebuild, independent check and probes | commits on main |
| Clean up worktree / `cleanup` | removes an integrated Codex worktree after safety checks (clean, integrated, no links, originals unchanged); keeps the branch | deletes that worktree |

Notes:
- `promote` and `integrate` append entries to the agent-handoff journal (`research/HANDOFF_LOG.md`) as agent `tool`.
- After a promotion, still add the `docs/RSBE01_01.md` entry (techniques and UB review). Commit messages from the tool
  carry no AI attribution.
- Nothing is ever pushed. The original game files are only read; their hash is checked.
- m2c is pinned at `research/tools/m2c` (commit 708d2d2).
