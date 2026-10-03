"""Propose names by comparing relocated RTTI name strings; review before apply."""
import argparse, json, re, runpy
from pathlib import Path
from elftools.elf.elffile import ELFFile

root = Path(__file__).resolve().parents[4]
p = argparse.ArgumentParser()
p.add_argument('unit')
p.add_argument('--apply', action='store_true')
a = p.parse_args()
repo = root/'brawl-codex10'
ns = runpy.run_path(str(root/'research/claude_tools/mk_status_splits.py'))
ns['parse'].__globals__['ASM_ROOT'] = repo/'build/RSBE01_01'
items, _ = ns['parse']('ft_link')
data = {i.name: i for i in items if i.section == 'data'}
target = {}
for item in data.values():
    words = [re.search(r'\.4byte\s+(\S+)', line) for line in item.lines]
    words = [m.group(1) for m in words if m]
    if item.size not in (8, 12) or not words or words[0] not in data:
        continue
    name_item = data[words[0]]
    match = re.search(r'\.string\s+"([^"]+)"', '\n'.join(name_item.lines))
    if match:
        target.setdefault(match.group(1), []).append(item)

rows = []
obj = repo/'build/RSBE01_01/src/mo_fighter/ft_link'/f'{a.unit}.o'
with obj.open('rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    relocs = {}
    for sec in elf.iter_sections():
        if sec['sh_type'] not in ('SHT_RELA', 'SHT_REL'):
            continue
        relsym = elf.get_section(sec['sh_link'])
        for rel in sec.iter_relocations():
            relocs[(sec['sh_info'], rel['r_offset'])] = (relsym.get_symbol(rel['r_info_sym']), rel)
    for sym in symtab.iter_symbols():
        if not sym.name.startswith('__RTTI__') or not isinstance(sym['st_shndx'], int):
            continue
        sec = elf.get_section(sym['st_shndx'])
        key = (sym['st_shndx'], sym['st_value'])
        if key not in relocs:
            raise RuntimeError(f'RTTI name relocation missing: {sym.name}')
        name_sym, rel = relocs[key]
        name_sec = elf.get_section(name_sym['st_shndx'])
        addend = rel['r_addend'] if rel.is_RELA() else int.from_bytes(sec.data()[sym['st_value']:sym['st_value']+4], 'big')
        off = name_sym['st_value'] + addend
        name = name_sec.data()[off:].split(b'\0', 1)[0].decode('ascii')
        matches = target.get(name, [])
        if len(matches) != 1:
            raise RuntimeError(f'Expected unique target RTTI: {name!r}, found {len(matches)}')
        item = matches[0]
        rows.append(dict(name=name, old=item.name.strip('"'), new=sym.name, address=hex(item.addr)))
out = root/'research/evidence/nonmatching/link'/f'{a.unit}_rtti.json'
out.write_text(json.dumps(rows, indent=2)+'\n')
ren = {r['old']: r['new'] for r in rows if r['old'] != r['new']}
print(json.dumps(ren, indent=2))
if a.apply and ren:
    import sys
    renamer = runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
    renamer['main'].__globals__['BR'] = repo
    sys.argv = ['rename_syms.py', 'ft_link'] + [f'{k}={v}' for k,v in ren.items()]
    renamer['main']()
