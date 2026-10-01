"""Bounded source-order experiments, always restore source after comparison.

Instruction-only diagnostics; final acceptance still requires the full binary
manifest, including relocations. Logs must remain in private evidence.
"""
from pathlib import Path
import subprocess, re, difflib, itertools, sys

root = Path(__file__).resolve().parents[2] / 'brawl'
src = root / 'src/mo_adv_menu/sora_adv_menu_telop/mu_adv_telop_task.cpp'
ninja = root.parent / '.venv/Scripts/ninja.exe'
dump = root / 'build/binutils/powerpc-eabi-objdump.exe'
unit = 'mo_adv_menu/sora_adv_menu_telop/mu_adv_telop_task.o'
target = root / 'build/RSBE01_01/sora_adv_menu_telop/obj' / unit
candidate = root / 'build/RSBE01_01/src' / unit

def functions(path):
    out = subprocess.check_output([str(dump), '-d', '--no-show-raw-insn', '-j', '.text', str(path)], text=True)
    result = []; current = None
    for line in out.splitlines():
        if re.match(r'^[0-9a-f]+ <', line):
            current = []; result.append(current)
        elif current is not None:
            m = re.match(r'\s+[0-9a-f]+:\s+(.*)', line)
            if m:
                ins = re.sub(r'\s+<[^>]*>', '', m[1].strip())
                current.append(re.sub(r'^(b\w*)\s+[0-9a-f]+$', r'\1 <addr>', ins))
    return result

original = src.read_text()
expected = functions(target)
assign_start = original.index('    task->m_holdFrames = param->holdFrames;')
assign_end = original.index('    return task;', assign_start)
assign = original[assign_start:assign_end]
case_start = original.index('        m_unk71 = 255;')
case_end = original.index('        // Fall through:', case_start)
case = original[case_start:case_end]
variants = {'baseline': original}
variants['all_locals'] = original.replace(assign, '''    u32 hold = param->holdFrames;
    u32 fadeIn = param->fadeInFrames;
    u32 fadeOut = param->fadeOutFrames;
    u32 index = param->textureIndex;
    gfArchive* archive = param->archive;
    task->m_holdFrames = hold;
    task->m_fadeInFrames = fadeIn;
    task->m_fadeOutFrames = fadeOut;
    task->m_textureIndex = index;
    task->m_archive = archive;
    if (fadeIn == 0) task->m_fadeInFrames = 1;
    if (fadeOut == 0) task->m_fadeOutFrames = 1;
''')
variants['param_const'] = original.replace('CreateParam* param', 'const CreateParam* param').replace('create(CreateParam* param)', 'create(const CreateParam* param)')
variants['fade_ref'] = original.replace('u32 fadeIn = param->fadeInFrames;', 'u32& fadeIn = task->m_fadeInFrames;\n    fadeIn = param->fadeInFrames;')
variants['state_first'] = original.replace(case, '''        m_state = 1;
        m_unk71 = 255;
        m_alpha = 0.0f;
        m_rate = 255.0f / m_fadeInFrames;
''')
variants['state_middle'] = original.replace(case, '''        m_unk71 = 255;
        m_state = 1;
        m_alpha = 0.0f;
        m_rate = 255.0f / m_fadeInFrames;
''')
variants['local_rate'] = original.replace(case, '''        float rate = 255.0f / m_fadeInFrames;
        m_unk71 = 255;
        m_alpha = 0.0f;
        m_state = 1;
        m_rate = rate;
''').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:')
if '--case-orders' in sys.argv:
    variants = {}
    statements = ['m_unk71 = 255;', 'm_alpha = 0.0f;', 'm_rate = 255.0f / m_fadeInFrames;', 'm_state = 1;']
    for order in itertools.permutations(range(4)):
        variants['order_' + ''.join(map(str,order))] = original.replace(case, ''.join('        ' + statements[i] + '\n' for i in order))
if '--case-context' in sys.argv:
    variants = {}
    init = '''    inline void initFade(s32 state, u8 marker) {
        m_unk71 = marker;
        m_alpha = 0.0f;
        m_rate = 255.0f / m_fadeInFrames;
        m_state = state;
    }
'''
    variants['inline_init'] = original.replace('    inline void updateAlpha()', init + '\n    inline void updateAlpha()').replace(case, '        initFade(1, 255);\n')
    variants['local_state'] = original.replace(case, '''        s32 state = 1;
        m_unk71 = 255;
        m_alpha = 0.0f;
        m_rate = 255.0f / m_fadeInFrames;
        m_state = state;
''').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:')
    variants['state_ref'] = original.replace(case, '''        s32& state = m_state;
        m_unk71 = 255;
        m_alpha = 0.0f;
        m_rate = 255.0f / m_fadeInFrames;
        state = 1;
''').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:')
    variants['inline_signed_marker'] = variants['inline_init'].replace('s32 state, u8 marker', 's32 state, s32 marker')
    variants['enum_state'] = original.replace('    s32 m_state;', '    enum State { Start, FadeIn, Hold, FadeOut, Remove, Delete, Finished };\n    State m_state;')
    for i,name in enumerate(('Start','FadeIn','Hold','FadeOut','Remove','Delete','Finished')):
        variants['enum_state'] = variants['enum_state'].replace('m_state = '+str(i)+';', 'm_state = '+name+';')
    variants['swap_fields'] = original.replace('m_unk71 = 255;', 'm_alphaByte = 255;').replace('    u8 m_alphaByte;\n    u8 m_unk71;', '    u8 m_unk71;\n    u8 m_alphaByte;')
    variants.pop('swap_fields')
