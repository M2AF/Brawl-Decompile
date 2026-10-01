from pathlib import Path
import re,struct,json
root=Path.cwd()
ev=root.parent/'research/evidence/nonmatching/oldin'
t=(ev/'stage_data.s').read_text()
head=t.split('.obj lbl_53_data_0, global')[1].split('.endobj')[0]
pool=t.split('.obj lbl_53_data_38, global')[1].split('.endobj')[0]
raw=b''.join(struct.pack('>I',int(x,16)) for x in re.findall(r'\.4byte (0x[0-9A-F]+)',head+pool))
assert len(raw)==0x378
names=[0x38,0x40,0x44,0x54,0x68,0x78,0x88,0x98,0xa8,0xb8,0xc8,0xd4,0xe8,0xfc,0x10c,0x124,0x13c,0x150,0x164,0x180,0x19c,0x1b4,0x1c0,0x1d4,0x1e8,0x1f8,0x208]
fields=['    stOldinDefaults defaults;'];initial=['    {{0},{900,600,1200,0.6666667f,180,5,2,2,1,75,20,900,1200}}']
mapping={}
for a,b in zip(names,names[1:]):
    s=raw[a:b].split(b'\0')[0].decode()
    field=f'name_{a:X}'
    fields.append(f'    char {field}[0x{b-a:X}];')
    initial.append('    '+json.dumps(s))
    if s:mapping[s]=f's_oldinData.{field}'
parts=[('lordSeq0',0x208,0x210,'stOldinSequence'),('footsteps',0x210,0x224,'float'),('lordSeq1',0x224,0x22c,'stOldinSequence'),('debugLord',0x22c,0x24c,'char'),('spawnSeq',0x24c,0x26c,'stOldinSequence'),('bulblinSeq',0x26c,0x2a0,'stOldinSequence'),('bombSeq',0x2a0,0x2b8,'stOldinSequence'),('debugThrow',0x2b8,0x2e4,'char'),('pad2e4',0x2e4,0x2e8,'u32'),('debugDrop',0x2e8,0x310,'char'),('debugExplosion',0x310,0x338,'char'),('bridgeSeq',0x338,0x378,'stOldinSequence')]
for field,a,b,typ in parts:
    count=b-a if typ=='char' else (b-a)//4
    fields.append(f'    {typ} {field}[{count}];')
    if typ=='char':initial.append('    '+json.dumps(raw[a:b].split(b'\0')[0].decode()))
    else:
        vals=struct.unpack('>'+('f' if typ=='float' else 'I')*count,raw[a:b])
        initial.append('    {'+','.join('{'+str(v)+'}' if typ=='stOldinSequence' else str(v) for v in vals)+'}')
h=root/'include/st_oldin/st_oldin.h'
s=h.read_text().replace('extern stOldinDefaults s_oldinDefaults;','struct stOldinData {\n'+'\n'.join(fields)+'\n};\nstatic_assert(sizeof(stOldinData)==0x378,"owned data pool size");\nextern stOldinData s_oldinData;')
s=s.replace('s_oldinDefaults.sequence','s_oldinData.defaults.sequence');h.write_text(s)
c=root/'src/mo_stage/st_oldin/st_oldin.cpp';s=c.read_text()
start=s.index('stOldinDefaults s_oldinDefaults=');end=s.index('\n#pragma pop',start)
s=s[:start]+'stOldinData s_oldinData={\n'+',\n'.join(initial)+'\n};'+s[end:]
s=s.replace('s_oldinDefaults','s_oldinData.defaults').replace('s_oldinSpawnSeq','s_oldinData.spawnSeq')
for literal,field in sorted(mapping.items(),key=lambda x:-len(x[0])):s=s.replace(json.dumps(literal),field)
s=s.replace('grOldin::create(model,"",name)','grOldin::create(model,s_oldinData.name_40,name)')
c.write_text(s)
symbols=root/'config/RSBE01_01/rels/st_oldin/symbols.txt';s=symbols.read_text()
s=s.replace('s_oldinDefaults = .data:0x00000000; // type:object size:0x38 data:4byte','s_oldinData = .data:0x00000000; // type:object size:0x378 data:4byte')
s=re.sub(r'^lbl_53_data_38 = .*\n','',s,flags=re.M)
symbols.write_text(s)
print('Generated typed data pool, asserted size0x378; no original changed.')
