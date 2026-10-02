B = "            if (controller.getTrigger().m_mask & mask) {\n"
VARIANTS = [
    ("mask_and_trig", [(B, "            if (mask & controller.getTrigger().m_mask) {\n")]),
    ("local_trig", [(B, "            ipPadButton trigger = controller.getTrigger();\n            if (trigger.m_mask & mask) {\n")]),
    ("local_trig_rev", [(B, "            ipPadButton trigger = controller.getTrigger();\n            if (mask & trigger.m_mask) {\n")]),
    ("u32_trig", [(B, "            u32 trigger = controller.getTrigger().m_mask;\n            if (trigger & mask) {\n")]),
]
