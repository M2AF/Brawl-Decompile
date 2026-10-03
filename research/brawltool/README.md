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
| Open ObjDiff (window only) | launches ObjDiff for the active Brawl checkout; opens the official releases page if it is not installed | no |
| Independent check / `check` | `verify_manifest --orig --dtk`, the verifier tests, and the original `main.dol` hash | no |
| Status page / `status` | regenerates `research/status/brawl_status.html` and opens it | the page |
| Rank candidates / `rank` | smallest remaining extracted text chunks (`--exclude`, `--min`, `--top`) | no |
| New split… / `split` | adds a `splits.txt` entry, an `Object(NonMatching, ...)` and an optional `force_active` entry for a new TU | config + empty source stub |
| m2c draft / `draft` | m2c's PowerPC C draft of a split unit, saved privately in `research/evidence/nonmatching/tool_drafts/<checkout>/` (machine output, not source) | draft file |
| TU dropdown (window only) | picks Module + Unit for you. Order: our in-progress TUs, upstream in-progress, our matched, upstream matched ("ours" = file added since upstream f168bd9) | no |
| Diff / `diff` | compiles the candidate and compares functions and data sections with the extracted target | no |
| `errors <unit>` (CLI) | compiles one unit with up to 30 diagnostics at once (the build stops at 1) and prints them compactly | no |
| `variants <module> <unit> <spec.py> -f <fn>` (CLI) | applies each `VARIANTS = [(name, [(old, new)...])]` edit to the real source, ranks by diff lines in `fn`, always restores the file | no |
| Probe full REL / `probe` | links the module with the unit from source and checks it is byte-identical to the original | no |
| `review` (CLI) | compiles, saves verbose diagnostic diffs and full-REL probe, command lines and input SHA256s privately; never promotes | private evidence + journal note |
| Promote… / `promote` | probe, set MatchingFor + allowlist, build 127/127, independent check, re-probe; **rolls back** if any gate fails; optional commit | config (+ commit) |
| Integrate / `integrate` | cherry-picks a Codex branch's new commits, auto-resolves docs/allowlist conflicts by keeping both sides, then a clean rebuild, independent check and probes | commits on main |
| Clean up worktree / `cleanup` | removes an integrated Codex worktree after safety checks (clean, integrated, no links, originals unchanged); keeps the branch | deletes that worktree |

Notes:
- `promote` and `integrate` append entries to the agent-handoff journal (`research/HANDOFF_LOG.md`) as agent `tool`.
- After a promotion, still add the `docs/RSBE01_01.md` entry (techniques and UB review). Commit messages from the tool
  carry no AI attribution.
- Nothing is ever pushed. The original game files are only read; their hash is checked.
- m2c is pinned at `research/tools/m2c` (commit 708d2d2).

## Status split proposals

`status-splits <module> [--prefix ftX]` imports the canonical `research/claude_tools/mk_status_splits.py` helper to propose status translation-unit ranges from generated assembly and print its review warnings. Add `--write-copy` to append proposals to an ignored copy under `research/brawltool/review/status_splits/`; the real Brawl `splits.txt` is never edited.

`apply-status-splits <module> --prefix ftX` applies proposals to both revision `splits.txt` files and adds `Object(NonMatching, ...)` entries with `cflags_fighter` in `configure.py`. It refuses duplicate units or missing anchors. Review all WARN lines first; this command writes the selected checkout's configs.

## Status symbol renames

`rename-status <module> --status <ClassName> <dtor> <vtable> <rtti> <sinit> <ctor> <instance> <unit> [old=method[:suffix] ...]` applies the standard status-class names to both `RSBE01_01` and `RSBE01_02` symbol files. All symbols in both files are validated before either is written; full mangled method names pass through unchanged.

## Local timings

BrawlTool records wall time and outcome for `build`, `diff`, `probe`, `promote`, `variants`, and `errors` in the ignored local file `research/brawltool/metrics/timings.csv`. Run `brawltool metrics` to see sample count, mean, median, maximum, and failures by command. Nested operations are recorded individually, so a promotion may also contribute build and probe samples.

`variants -f` requires an exact target or paired candidate function name. A
missing name aborts the baseline before trying edits; it cannot report a
zero-difference score for a function it did not find. Original source bytes,
including CRLF line endings, are restored on success or failure. Function
scores remain diagnostics; full-REL review is the gate.

## Isolated worktrees (Codex parallel work)

Use **--repo before the command**; it applies to configure, Ninja, objects,
config files and Git operations. The checkout root and current branch print
before anything runs. A missing/invalid root fails; there is no fallback to main.
Alternatively set BRAWLTOOL_REPO for the CLI process. Without either, the
existing default remains `brawl` on rsbe01_01-support. Do not use that default
while another agent owns main. Worktree setup/original copies remain manual.

From the research directory in PowerShell:
```
./brawltool-cli.bat --repo '../brawl-codex4' build
./brawltool-cli.bat --repo '../brawl-codex4' check
./brawltool-cli.bat --repo '../brawl-codex4' rank --top 10
./brawltool-cli.bat --repo '../brawl-codex4' review st_oldin mo_stage/st_oldin/st_oldin
```

`review` runs once on this PC, writes logs and summary.json under
`evidence/nonmatching/<module>/<checkout>/<unit>_<timestamp>/`, and returns 1
for a nonmatching source REL, 2 for a tool/precondition error, 0 for a full
source REL byte match. Logs may contain target assembly; keep them private.
The summary includes checkout/HEAD/branch, current config state, errors and
hashes of source, shadow headers, config, objects and RELs. A review is not
promotion or 127/127 verification; run `build` + `check` for those gates.
The normalized instruction count does not establish branch/relocation or BSS
identity. Failed objdump or empty input cannot report a diagnostic match.

In isolated worktrees, integrate, cleanup and autopilot are disabled (including
autopilot dry-run). They cannot claim the main lease. Journal writes become only
`note` entries as Codex tagged `codex-parallel`, never main's verified state.
`status` leaves the shared main HTML unchanged. Promotion still requires all
existing gates; its optional broad auto-commit is disabled in worktrees.
On gate failure, configure/allowlist rollback restores the exact preexisting
file bytes, including uncommitted edits. Commit explicit files manually.
Build --clean rejects a cache path that resolves outside the selected checkout.
No GUI controls were changed; these new examples are CLI workflows.
