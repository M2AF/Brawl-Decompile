from pathlib import Path
import re, subprocess, json, difflib
ROOT=Path.cwd().resolve()
OBJDUMP=ROOT/'build/binutils/powerpc-eabi-objdump.exe'
mod='st_tengan';unit='mo_stage/st_tengan/gr_tengan'
tgt=ROOT/'build/RSBE01_01'/mod/'obj'/(unit+'.o')
cand=ROOT/'build/RSBE01_01/src'/(unit+'.o')
def funcs(obj):
    out = subprocess.run([str(OBJDUMP), "-dr", "--no-show-raw-insn", "-j", ".text", str(obj)], capture_output=True, text=True).stdout
    res = []
    cur = None
    for line in out.splitlines():
        m = re.match(r"^([0-9a-f]+) <(.+)>:$", line)
        if m:
            cur = [m[2], []]
            res.append(cur)
            continue
        if cur is None or not line.strip():
            continue
        m = re.match(r"^\s+([0-9a-f]+):\s+(.*)$", line)
        if m:
            ins = m[2].strip()
            if ins.startswith("R_"):
                ins = re.sub(r"\s+(@\d+|lbl_\w+|fn_\w+|\.\w+|\.\.\.\w+\.\d+)(\+0x[0-9a-f]+)?$", " <sym>", ins)
            ins = re.sub(r"\s+<.*>", "", ins)
            ins = re.sub(r"^(b\w*)\s+[0-9a-f]+$", r"\1 <addr>", ins)
            cur[1].append(ins)
    return res


mapping=json.loads((Path(__file__).parent/'symbol_map.json').read_text())
def norm(rows):
    out=[]
    for ins in rows:
        for old,new in mapping.items():ins=ins.replace(old,new)
        if ins.startswith('R_'):
            ins=re.sub(r'\s+(@\d+|lbl_\w+|fn_\w+|\.\w+|\.\.\.\w+\.\d+)(\+0x[0-9a-f]+)?$', ' <local>',ins)
        out.append(ins)
    return out
t=funcs(tgt);c=dict(funcs(cand));count=0
for name,lines in t:
    dst=mapping.get(name,name);a=norm(lines);b=norm(c.get(dst,[]))
    same=a==b;count+=same
    print(('MATCH' if same else 'DIFF '), dst)
    if not same:
        print('\n'.join(difflib.unified_diff(a,b,'target','candidate',n=1,lineterm='')))
print('Instruction comparison:',count,'/',len(t))
print('Extra emitted functions:', ', '.join(n for n in c if n not in {mapping.get(n,n) for n,_ in t}))
