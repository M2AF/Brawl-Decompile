# BrawlTool isolated-worktree support (Codex, 2026-10-01)

Installed in the existing private research/brawltool folder; not a proposal.
No dependency additions, background services, main code edits or pushes.

Changed common.py, cli.py, ops.py, README.md; added test_worktree.py.
Existing GUI controls unchanged; GUI import smoke test passed without a window.
Original tool files backed up in evidence/nonmatching/brawltool_before_worktree_support/.

## Use

From research/:
```
./brawltool-cli.bat --repo '../brawl-codex4' build
./brawltool-cli.bat --repo '../brawl-codex4' check
./brawltool-cli.bat --repo '../brawl-codex4' review st_oldin mo_stage/st_oldin/st_oldin
```
Use --repo before the command, or BRAWLTOOL_REPO for the CLI process. No explicit
selection still defaults to main, preserving the existing launcher behavior.
Invalid roots fail, never silently fall back. Review logs, compile commands,
errors and source/config/header/object/REL SHA256s live only in private evidence.
This runs the repetitive compile/diff/probe work locally; the agent reads the
summary and spends reasoning on actual source mismatches. No credit saving
percentage claimed. Does not automatically write C++, permute or promote.

Worktrees cannot integrate, cleanup or run autopilot, including dry-run. They
cannot claim the main lease. Tool journal writes are only Codex notes tagged
codex-parallel, with no verified-board update. Shared main status HTML remains
unchanged. Broad auto-commit is disabled for worktree promotion. Explicit manual
promotion still has every original gate. Rollback preserves existing dirty file
bytes rather than checking out whole files from HEAD. Linked cache/config/source
roots outside the selected checkout are rejected. No merge/rebase/push added.

## Verification

- Python compileall passed; 12 stdlib tests pass (ResourceWarnings fatal).
- Tests cover checkout routing, invalid/subdirectory roots, traversal, worktree
  operation/journal restrictions, failed/missing/empty objdump, nested-template
  symbol normalization, nonzero probe rejection, dirty-file rollback and failed
  compile evidence. An empty 0/0 result cannot pass diagnostics.
- Actual bat launcher worktree build + independent original-byte check:127/127;
  ten existing verifier tests pass. Main/worktree Git clean afterward.
- Actual local review st_heal: source REL byte-identical; latest diagnostic41/41.
- Actual local review st_tbreak:56/58 diagnostics, full REL rejected (expected).
- Actual local review st_oldin:41/53 diagnostics, full REL rejected (expected).
- Invalid root and forbidden worktree integrate/autopilot exit2 before edits.
- Compiler diagnostics normalize branch targets and skip relocation names;
  raw section dumps do not cover BSS size. Full source REL remains the gate.

Private real-run artifacts:
evidence/nonmatching/{st_heal,st_tbreak,st_oldin}/brawl-codex4/ (timestamped).
Build/check/test logs in the tool backup folder. Never publish those logs;
review.log can contain target instructions. No jobs left running.

## Next

Claude can use the same commands on its owned checkout; Codex always specifies
an isolated worktree. Manual integration of a3c9ef6 and91b5438 remains the lease
owner's decision; both stage bodies stay NonMatching. Optional fresh candidate
chunk ranking: NEXT_STAGE_QUEUE.md. Recover TU boundaries before choosing.