if '--case-expressions' in sys.argv:
    bodies = {
        'comma': 'm_unk71 = 255; m_alpha = 0.0f; m_state = (m_rate = 255.0f / m_fadeInFrames, 1);',
        'chain': 'm_state = m_unk71 = 1; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames;',
        'chain_float': 'm_unk71 = 255; m_alpha = 0.0f; m_rate = (m_state = 1, 255.0f) / m_fadeInFrames;',
        'marker_ref': 'u8& marker = m_unk71; m_state = 1; m_alpha = 0.0f; marker = 255; m_rate = 255.0f / m_fadeInFrames;',
        'alpha_ref': 'float& alpha = m_alpha; m_state = 1; alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / m_fadeInFrames;',
        'state_ref_first': 's32& state = m_state; state = 1; m_alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / m_fadeInFrames;',
        'order0132': 'm_unk71 = 255; m_alpha = 0.0f; m_state = 1; m_rate = 255.0f / m_fadeInFrames;',
        'state_final_cast': 'm_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = static_cast<u8>(1);',
        'state_in_rate': 'm_alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / (m_state = 1, m_fadeInFrames);',
    }
    variants = {name:original.replace(case,'        '+body+'\n').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:') for name,body in bodies.items()}
if '--case-locals' in sys.argv:
    bodies = {
        'frames_first': 'u32 frames = m_fadeInFrames; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / frames; m_state = 1;',
        'frames_state_first': 'u32 frames = m_fadeInFrames; s32 state = 1; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / frames; m_state = state;',
        'marker_volatile': 'volatile u8& marker = m_unk71; marker = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;',
        'state_volatile': 'volatile s32& state = m_state; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; state = 1;',
        'frames_order3102': 'u32 frames = m_fadeInFrames; m_state = 1; m_alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / frames;',
        'state_volatile3102': 'volatile s32& state = m_state; state = 1; m_alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / m_fadeInFrames;',
        'marker_int': 'int marker = 255; m_unk71 = marker; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;',
        'marker_u8': 'u8 marker = 255; m_unk71 = marker; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;',
    }
    variants = {name:original.replace(case,'        '+body+'\n').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:') for name,body in bodies.items()}
if '--case-redundant' in sys.argv:
    bodies = {
        'state_twice': 'm_state = 1; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;',
        'marker_twice': 'm_unk71 = 255; m_state = 1; m_alpha = 0.0f; m_unk71 = 255; m_rate = 255.0f / m_fadeInFrames;',
        'rate_zero': 'm_unk71 = 255; m_alpha = m_rate = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = 1;',
        'state_alias_twice': 's32& state = m_state; state = 1; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = state;',
        'frame_reference': 'u32& frames = m_fadeInFrames; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / frames; m_state = 1;',
        'state_constptr': 'const s32 state = 1; const s32* p = &state; m_unk71 = 255; m_alpha = 0.0f; m_rate = 255.0f / m_fadeInFrames; m_state = *p;',
        'marker_neg': 'm_unk71 = -1; m_alpha = 0.0f; m_state = 1; m_rate = 255.0f / m_fadeInFrames;',
    }
    variants = {name:original.replace(case,'        '+body+'\n').replace('    case 0:', '    case 0: {').replace('        // Fall through:', '        }\n        // Fall through:') for name,body in bodies.items()}
if '--remove-load-local' in sys.argv:
    variants = {'remove_load_local': original.replace('    muAdvTelopTask* task = this;\n', '')}
try:
    for name, text in variants.items():
        src.write_text(text, newline='\n')
        build = subprocess.run([str(ninja), str(candidate.relative_to(root))], cwd=root, capture_output=True, text=True)
        if build.returncode:
            print(name, 'COMPILE FAILED', build.stdout[-1200:]); continue
        actual = functions(candidate)
        scores = [sum(1 for l in difflib.ndiff(a, b) if l.startswith(('+ ', '- '))) for a,b in zip(expected,actual)]
        print(name, scores, flush=True)
        if scores[2] == 0 and '--remove-load-local' not in sys.argv:
            (root.parent / 'research/evidence/nonmatching/telop_matching_case.cpp').write_text(text, newline='\n')
            break
        if '--case-context' in sys.argv or '--case-expressions' in sys.argv or name in ('state_first','all_locals','local_rate','order_3102'):
            i = 2 if name != 'all_locals' else 0
            print('\n'.join(difflib.unified_diff(expected[i],actual[i],n=1)), flush=True)
finally:
    src.write_text(original, newline='\n')
