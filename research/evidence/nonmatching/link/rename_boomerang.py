import runpy, sys
from pathlib import Path
root = Path(__file__).resolve().parents[4]
ns = runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR'] = root/'brawl-codex10'
sys.argv = ['rename_syms.py', 'ft_link', '--status',
 'ftLinkStatusUniqProcessSpecialBoomerang', 'fn_93_F6B4', 'lbl_93_data_81D0',
 'lbl_93_data_8244', 'fn_93_F6F4', 'fn_93_F73C', 'lbl_93_bss_16C',
 'ft_link_status_uniq_process_special_boomerang',
 'fn_93_F4BC=initStatus', 'fn_93_F62C=execStatus', 'fn_93_F630=exitStatus',
 'lbl_93_data_337C=__RTTI__7Fighter', 'lbl_93_data_3BF8=__RTTI__11StageObject']
ns['main']()
