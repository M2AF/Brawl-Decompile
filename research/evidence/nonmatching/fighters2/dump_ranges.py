from pathlib import Path
import runpy, sys
root=Path(__file__).resolve().parents[4]
n=runpy.run_path(str(root/'research/claude_tools/mk_status_splits.py'))
n['parse'].__globals__['ASM_ROOT']=root/'brawl-codex8/build/RSBE01_01'
mod=sys.argv[1]; vals=list(map(lambda s:int(s,16),sys.argv[2:]))
items,ctors=n['parse'](mod)
unique={(i.section,i.addr):i for i in items}
out=Path(__file__).parent/mod/f'target_{vals[0]:X}.txt'
out.parent.mkdir(exist_ok=True)
with out.open('w') as f:
    for i in sorted(unique.values(),key=lambda i:(i.section,i.addr)):
        if ((i.section=='text' and vals[0]<=i.addr<vals[1]) or
            (i.section=='data' and vals[2]<=i.addr<vals[3])):
            f.write(f'{i.section} {i.addr:X}..{i.end:X} {i.name}\n'+ '\n'.join(i.lines)+'\n\n')
print(out.read_text())
