"""Apply the hand-audited Link plan with BrawlTool's atomic apply_status_splits."""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[4]
sys.path.insert(0, str(ROOT / "research"))
from brawltool.reference_status_splits import _parse_reference_output
from brawltool.apply_status_splits import apply_status_splits

repo = ROOT / "brawl-codex10"
assert repo.resolve().name == "brawl-codex10"
plan = _parse_reference_output(Path(__file__).with_name("manual_splits.txt").read_text())
for section in ("text", "data", "bss", "ctors", "rodata"):
    import re
    ranges = []
    for proposal in plan.proposals:
        for line in proposal.lines:
            m = re.search(r"\." + section + r"\s+start:(0x\w+) end:(0x\w+)", line)
            if m:
                lo, hi = (int(s, 16) for s in m.groups())
                assert lo < hi, (proposal.unit, section)
                if section == "data": assert lo % 8 == 0
                ranges.append((lo, hi))
    assert all(a[1] <= b[0] for a, b in zip(sorted(ranges), sorted(ranges)[1:]))
units = apply_status_splits("ft_link", plan.proposals,
    {v: repo / "config" / v / "rels/ft_link/splits.txt" for v in ("RSBE01_01", "RSBE01_02")},
    repo / "configure.py")
print("Applied manually audited proposals; no generator ranges used:")
print("\n".join(units))
