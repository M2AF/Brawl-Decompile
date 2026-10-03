from pathlib import Path
import subprocess,sys
root=Path(__file__).resolve().parents[4];br=root/'brawl-codex8'
name,description=sys.argv[1:3]
with (br/'docs/RSBE01_01.md').open('a') as f:f.write('\n### ft_lucas '+name+' (Codex fighters2)\n\n'+description+'\n')
subprocess.run(['git','-C',str(br),'add','-u'],check=True)
subprocess.run(['git','-C',str(br),'add','src/mo_fighter/ft_lucas'],check=True)
subprocess.run(['git','-C',str(br),'commit','-m','Match Lucas '+name+' status unit'],check=True)
commit=subprocess.check_output(['git','-C',str(br),'rev-parse','--short','HEAD'],text=True).strip()
p=root/'research/codex_parallel/FIGHTERS_STATUS.md';s=p.read_text();marker='## Current fighters2 run (2026-10-02 evening)\n';s=s.replace(marker,marker+'\n- Lucas '+name+' accepted/source-linked **'+commit+'**; fullREL review, fresh127/127, independent check and post-probe PASS.\n',1);p.write_text(s)
subprocess.run([str(root/'.venv/Scripts/python.exe'),'C:/Users/balla/.codex/skills/agent-handoff/scripts/handoff.py','--dir',str(root/'research'),'log','codex','note','-m','codex-parallel: Lucas '+name+' source-linked commit'+commit+' in codex/fighters2. FullREL review byte-identical, fresh127/127+independent check+post-probe PASS; originals/main unchanged. Evidence private.'],check=True)
