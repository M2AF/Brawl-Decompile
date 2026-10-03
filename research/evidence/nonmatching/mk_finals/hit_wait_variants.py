VARIANTS = [
    ("continue_self", [
        ("        if (entries[j] != ownEntry) {", "        if (entries[j] == ownEntry) { continue; }\n        {"),
    ]),
    ("volatile_comparison_view", [
        ("if (entries[j] != ownEntry)", "if (static_cast<volatile int*>(entries)[j] != ownEntry)"),
    ]),
    ("entry_reference", [
        ("        if (entries[j] != ownEntry)", "        int& entry = entries[j];\n        if (entry != ownEntry)"),
    ]),
    ("comparison_local", [
        ("        if (entries[j] != ownEntry)", "        bool self = entries[j] == ownEntry;\n        if (!self)"),
    ]),
]
