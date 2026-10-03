import re, runpy, sys
from pathlib import Path
root = Path(__file__).resolve().parents[4]
repo = root/'brawl-codex10'
ns = runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR'] = repo
ren = {}
unit = 'ft_link_status_uniq_process_final'
for cls,dtor,vt,rtti,ctor,inst,methods in [
 ('ftLinkStatusUniqProcessFinal','10E6C','84E8','8554','10F2C','18C',{'F998':'initStatus','FA94':'execFixPos','FC4C':'exitStatus'}),
 ('ftLinkStatusUniqProcessFinalDash','10E2C','8470','84E0','10F3C','19C',{'FFF8':'initStatus','100A8':'execStatus','10140':'execFixPos','10448':'exitStatus'}),
 ('ftLinkStatusUniqProcessFinalCombo','10DEC','83F8','8468','10F4C','1AC',{'10630':'initStatus','106CC':'execFixPos','10A34':'exitStatus'}),
]:
 args=[cls,'fn_93_'+dtor,'lbl_93_data_'+vt,'lbl_93_data_'+rtti,'fn_93_10EAC','fn_93_'+ctor,'lbl_93_bss_'+inst,unit]
 args += ['fn_93_'+addr+'='+method for addr,method in methods.items()]
 ren.update(ns['build_status'](args))
ren['fn_93_10090'] = '__ct__14LinkFinalEventFv'
sys.argv = ['rename_syms.py','ft_link'] + [f'{k}={v}' for k,v in ren.items()]
ns['main']()
for ver in ('RSBE01_01','RSBE01_02'):
 p=repo/'config'/ver/'rels/ft_link/symbols.txt'
 s=p.read_text()
 for cls in ('ftLinkStatusUniqProcessFinal','ftLinkStatusUniqProcessFinalDash'):
  pattern = re.compile(r'^(g_'+cls+r' = .*?size:)0x10', re.M)
  s,n=pattern.subn(r'\g<1>0x4',s)
  assert n==1, (ver,cls,n)
 for addr in ('190','1A0'):
  assert 'lbl_93_bss_'+addr+' = ' not in s
  s += f'lbl_93_bss_{addr} = .bss:0x{int(addr,16):08X}; // type:object size:0xC scope:local\n'
 p.write_text(s)
