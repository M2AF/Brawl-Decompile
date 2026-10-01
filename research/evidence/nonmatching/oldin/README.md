# Oldin parked NonMatching draft

All draft bodies compile. 41/53 instruction diagnostics; NOT 41 byte-matched
functions. Twelve remaining diffs include structural differences. No source TU
promotion. Source REL 34160 bytes differs from original 32744 bytes. Normal
fallback and independent original-byte verification pass 127/127; ten tests pass.

Reproduce from brawl-codex4 on codex/stages:
```
../.venv/Scripts/python.exe configure.py --version RSBE01_01
../.venv/Scripts/ninja.exe
../.venv/Scripts/python.exe ../research/claude_tools/probe_source_rel.py st_oldin mo_stage/st_oldin/st_oldin
../.venv/Scripts/python.exe ../research/evidence/nonmatching/oldin/compare.py st_oldin
```
Probe must fail until remaining code/data/relocation differences are resolved.
Diagnostics normalize branch addresses/relocations and are not acceptance.
unimplemented.json is the historical inventory, updated with current status.
recover_data.py is a one-shot developmental experiment against the earlier
single-pool layout: DO NOT RUN against the final two-pool source. m2c's draft
fails on cror and infers incorrect ABI types; use only the hand-reviewed source.
See best.cpp/best.h, checkpoint hashes, compile_commands.txt, final_diff.txt,
final_probe.log, final_build.log, independent_check.log and verifier_tests.log.
Original class of four 0x84-byte objects remains unproven; preserve lifetimes.
No permuter or broad flag sweep. Never share target disassembly from this folder.
