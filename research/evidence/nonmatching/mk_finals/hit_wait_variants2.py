VARIANTS = [
    ("own_left", [("if (static_cast<volatile int*>(entries)[j] != ownEntry)", "if (ownEntry != static_cast<volatile int*>(entries)[j])")]),
    ("comparison_pointer", [("    int j;", "    volatile int* view = entries;\n    int j;"), ("static_cast<volatile int*>(entries)[j]", "view[j]")]),
    ("value_pointer", [("    int j;", "    int* view = entries;\n    int j;"), ("ftMetaknightFinalHasLinkedEntry(entries[j],", "ftMetaknightFinalHasLinkedEntry(view[j],"), ("setInt(entries[j], slot)", "setInt(view[j], slot)")]),
    ("array_reference", [("    int j;", "    volatile int (&view)[9] = entries;\n    int j;"), ("static_cast<volatile int*>(entries)[j]", "view[j]")]),
    ("volatile_continue", [("        if (static_cast<volatile int*>(entries)[j] != ownEntry) {", "        if (static_cast<volatile int*>(entries)[j] == ownEntry) { continue; }\n        {")]),
    ("scoped_compare", [("    int j;", "    int j;\n    volatile int* view = entries;"), ("static_cast<volatile int*>(entries)[j]", "view[j]")]),
    ("unsigned_array", [("int entries[9]", "unsigned int entries[9]"), ("g_ftManager, entries)", "g_ftManager, reinterpret_cast<int*>(entries))"), ("static_cast<volatile int*>(entries)[j]", "static_cast<int>(entries[j])")]),
    ("entries_alias", [("    int j;", "    int (&view)[9] = entries;\n    int j;"), ("static_cast<volatile int*>(entries)[j]", "view[j]")]),
]
