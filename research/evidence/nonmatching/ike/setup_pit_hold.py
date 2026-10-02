from pathlib import Path
import runpy, sys
root=Path(__file__).resolve().parents[4]
br=root/'brawl-codex7'
unit='mo_fighter/ft_pit/ft_pit_status_uniq_process_special_lw_hold.cpp'
block=f'{unit}:\n\t.text       start:0x0000E274 end:0x0000E4D4\n\t.ctors      start:0x0000000C end:0x00000010\n\t.rodata     start:0x00000020 end:0x00000028\n\t.data       start:0x00006A48 end:0x00006AC8\n\t.bss        start:0x000001C0 end:0x000001D0\n\n'
for ver in ['RSBE01_01','RSBE01_02']:
    p=br/f'config/{ver}/rels/ft_pit/splits.txt'
    s=p.read_text()
    assert unit not in s
    s=s.replace('mo_fighter/mo_fighter.cpp:',block+'mo_fighter/mo_fighter.cpp:')
    p.write_text(s)
p=br/'configure.py'
s=p.read_text()
anchor='"objects": [Object(MatchingFor("RSBE01_01"), "mo_fighter/ft_pit/ft_pit_status_uniq_process_special_hi_fly.cpp")],'
assert anchor in s
p.write_text(s.replace(anchor, '"objects": [\n            Object(MatchingFor("RSBE01_01"), "mo_fighter/ft_pit/ft_pit_status_uniq_process_special_hi_fly.cpp"),\n            Object(NonMatching, "'+unit+'"),\n        ],'))
ns=runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR']=br
sys.argv=['rename_syms.py','ft_pit','--status','ftPitStatusUniqProcessSpecialLwHold','fn_112_E43C','lbl_112_data_6A4C','lbl_112_data_6ABC','fn_112_E47C','fn_112_E4C4','lbl_112_bss_1CC','ft_pit_status_uniq_process_special_lw_hold','fn_112_E274=initStatus','fn_112_E278=execStatus','fn_112_E438=execStop','fn_112_E3CC=updateModelRotation']
ren=ns['build_status'](sys.argv[3:])
for ver in ['RSBE01_01','RSBE01_02']:
    s=(br/f'config/{ver}/rels/ft_pit/symbols.txt').read_text()
    assert all(old+' = ' in s for old in ren)
ns['main']()
sys.argv=['rename_syms.py','ft_pit','fn_112_E0A0=exitStatus__19soStatusUniqProcessFP16soModuleAccesseri','lbl_112_data_6A48=g_ftPitSpecialLwHoldAngleDivisor']
ns['main']()
