# Proposed callee names - RSBE01_01

Research snapshot: 2026-09-30. Read-only inspection of the active checkout; no builds, symbol edits, or branch changes. Addresses below are main.dol virtual addresses, not REL load addresses. `proposed_symbols.patch` is an unapplied review proposal. Function sizes and symbol metadata come from the local RSBE01_01 symbols table; behavioral observations were checked against local generated assembly. No target instructions are reproduced here.

## Evidence-backed proposals

H = high confidence in behavior/class; M = inferred source spelling or overload. Return types are omitted from CodeWarrior mangling, so signatures below matter independently of the patch.

| Address | Proposed C++ signature | Confidence | Evidence / callers |
|---|---|---|---|
| 0x8018F2EC | `nw4r::g3d::ResMat ResMdl::GetResMat(int) const` | H/M | Material dictionary at model +0x28; adjacent duplicate unsigned overload. OGWS exports the signed overload followed by unsigned, both 0x54 bytes. Ending/title call this overload. Signedness follows that symbol sequence, not a distinguishable runtime check. |
| 0x8018F340 | `ResMat ResMdl::GetResMat(u32) const` | H | Same dictionary; indexed 16-byte entries, relative payload pointer. OGWS unsigned overload is also 0x54 bytes. Battlefield and adventure game-over callers. |
| 0x8018F394 | `u32 ResMdl::GetResMatNumEntries() const` | H | Dictionary +4 count, zero when absent; 0x34-byte OGWS function. Battlefield, title, ending. |
| 0x80190A3C | `void ResMatTevColor::DCStore(bool sync)` | H | Cache operation over 0x80 bytes, boolean selects synchronized operation; SDK TEV display-list size is 128 bytes. OGWS same class/method and 0x1C size. Battlefield. |
| 0x80191314 | `bool ResMatTevColor::GXGetTevColor(u32 id, GXColor* out) const` | H/M | Decodes packed TEV register words into RGBA, 20-byte register stride. OGWS uses `GXTevRegID` and has size 0xBC. Brawl's already named adjacent setter uses `Ul`, so the proposal uses u32; validate enum-vs-u32 mangling before adoption. Battlefield. |
| 0x80191AA4 | `void ResMatChan::GXSetChanMatColor(GXChannelID id, GXColor color)` | H | Selects one of two 0x14-byte channel records, updates material colour at record +4; channel flags select colour/alpha writes. OGWS has same method and 0x54 size. Telop, title, ending. GXColor by-value is ABI-passed indirectly here. |
| 0x80191B9C | `bool ResMatChan::GXGetChanMatColor(GXChannelID id, GXColor* out) const` | H | Same two channel records and colour offset, copies RGBA and returns true; OGWS size 0x38 and signature. Telop, title, ending. |
| 0x801B01BC | `ResMatChan ScnMdl::CopiedMatAccess::GetResMatChan() const` | H/M | Cached field +0x14; fallback material +0x3EC via material-index lookup. SDK CopiedMatAccess +0x14 is Chan, whereas TEV colour is +0x24. Const/no-argument spelling inferred for Brawl's fallback getter; OGWS only names its boolean mutable variant. Telop/title/ending. |
| 0x801B021C | `ResGenMode ScnMdl::CopiedMatAccess::GetResGenMode() const` | H/M | Cached field +0x18, fallback material +0x14. SDK layouts agree. Const/no-argument spelling remains inferred. Adventure game-over. |
| 0x801AFF4C | `ResTexObj ScnMdl::CopiedMatAccess::GetResTexObj(bool markDirty)` | H | Cached field +8; optional dirty bit in per-material flags; 0x48 bytes matches OGWS. Called by the MuObject texture replacement helper. |
| 0x8018D4D0 | `ResTex ResFile::GetResTex(int index) const` | H/M | Finds texture resource dictionary then indexes 16-byte entries. OGWS signed index getter is 0x98 bytes, as here; signedness is not proved by a negative-index guard. Telop and MuObject texture replacement. |
| 0x8018D568 | `u32 ResFile::GetResTexNumEntries() const` | H | Same resource group name as preceding texture getter; dictionary count or zero; SDK header declares this method. Telop. |
| 0x80192A44 | `bool ResTex::GetTexObjParam(void**, u16*, u16*, GXTexFmt*, float*, float*, GXBool*) const` | H | TEX0 flags, dimensions, format and LOD fields; OGWS signature and 0xBC size. Telop and MuObject. |
| 0x800B6E08 | `void MuObject::setObjScale(Vec3f*)` | H/M | Writes sceneModel (+0x10 in MuObject) scale at +0xDC/+0xE0/+0xE4, then calls its vtable +0x20 with options 2 and 5. Community header distinguishes this from node scale. Exact spelling inferred; no other-game MuObject symbol established. Telop, figure demo, visual menu. |
| 0x800B70D0 | `void MuObject::changeMaterialTex(const char* materialName, GXTexObj*)` | H/M | Named material lookup, material ID, CopiedMatAccess texture map 0, reads supplied GXTexObj and initializes destination. This overload is absent from community header; name inferred from its other changeMaterialTex overloads. Telop and larger menus. |

