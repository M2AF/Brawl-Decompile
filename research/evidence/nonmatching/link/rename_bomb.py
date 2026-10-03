import runpy, sys
from pathlib import Path
root = Path(__file__).resolve().parents[4]
ns = runpy.run_path(str(root/'research/claude_tools/rename_syms.py'))
ns['main'].__globals__['BR'] = root/'brawl-codex10'
sys.argv = ['rename_syms.py', 'ft_link', '--status',
 'ftLinkStatusUniqProcessSpecialBomb', 'fn_93_F900', 'lbl_93_data_837C',
 'lbl_93_data_83EC', 'fn_93_F940', 'fn_93_F988', 'lbl_93_bss_17C',
 'ft_link_status_uniq_process_special_bomb',
 'fn_93_F74C=initStatus', 'fn_93_F750=execFixPos']
ns['main']()
