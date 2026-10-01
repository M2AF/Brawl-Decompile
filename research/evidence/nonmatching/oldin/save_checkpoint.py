"""Freeze the current Oldin draft and commands; run from the isolated checkout."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

root = Path.cwd().resolve()
assert root.name == 'brawl-codex4'
dest = root.parent / 'research/evidence/nonmatching/oldin'
unit = 'mo_stage/st_oldin/st_oldin'
inputs = ['src/' + unit + '.cpp', 'include/st_oldin/st_oldin.h',
          'include/st_oldin/gr_oldin.h', 'config/RSBE01_01/rels/st_oldin/splits.txt',
          'config/RSBE01_01/rels/st_oldin/symbols.txt', 'config/RSBE01_01/symbols.txt']
for name, target in [(inputs[0], 'best.cpp'), (inputs[1], 'best.h')]:
    shutil.copy2(root / name, dest / target)
candidate = root / ('build/RSBE01_01/src/' + unit + '.o')
cmd = [str(root.parent / '.venv/Scripts/ninja.exe'), '-t', 'commands', str(candidate.relative_to(root))]
out = subprocess.run(cmd, cwd=root, capture_output=True, text=True, check=True).stdout
(dest / 'compile_commands.txt').write_text(out, encoding='utf-8')
records = json.loads((dest / 'unimplemented.json').read_text())
for r in records:
    r['status'] = 'implemented draft; NonMatching'
    r['calls'] = [x.replace('getFrameCount__16gfModelAnimationFd', 'getFrameCount__16gfModelAnimationFv')
                    .replace('setFrame__16gfModelAnimationFd', 'setFrame__16gfModelAnimationFf')
                    .replace('getFrame__16gfModelAnimationFd', 'getFrame__16gfModelAnimationFv') for x in r['calls']]
(dest / 'unimplemented.json').write_text(json.dumps(records, indent=2) + '\n')
paths = inputs + [str(candidate.relative_to(root))]
manifest = {p: hashlib.sha256((root / p).read_bytes()).hexdigest() for p in paths}
(dest / 'checkpoint.json').write_text(json.dumps({'root': str(root), 'branch': 'codex/stages',
    'instruction_diagnostics': '41/53; not byte/relocation acceptance',
    'source_linked_additions': 0, 'full_rel_match': False,
    'original_sha1': '905f78be9ff518c881f446ef8c9d667252db0782',
    'source_rel_sha1': '89eb72deac66fa49957ac9e65161b681747c4143',
    'sha256': manifest}, indent=2) + '\n')
(dest / 'README.md').write_text('''# Oldin parked NonMatching draft

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
''', encoding='utf-8')
print('Oldin checkpoint saved.')
