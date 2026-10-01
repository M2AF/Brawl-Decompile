from pathlib import Path
import sys,re,json
sys.path.insert(0,str(Path(__file__).resolve().parents[3]))
from brawltool.common import select_repo
root=Path(__file__).resolve().parents[4]/'brawl-codex6';select_repo(root)
from brawltool.ops import _funcs
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'finish5'))
from elf_inspect import Object
base=root/'build/RSBE01_01';u=Path('mo_stage/st_dxbigblue/st_dxbigblue.o');t=Object(base/'st_dxbigblue/obj'/u);c=Object(base/'src'/u)
tn,T=_funcs(t.path);cn,C=_funcs(c.path)
m={}
for name in cn:
 match=re.match(r'(fn_81_[0-9A-F]+)__',name)
 if match:m[match[1]]=name
m.update({'fn_81_70':'create__11stDxBigBlueFv','fn_81_A4':'__ct__11stDxBigBlueFv','fn_81_4E8':'__ct__16stDxBigBlueSoundFv','fn_81_518':'__dt__16stDxBigBlueSoundFv','fn_81_570':'__dt__11stDxBigBlueFv','fn_81_618':'loading__11stDxBigBlueFv','fn_81_620':'createObj__11stDxBigBlueFv','fn_81_1498':'update__11stDxBigBlueFf','fn_81_3F40':'isEventEnd__11stDxBigBlueFiPiPi','fn_81_40CC':'__dt__33stClassInfoImpl<49,11stDxBigBlue>Fv','fn_81_4140':'create__33stClassInfoImpl<49,11stDxBigBlue>Fv','fn_81_4174':'preload__33stClassInfoImpl<49,11stDxBigBlue>Fv'})
tr={a:s for a,typ,s,add in t.relocs['.data']};cr={a:s for a,typ,s,add in c.relocs['.data']}
for a,s in tr.items():
 if s in tn and a in cr:m[s]=cr[a]
for sec in ('.data','.bss'):
 ts={s['value']:s for s in t.symbols_in(sec) if s['size']}
 for s in c.symbols_in(sec):
  if s['size'] and s['info']>>4 and s['value'] in ts:m[ts[s['value']]['name']]=s['name']
print('Unmapped target functions',[(n,len(T[n])) for n in tn if n not in m and n not in cn])
print('unpaired candidate funcs',[n for n in cn if n not in m.values() and n not in tn])
print('BSS',[(n['name'],n['value'],n['size'],n['info']) for n in c.symbols_in('.bss')]);print('sinit',[n for n in cn if 'sinit' in n])
Path(__file__).with_name('bigblue_symbol_map_draft.json').write_text(json.dumps(m,indent=2)+'\n')
