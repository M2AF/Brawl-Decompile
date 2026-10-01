# Battlefield continuation notes

Checked after Claude's final handoff; telop commit 0075b7d remains present.
resolveReference run 2: exit 124 at iteration 24833, best score 1105 versus
baseline 1190. No match, no source changes applied, no perm_rr process remains.

Applied identification: main DOL fn_801622C4 -> SinFIdx__Q24nw4r4mathFf.
Verified the local SDK declaration and Battlefield's inline SinIdx conversion.
Fresh build and independent verification passed 127/127. Logs are
`battlefield_sine_symbol_build.log` and `battlefield_sine_symbol_verify.log`.

Additional callee observations for the next TU; names not yet applied:
- fn_8018F340 reads the model resource dictionary at relative offset 0x28,
  selects entry index+1, follows its relative payload pointer and returns null
  if absent. This is the material-by-index accessor, not a texture accessor.
- fn_8018F394 reads that same dictionary's count at offset 4, or returns zero
  when the dictionary is absent.
- fn_80190A3C takes a resource wrapper plus a boolean and dispatches a cache
  operation for 0x80 bytes through fn_801D7718 or fn_801D7774. It does not
  return a texture-SRT wrapper.
- fn_80191314 takes a resource wrapper, a one-based color-register index and a
  GXColor output pointer. It decodes two packed TEV words from a 20-byte entry,
  writes four color bytes and returns success. The adjacent named function is
  ResMatTevColor::GXSetTevColor. It is not a texture-SRT setter.

Keep guessed C++ names/signatures separate from confirmed binary behavior.
An extern C declaration retaining fn_* is preferable until the ABI is checked.
One whole TU plus its owned data at a time; source promotion requires 127/127.
