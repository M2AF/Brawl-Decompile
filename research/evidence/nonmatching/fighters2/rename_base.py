import runpy,sys
from pathlib import Path
root=Path(__file__).resolve().parents[4]
ns=runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR']=root/'brawl-codex8'
module=sys.argv[1]
if module=='ft_ness':
    addrs=['11388','11340','1133C','11338','11334','11330','11384','1132C','11324','11320','11318','11314','1130C'];mid=101;rtti='8980'
else:
    addrs=['10A08','10A04','1098C','109C0','109BC','109B8','109B4','109B0','109A8','109A4','1099C','10998','10990'];mid=114;rtti='81B0'
names=['initStatus','exitStatus','execStatus','execStop','execMapCorrection','execFixPosCounter','execFixPos','execFixCamera','checkDamage','checkAttack','onChangeLr','leaveStop','checkTransitionPrecede']
sufs={'exitStatus':'i','checkDamage':'Pv','checkAttack':'Pvf','onChangeLr':'ff','leaveStop':'ib','checkTransitionPrecede':'Pi'}
ren={f'fn_{mid}_{a}':f'{n}__19soStatusUniqProcessFP16soModuleAccesser'+sufs.get(n,'') for a,n in zip(addrs,names)}
ren[f'lbl_{mid}_data_{rtti}']='__RTTI__19soStatusUniqProcess'
for v in ['RSBE01_01','RSBE01_02']:
    s=(root/'brawl-codex8'/f'config/{v}/rels/{module}/symbols.txt').read_text()
    assert all(k+' = ' in s for k in ren)
sys.argv=['rename_syms.py',module]+[f'{k}={v}' for k,v in ren.items()]
ns['main']()
