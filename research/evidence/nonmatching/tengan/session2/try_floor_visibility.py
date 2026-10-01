from pathlib import Path
import subprocess,sys,re,json
root=Path.cwd().resolve();ev=Path(__file__).parent
src=root/'src/mo_stage/st_tengan/gr_tengan_floor.cpp';original=src.read_text()
start=original.index('void grTenganFloor::updateVisibility');end=original.index('// No reliable semantic name',start)
variants={
'switch_unsigned': 'void grTenganFloor::updateVisibility(float) { switch ((u32)m_state) { case 3: m_170 = 0.0f; return setVisibility(0); default: return; } }',
'goto_active': 'void grTenganFloor::updateVisibility(float) { if (m_state == 3) goto active; return; active: m_170 = 0.0f; setVisibility(0); }',
'conditional_void': 'void grTenganFloor::updateVisibility(float) { return m_state == 3 ? (m_170 = 0.0f, setVisibility(0)) : (void)0; }',
'explicit_else': 'void grTenganFloor::updateVisibility(float) { if (m_state == 3) { m_170 = 0.0f; setVisibility(0); } else { return; } }',
}
(ev/'floor_before_visibility.cpp').write_text(original)
results=[];winner=None
try:
 for name,body in variants.items():
  trial=original[:start]+body+'\n\n'+original[end:];src.write_text(trial);(ev/('floor_visibility_'+name+'.cpp')).write_text(trial)
  run=subprocess.run([str(root.parent/'.venv/Scripts/ninja.exe'),'build\\RSBE01_01\\src\\mo_stage\\st_tengan\\gr_tengan_floor.o'],cwd=root,capture_output=True,text=True)
  (ev/('floor_visibility_'+name+'_compile.log')).write_text(run.stdout+run.stderr)
  if run.returncode:raise RuntimeError('Compile failed: '+name)
  diff=subprocess.run([sys.executable,str(ev/'compare.py'),'gr_tengan_floor'],cwd=root,capture_output=True,text=True,check=True).stdout
  (ev/('floor_visibility_'+name+'.diff.txt')).write_text(diff)
  match='MATCH updateVisibility__13grTenganFloorFf' in diff;results.append({'variant':name,'match':match});print(name, 'MATCH' if match else 'near-miss',flush=True)
  if match:winner=trial;break
finally:
 src.write_text(winner or original)
 (ev/'floor_visibility_results.json').write_text(json.dumps(results,indent=2))
