# New Pork accepted source TU — 2026-10-01

All 29 target functions and owned data/relocations match. Normal source build
and independent --orig --dtk manifest comparison both passed 127/127.
10 verifier tests passed. No permuter, flag sweep or assembly implementation.
Whole REL is 27944 bytes, SHA-1 10254ec9bf1766222a2a44b73adead39e46c3b4b.

Source shape that matched:
- Four writable event banks (26,34,2,36 records), separately declared.
- setSoundInfo default Vec2f argument. Explicit constructor arguments changed
  the temporary slot layout; default arguments recover it with normal lifetimes.
- Per-member sound pointer reloads; Effect_Info::set cached a pointer instead.
- m_isShieldable unsigned 1-bit storage type; existing source objects recompiled
  and all outputs verified. Sphere bit is m_shapeType, not m_isDeath100.
- Shared stage weak setters/RTTI renamed. Array symbols split/named in config.

Earlier *_diff.txt files are historical rejected attempts, NOT current state.
Full source probe: ../research/claude_tools/probe_source_rel.py st_newpork
mo_stage/st_newpork/gr_newpork (run from brawl).
Final normal build: source_build.log. Current TU is source-linked; stage is extracted.
