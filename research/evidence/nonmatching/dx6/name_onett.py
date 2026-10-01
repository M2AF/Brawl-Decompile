from pathlib import Path
import sys, re, json
sys.path.insert(0,str(Path(__file__).resolve().parents[3]))
from brawltool.common import select_repo
root=Path(__file__).resolve().parents[4]/'brawl-codex6'
select_repo(root)
from brawltool.ops import _funcs
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'finish5'))
from elf_inspect import Object
unit='mo_stage/st_dxonett/st_dxonett.o'
target=root/'build/RSBE01_01/st_dxonett/obj'/unit
candidate=root/'build/RSBE01_01/src'/unit
tn,ti=_funcs(target);cn,ci=_funcs(candidate)
assert len(tn)==len(cn)==71
mapping=dict(zip(tn,cn))
t=Object(target);c=Object(candidate)
for sec in ('.data','.bss'):
    ts={s['value']:s for s in t.symbols_in(sec) if s['size']}
    for s in c.symbols_in(sec):
        if s['info']>>4 and s['size'] and s['value'] in ts:
            mapping[ts[s['value']]['name']]=s['name']
p=root/'config/RSBE01_01/rels/st_dxonett/symbols.txt'
text=p.read_text()
for old,new in mapping.items():
    text,n=re.subn(r'^'+re.escape(old)+r' = ',lambda m:new+' = ',text,flags=re.M)
    assert n==1,(old,n)
p.write_text(text,newline='\n')
Path(__file__).with_name('onett_symbol_map.json').write_text(json.dumps(mapping,indent=2)+'\n')
print('Renamed',len(mapping),'proven positional functions and global metadata symbols')
