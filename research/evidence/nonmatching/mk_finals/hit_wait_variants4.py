prefix = """        if (entries[j] != ownEntry) {
            if (ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) != true) {"""
VARIANTS = [
    ("combined_condition", [(prefix, "        {\n            if (entries[j] != ownEntry && ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) != true) {")]),
    ("continue_linked", [(prefix, "        if (entries[j] != ownEntry) {\n            if (ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) == true) { continue; }\n            {")]),
    ("condition_goto", [(prefix, "        if (entries[j] == ownEntry) { goto next_entry; }\n        if (ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) == true) { goto next_entry; }\n        {\n            {"), ("    }\n    ftMetaknightFinalUpdateCamera", "    next_entry:;\n    }\n    ftMetaknightFinalUpdateCamera")]),
    ("compare_volatile_scalar", [("        if (entries[j] != ownEntry)", "        volatile int entry = entries[j];\n        if (entry != ownEntry)")]),
    ("helper_before_own_check", [(prefix, "        {\n            if (ownEntry != entries[j] && ftMetaknightFinalHasLinkedEntry(entries[j], moduleAccesser) != true) {")]),
]
