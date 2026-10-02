from pathlib import Path
import runpy, sys, contextlib
root = Path(__file__).resolve().parents[4]
ns = runpy.run_path(str(root/'research/claude_tools/mk_status_splits.py'))
ns['parse'].__globals__['ASM_ROOT'] = root/'brawl-codex7/build/RSBE01_01'
out = root/'research/evidence/nonmatching/ike/pit_hold'
out.mkdir(exist_ok=True)
sys.argv = ['mk_status_splits.py', 'ft_pit', '--prefix', 'ftPit']
with (out/'proposals.txt').open('w') as f, contextlib.redirect_stdout(f): ns['main']()
items, ctors = ns['parse']('ft_pit')
with (out/'target.txt').open('w') as f:
    for i in items:
        if ((i.section=='text' and 0xE274<=i.addr<0xE4D4) or
            (i.section=='data' and 0x6A48<=i.addr<0x6AC8) or
            (i.section=='rodata' and 0x20<=i.addr<0x30)):
            f.write(f'{i.section} {i.addr:X} {i.size:X} {i.name}\n'+'\n'.join(i.lines)+'\n\n')
print((out/'target.txt').read_text())
