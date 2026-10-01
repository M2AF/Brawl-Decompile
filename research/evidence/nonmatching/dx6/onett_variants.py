VARIANTS = [
    ('kanban-switch', [('if (index == 3) ground->set1E4(1);', 'switch (index) { case 3: ground->set1E4(1); break; default: break; }')]),
    ('kanban-return', [('if (index == 3) ground->set1E4(1);', 'if (index != 3) return; ground->set1E4(1);')]),
    ('kanban-case-goto', [('if (index == 3) ground->set1E4(1);', 'switch (index) { case 3: goto set_kind; default: return; } set_kind: ground->set1E4(1);')]),
]
