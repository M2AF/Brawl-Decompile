from pathlib import Path
import runpy,sys
root=Path(__file__).resolve().parents[4]
ns=runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
br=root/'brawl-codex8'
ns['main'].__globals__['BR']=br
args=sys.argv[1:]
ren=ns['build_status'](args[2:]) if args[1]=='--status' else dict(a.split('=',1) for a in args[1:])
for v in ['RSBE01_01','RSBE01_02']:
    s=(br/f'config/{v}/rels/{args[0]}/symbols.txt').read_text()
    assert all(k+' = ' in s for k in ren)
sys.argv=['rename_syms.py']+args
ns['main']()
