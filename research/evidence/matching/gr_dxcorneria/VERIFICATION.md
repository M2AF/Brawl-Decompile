# Corneria ground tail verification

Normal source build: `python configure.py --version RSBE01_01`, remove only
`build/RSBE01_01/ok`, then `ninja` using the workspace venv.
Result: OK: 127/127 binaries verified.
Independent original comparison:
`python tools/verify_manifest.py config/RSBE01_01/binary-manifest.json --sha1-file config/RSBE01_01/build.sha1 --orig --dtk build/tools/dtk.exe`
Result: OK: 127/127 binaries verified.
Verifier failure-path tests: 10 passed.

Pre-promotion source probe lives in the ignored build directory
`build/RSBE01_01/codex_corneria_probe`. Its response file substitutes the
compiled ground source object for the extracted ground object in the normal
stage link. Use the normal `rel make` input list (main ELF plus all module PLFs)
and `config/RSBE01_01/config.yml`, replacing only the Corneria PLF with the
probe PLF. Do not use `--names` as a module filter; it overrides positional
input names. The full probe REL was identical to the original (34,344 bytes,
SHA-1 25c690f6087997c46e791bf8d4365a38a22d9dc1).

All 21 target functions are included. Extra source weak `setStageData` and
`gfTask` RTTI/string copies deduplicate against extracted stage definitions.
The reflection callback needed __restrict to reproduce load/store scheduling.
No unresolved near-misses, no permuter, no flag sweep. Disassembly stays private.
