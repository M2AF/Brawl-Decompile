VARIANTS = [
 ('local_frame',[('motion.add2ndAnimChr(frame, 1.0f, kind, false);','float blendFrame = frame;\n        motion.add2ndAnimChr(blendFrame, 1.0f, kind, false);')]),
 ('volatile_frame',[('float frame = motion.getFrame();','volatile float frame = motion.getFrame();')]),
 ('local_rate',[('motion.add2ndAnimChr(frame, 1.0f, kind, false);','float rate = 1.0f;\n        motion.add2ndAnimChr(frame, rate, kind, false);')]),
]
