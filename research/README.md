# Brawl research handoff

For the current implementation checkpoint, read [CODEX_RESUME.md](CODEX_RESUME.md) and [CLAUDE_STATUS.md](CLAUDE_STATUS.md). The user authorized Codex to implement directly; Codex has now added the fully source-linked telop TU and verified a fresh build against all 127 originals. The initial research-only status below is historical.

Start with [IMPLEMENTATION_SPEC.md](IMPLEMENTATION_SPEC.md), then give Claude [CLAUDE_HANDOFF.md](CLAUDE_HANDOFF.md). [BINARY_CATALOG.md](BINARY_CATALOG.md) lists the actual gameplay executables.

[FUTURE_PORT_ROADMAP.md](FUTURE_PORT_ROADMAP.md) records the desktop/browser, larger-lobby and custom-character direction, including the Halo reference and updated user-reported implementation progress.

Local target: **RSBE01_01**, USA revision 1. All 126 RELs match the pinned upstream revision-2 checksum manifest; main.dol differs. All 127 gameplay executable files match between the supplied ISO and RVZ.

- `reports/binary-manifest.json`: complete measured target metadata and hashes.
- `reports/binary-catalog.csv`: the same inventory as a table.
- `reports/*disc-info.txt`: observed image identity and partition maps.
- `reports/dol-info.txt`: analyzed DOL sections and discovered symbols.
- `evidence/nonmatching/archived_layout/target-packets/`: five assembly targets for initial matching tasks.
- `reports/analysis-config.yml`: configuration used for initial automatic analysis.
- `analysis/`: generated target objects, disassembly, linker control and analysis metadata.
- `local/`: extracted original binaries from each local image.
- `tools/dtk.exe`: official dtk 1.8.4 executable used for research.
- `upstream/`: pinned Brawl source/configuration references and supplementary toolkit docs.

No game implementation or executable project harness was written. No matching-source build or native port has been validated. Keep this research tree private: `local/`, `analysis/` and assembly target packets contain original game bytes or disassembly.
