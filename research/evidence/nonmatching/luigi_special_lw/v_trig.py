B = "            if (moduleAccesser->getControllerModule().getTrigger().m_mask & soController::getButtonMask(soController::Pad_Button_Special)) {\n"
VARIANTS = [
    ("mask_left", [(B, "            if (soController::getButtonMask(soController::Pad_Button_Special) & moduleAccesser->getControllerModule().getTrigger().m_mask) {\n")]),
    ("ref_mask_left", [(B, "            soControllerModule& controller = moduleAccesser->getControllerModule();\n            if (soController::getButtonMask(soController::Pad_Button_Special) & controller.getTrigger().m_mask) {\n")]),
    ("ref_trig_left", [(B, "            soControllerModule& controller = moduleAccesser->getControllerModule();\n            if (controller.getTrigger().m_mask & soController::getButtonMask(soController::Pad_Button_Special)) {\n")]),
]
