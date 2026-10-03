import runpy, sys
from pathlib import Path
root = Path(__file__).resolve().parents[4]
ns = runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR'] = root/'brawl-codex10'
sys.argv = ['rename_syms.py', 'ft_link', '--status',
 'ftLinkStatusUniqProcessWait', 'fn_93_10FEC', 'lbl_93_data_8560',
 'lbl_93_data_85C8', 'fn_93_1102C', 'fn_93_11074', 'lbl_93_bss_1BC',
 'ft_link_status_uniq_process_wait',
 'fn_93_10F5C=initStatus', 'fn_93_10F60=execStatus',
 'fn_93_10F64=updateNodeTranslate', 'fn_93_10FE8=execStop']
ns['main']()