| 0x8018D6D8 | `ResAnmChr ResFile::GetResAnmChr(int index) const` | H/M | Resource-group identity `AnmChr` in main.dol resource-name metadata; same 0x98-byte indexed getter pattern and OGWS signed-index symbol. Signedness follows SDK symbols. Material-related animation dependency of st_dxyorster/st_dxgarden. |
| 0x8018D8E0 | `ResAnmVis ResFile::GetResAnmVis(int index) const` | H/M | Resource-group identity `AnmVis` in main.dol resource-name metadata; same 0x98-byte indexed getter pattern and OGWS signed-index symbol. Signedness follows SDK symbols. Material-related animation dependency of st_dxyorster/st_dxgarden. |
| 0x8018DAE8 | `ResAnmClr ResFile::GetResAnmClr(int index) const` | H/M | Resource-group identity `AnmClr` in main.dol resource-name metadata; same 0x98-byte indexed getter pattern and OGWS signed-index symbol. Signedness follows SDK symbols. Material-related animation dependency of st_dxyorster/st_dxgarden. |
| 0x8018DCF0 | `ResAnmTexPat ResFile::GetResAnmTexPat(int index) const` | H/M | Resource-group identity `AnmTexPat` in main.dol resource-name metadata; same 0x98-byte indexed getter pattern and OGWS signed-index symbol. Signedness follows SDK symbols. Material-related animation dependency of st_dxyorster/st_dxgarden. |
| 0x8018DEF8 | `ResAnmTexSrt ResFile::GetResAnmTexSrt(int index) const` | H/M | Resource-group identity `AnmTexSrt` in main.dol resource-name metadata; same 0x98-byte indexed getter pattern and OGWS signed-index symbol. Signedness follows SDK symbols. Material-related animation dependency of st_dxyorster/st_dxgarden. |
| 0x801910DC | `void ResGenMode::GXSetCullMode(GXCullMode)` | H/M | Null-checked resource update at +4, SDK ResGenMode layout places cull mode after four count bytes; game-over passes GetResGenMode result. Enum spelling inferred from SDK header. |
| 0x801AAFF0 | `void ScnObj::SetPriorityDrawOpa(int priority)` | H | Clamps signed input to 0-255, stores scene-object byte at 0xD0; OGWS exports same 0x24-byte method and SDK scene-object layout agrees. Boot/name/map menus. |
| 0x801AB014 | `void ScnObj::SetPriorityDrawXlu(int priority)` | H | Clamps signed input to 0-255, stores scene-object byte at 0xD1; OGWS exports same 0x24-byte method and SDK scene-object layout agrees. Boot/name/map menus. |

**Material correction:** the telop opaque wrapper currently calls these addresses through a TEV-colour-shaped declaration. Its four-byte resource wrapper can preserve ABI while carrying the wrong class name. The channel record offsets establish ResMatChan. Do not change the matched source or its declarations as part of this proposal; naming/header cleanup requires a separate normal-build and 127/127 check.

These SDK resource wrappers are not identified through vtable positions. MuObject's scale helper does use a scene-object virtual call; the texture helper uses named material/resource access calls. No unverified MuObject vtable identity is claimed.

## Coverage and unresolved calls

`callee_inventory.csv` contains the direct unnamed calls in the MuObject implementation address band (0x800B5328-0x800B7FFF) and nw4r resource/scene band (0x8018CF00-0x801B0FFF), from stage/menu modules with at most 16,000 bytes of unsourced code, plus telop, reserved Battlefield, and candidate groups in CANDIDATE_QUEUE.md regardless of their containing REL size. It records callers and current symbol sizes, including unclassified calls. The band includes non-material scene/animation routines; inclusion does not itself identify a function as MuObject or material code. Indirect calls and tail calls are not exhaustively covered. Unknown signatures are marked unresolved instead of guessed.

Remaining useful targets include animation-frame helpers at 0x800B61C0/0x800B6310, the matrix helper at 0x800B6838, texture-resource overloads at 0x800B7184/0x800B7224. Their partial behavior is insufficient to assert original names. The inventory prevents these from silently disappearing behind the 23 proposed names.

## Primary external references

Compared with matching Wii Sports nw4r work at OGWS commit `27fa94a593096eed7442efc4e70981fd52025b9c`:

- [OGWS symbol map](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/config/RSPE01_01/symbols.txt): matching method names and sizes, not proof of byte identity across games.
- [Material resources](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/include/nw4r/g3d/res/g3d_resmat.h): channel, TEV and generation-mode layouts/signatures.
- [ScnMdl](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/include/nw4r/g3d/g3d_scnmdl.h): CopiedMatAccess field identities.
- [ResMdl](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/include/nw4r/g3d/res/g3d_resmdl.h), [ResFile](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/include/nw4r/g3d/res/g3d_resfile.h), [ResTex](https://github.com/doldecomp/ogws/blob/27fa94a593096eed7442efc4e70981fd52025b9c/include/nw4r/g3d/res/g3d_restex.h): resource dictionaries, overloads and texture parameters.

Local evidence: `brawl/config/RSBE01_01/symbols.txt`, generated RSBE01_01 assembly, `include/lib/BrawlHeaders/Brawl/Include/mu/mu_object.h`, and generated menu/stage call sites. Those local assembly files remain private and are not copied into this directory. No compiler matching or 127-file verification was performed for research-only names.
