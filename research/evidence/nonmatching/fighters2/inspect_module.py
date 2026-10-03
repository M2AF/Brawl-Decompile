from pathlib import Path
import runpy, sys, contextlib
root=Path(__file__).resolve().parents[4]
ns=runpy.run_path(str(root/'research/claude_tools/mk_status_splits.py'))
ns['parse'].__globals__['ASM_ROOT']=root/'brawl-codex8/build/RSBE01_01'
module=sys.argv[1]
out=Path(__file__).parent/module
out.mkdir(exist_ok=True)
sys.argv=['mk_status_splits.py',module,'--prefix',{'ft_pit':'ftPit','ft_ness':'ftNess','ft_lucas':'ftLucas'}[module]]
with (out/'proposals.txt').open('w') as f, contextlib.redirect_stdout(f): ns['main']()
items,ctors=ns['parse'](module)
items=list({(i.section,i.addr):i for i in items}.values())
with (out/'index.txt').open('w') as f:
    for i in sorted(items,key=lambda i:(i.section,i.addr)):
        f.write(f'{i.section} {i.addr:X}..{i.end:X} {i.name} refs={sorted(i.refs())}\n')
print((out/'proposals.txt').read_text())
