old = '''        float threshold = fn_27_14548C(&g_ftCommonDataAccesser)->m_1c;
        threshold += offset;
        if (controller.getFlickNoResetX() < threshold) {'''
VARIANTS = [
 ('expression', [(old, '''        float threshold = fn_27_14548C(&g_ftCommonDataAccesser)->m_1c + offset;
        if (controller.getFlickNoResetX() < threshold) {''')]),
 ('inline_condition', [(old, '''        if (controller.getFlickNoResetX() < fn_27_14548C(&g_ftCommonDataAccesser)->m_1c + offset) {''')]),
 ('inline_reverse', [(old, '''        if (controller.getFlickNoResetX() < offset + fn_27_14548C(&g_ftCommonDataAccesser)->m_1c) {''')]),
 ('int_local', [(old, '''        int base = fn_27_14548C(&g_ftCommonDataAccesser)->m_1c;
        float threshold = (float)base + offset;
        if (controller.getFlickNoResetX() < threshold) {''')]),
 ('compound_offset', [(old, '''        offset += fn_27_14548C(&g_ftCommonDataAccesser)->m_1c;
        if (controller.getFlickNoResetX() < offset) {''')]),
 ('cast_local', [(old, '''        int base = fn_27_14548C(&g_ftCommonDataAccesser)->m_1c;
        float threshold = base;
        threshold += offset;
        if (controller.getFlickNoResetX() < threshold) {''')]),
 ('offset_reassign', [(old, '''        offset = (float)fn_27_14548C(&g_ftCommonDataAccesser)->m_1c + offset;
        if (controller.getFlickNoResetX() < offset) {''')]),
 ('int_ref', [(old, '''        int& base = fn_27_14548C(&g_ftCommonDataAccesser)->m_1c;
        float threshold = base + offset;
        if (controller.getFlickNoResetX() < threshold) {''')]),
]
