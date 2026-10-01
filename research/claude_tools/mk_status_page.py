# mk_status_page.py: build research/status/brawl_status.html from the latest build's progress report.
# Run after `ninja` in brawl/:  python ../research/claude_tools/mk_status_page.py
# Inputs (read-only): brawl/build/RSBE01_01/report.json, build/RSBE01_01/ok, config/RSBE01_01/verified_objects.txt,
# research/PROJECT_STATE.md (near-miss list), git log, research/status/logo.png.
import base64
import datetime
import html
import math
import json
import re
import subprocess
from collections import defaultdict
from pathlib import Path

WS = Path(__file__).resolve().parents[2]
BRAWL = WS / "brawl"
OUT = WS / "research" / "status" / "brawl_status.html"
LOGO = WS / "research" / "status" / "logo.png"

report = json.loads((BRAWL / "build/RSBE01_01/report.json").read_text())
num = lambda v: float(v) if v not in (None, "") else 0.0

# Per-module code/data totals and source-linked ("complete") amounts.
mods = defaultdict(lambda: {"code": 0, "done": 0, "data": 0, "data_done": 0, "units": 0, "units_done": 0})
for u in report["units"]:
    m, me = u["metadata"]["module_name"], u["measures"]
    s = mods[m]
    s["code"] += num(me.get("total_code")); s["done"] += num(me.get("complete_code"))
    s["data"] += num(me.get("total_data")); s["data_done"] += num(me.get("complete_data"))
    s["units"] += 1; s["units_done"] += int(num(me.get("complete_units")))

def pct(done, total):
    return 100.0 * done / total if total else 100.0

def fmt(p):
    # Round down so nothing reads 100% until it is.
    if p >= 100: return "100%"
    if p >= 10: return f"{math.floor(p * 10) / 10:.1f}%"
    return f"{math.floor(p * 100) / 100:.2f}%"

def is_complete(s):
    return s["code"] > 0 and s["done"] >= s["code"] and s["data_done"] >= s["data"]

PRETTY = {"main": "main.dol"}
def label(m):
    for pre in ("sora_adv_menu_", "sora_menu_", "sora_", "st_dx", "st_", "ft_"):
        if m.startswith(pre):
            return m[len(pre):]
    return PRETTY.get(m, m)

def group(title, subtitle, members):
    code = sum(mods[m]["code"] for m in members); done = sum(mods[m]["done"] for m in members)
    data = sum(mods[m]["data"] for m in members); data_done = sum(mods[m]["data_done"] for m in members)
    return {"title": title, "subtitle": subtitle, "p": pct(done, code), "dp": pct(data_done, data),
            # Item value = code+data bytes linked, so 100% always coincides with a strike-out.
            "items": [(label(m), pct(mods[m]["done"] + mods[m]["data_done"], mods[m]["code"] + mods[m]["data"]), is_complete(mods[m])) for m in members],
            "complete": all(is_complete(mods[m]) for m in members), "stats": None}

def stat_card(title, subtitle, m):
    s = mods[m]
    return {"title": title, "subtitle": subtitle, "p": pct(s["done"], s["code"]), "dp": pct(s["data_done"], s["data"]),
            "items": None, "complete": is_complete(s),
            "stats": [f"Code {int(s['done']):,} / {int(s['code']):,} bytes", f"Data {fmt(pct(s['data_done'], s['data']))}",
                      f"Units {s['units_done']} / {s['units']}"]}

names = sorted(mods)
cards = [
    stat_card("Main executable", "main.dol", "main"),
    stat_card("Battle engine", "sora_melee", "sora_melee"),
    stat_card("Enemies", "sora_enemy", "sora_enemy"),
    group("Subspace Emissary", "sora_adv_*", ["sora_adv_stage"] + [m for m in names if m.startswith("sora_adv_menu_")]),
    group("Scenes &amp; minigames", "sora_scene, sora_minigame", ["sora_scene", "sora_minigame"]),
    group("Menus", "sora_menu_*", [m for m in names if m.startswith("sora_menu_")]),
    group("Melee stages", "st_dx*", [m for m in names if m.startswith("st_dx")]),
    group("Brawl stages", "st_*", [m for m in names if m.startswith("st_") and not m.startswith("st_dx")]),
    group("Fighters", "ft_*", [m for m in names if m.startswith("ft_")]),
]
cards.sort(key=lambda c: not c["complete"])  # completed (struck-out) cards first, like the mockup

M = report["measures"]
total_p = num(M["complete_code_percent"]); data_p = num(M["complete_data_percent"])
units = f"{int(num(M['complete_units'])):,} / {int(num(M['total_units'])):,}"
verified = [l.strip() for l in (BRAWL / "config/RSBE01_01/verified_objects.txt").read_text().splitlines() if l.strip() and not l.startswith("#")]
ok_file = BRAWL / "build/RSBE01_01/ok"
ok_text = ok_file.read_text().strip() if ok_file.exists() else ""
build_ok = "127/127" in ok_text
modules_done = sum(1 for m in mods if is_complete(mods[m]))

state = (WS / "research/PROJECT_STATE.md").read_text(encoding="utf-8")
sec = state.split("## Function-only matches and near-misses (not promoted)", 1)[-1].split("\n## ", 1)[0]
near = []
for line in sec.splitlines():
    m = re.match(r"- \*\*(.+?)\*\*:?\s*(.*)", line)
    if m:
        near.append((m.group(1).replace("`", ""), re.sub(r"`", "", m.group(2)).split(". ")[0][:150]))

def git(*a):
    return subprocess.run(["git", "-C", str(BRAWL), *a], capture_output=True, text=True).stdout.strip()
head = git("log", "-1", "--format=%h")
recent = [l.split("\t", 2) for l in git("log", "-8", "--format=%h\t%ad\t%s", "--date=format:%b %d").splitlines()]

logo = base64.b64encode(LOGO.read_bytes()).decode()
now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M")

def ring(p, size="sm"):
    return f'<div class="ring {size}" style="--p:{min(p, 100):.3f}"><span>{fmt(p)}</span></div>'

def card_html(c):
    cls = "card done" if c["complete"] else "card"
    if c.get("span", 1) > 1: cls += f" span{c['span']}"
    if c.get("single"): cls += " single"
    body = ""
    if c["stats"]:
        body = "<ul class='stats'>" + "".join(f"<li>{html.escape(s)}</li>" for s in c["stats"]) + "</ul>"
    else:
        n_done = sum(1 for _, _, d in c["items"] if d)
        body = f"<p class='count'>{n_done} of {len(c['items'])} modules fully source-built &middot; values are code+data</p><ul class='items'>"
        for name, p, d in sorted(c["items"], key=lambda t: (not t[2], -t[1], t[0])):
            body += f"<li class='{'done' if d else ''}'><span class='n'>{html.escape(name)}</span><span class='v'>{fmt(p)}</span></li>"
        body += "</ul>"
    return (f"<section class='{cls}'><header>{ring(c['p'])}<div><h2>{c['title']}</h2>"
            f"<p class='sub'>{html.escape(c['subtitle'])} &middot; data {fmt(c['dp'])}</p></div></header>{body}</section>")

# Layout (4-column grid):
#   row 1: short cards (stats, or lists of <= 4 modules), equal height;
#   row 2: Subspace Emissary (1 col) | Menus (fills the middle, 2 cols) | Melee stages (1 col);
#   row 3: Brawl stages (2 cols) | Fighters (2 cols).
summary_cards = [c for c in cards if c["items"] is None or len(c["items"]) <= 4]
list_cards = [c for c in cards if c not in summary_cards]
SPAN = {"Menus": 2, "Brawl stages": 2, "Fighters": 2}
ORDER = ["Subspace Emissary", "Menus", "Melee stages", "Brawl stages", "Fighters"]
list_cards.sort(key=lambda c: ORDER.index(c["title"]) if c["title"] in ORDER else len(ORDER))
for c in list_cards:
    c["span"] = SPAN.get(c["title"], 1)
    c["single"] = c["title"] == "Melee stages"  # one module per row, fills its row height

# ---- Treemap: one rectangle per object unit, area = code bytes, grouped by module.
# green = linked from source and matching, blue = source compiled but not matching yet (shade = fuzzy %), grey = original code.
TM_W, TM_H = 1000.0, 460.0

def squarify(items, x, y, w, h):
    """items: [(value, payload)] sorted descending; returns [(payload, x, y, w, h)]."""
    out, items = [], [i for i in items if i[0] > 0]
    total = sum(v for v, _ in items)
    if not items or w <= 0 or h <= 0:
        return out
    scale = w * h / total
    rest = [(v * scale, p) for v, p in items]
    while rest:
        short = min(w, h)
        row, area = [rest[0]], rest[0][0]
        def worst(r, a):
            lo, hi = min(v for v, _ in r), max(v for v, _ in r)
            return max(short * short * hi / (a * a), a * a / (short * short * lo))
        i = 1
        while i < len(rest) and worst(row + [rest[i]], area + rest[i][0]) <= worst(row, area):
            row.append(rest[i]); area += rest[i][0]; i += 1
        rest = rest[i:]
        thick = area / short
        pos = 0.0
        for v, p in row:
            side = v / thick
            if w >= h:
                out.append((p, x, y + pos, thick, side))
            else:
                out.append((p, x + pos, y, side, thick))
            pos += side
        if w >= h:
            x += thick; w -= thick
        else:
            y += thick; h -= thick
    return out

def unit_state(u):
    me = u["measures"]; total = num(me.get("total_code")); done = num(me.get("complete_code"))
    fuzzy = me.get("fuzzy_match_percent")
    if total and done >= total: return "ok", 100.0
    if u["name"].split("/")[-1].startswith("auto_") or fuzzy in (None, ""): return "orig", 0.0
    return "wip", float(fuzzy)

by_mod = defaultdict(list)
for u in report["units"]:
    if num(u["measures"].get("total_code")) > 0:
        by_mod[u["metadata"]["module_name"]].append(u)
mod_items = sorted(((sum(num(u["measures"]["total_code"]) for u in us), (m, us)) for m, us in by_mod.items()), key=lambda t: -t[0])
tm_parts, tm_counts = [], {"ok": 0, "wip": 0, "orig": 0}
for (m, us), mx, my, mw, mh in squarify(mod_items, 0, 0, TM_W, TM_H):
    pad = 0.6
    uitems = sorted(((num(u["measures"]["total_code"]), u) for u in us), key=lambda t: -t[0])
    for u, ux, uy, uw, uh in squarify(uitems, mx + pad, my + pad, mw - 2 * pad, mh - 2 * pad):
        st, fz = unit_state(u)
        tm_counts[st] += 1
        me = u["measures"]; short = u["name"].split("/")[-1]
        tip = (f"{short} ({m}) | {int(num(me['total_code'])):,} bytes | "
               + {"ok": "matching, linked from source", "wip": f"source built, {fz:.1f}% fuzzy, not matching", "orig": "original code (not decompiled)"}[st])
        shade = f' style="--f:{fz:.0f}"' if st == "wip" else ""
        tm_parts.append(f'<rect class="{st}" data-n="{html.escape(short.lower())} {html.escape(m.lower())}" x="{ux:.2f}" y="{uy:.2f}" '
                        f'width="{max(uw, 0):.2f}" height="{max(uh, 0):.2f}"{shade}><title>{html.escape(tip)}</title></rect>')
    tm_parts.append(f'<rect class="mod" x="{mx:.2f}" y="{my:.2f}" width="{mw:.2f}" height="{mh:.2f}"/>')
TREEMAP_SVG = f'<svg id="tm" viewBox="0 0 {TM_W:.0f} {TM_H:.0f}" preserveAspectRatio="none" role="img" aria-label="Treemap of object units by code size">{"".join(tm_parts)}</svg>'
TREEMAP_JS = """<script>
(function(){var q=document.getElementById('tmq'),rs=document.querySelectorAll('#tm rect[data-n]'),c=document.getElementById('tmc');
function run(){var t=q.value.trim().toLowerCase(),n=0;rs.forEach(function(r){var hit=!t||r.getAttribute('data-n').indexOf(t)>-1;r.classList.toggle('dim',!hit);if(hit&&t)n++;});c.textContent=t?n+' units match':'';}
q.addEventListener('input',run);})();
</script>"""

near_html = "".join(f"<li><b>{html.escape(n)}</b> {html.escape(d)}</li>" for n, d in near) or "<li>None</li>"
recent_html = "".join(f"<li><code>{h}</code><span class='d'>{d}</span>{html.escape(s)}</li>" for h, d, s in recent)

page = f"""<!doctype html>
<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>Brawl Decompile Progress</title>
<meta name="color-scheme" content="dark">
<style>
:root {{ --bg:#000; --fg:#f4efe6; --muted:#9a948b; --line:#2a2522; --card:#0e0c0b; --red:#ef6a5b; --ring-bg:#3a2a26; --cream:#f3eee4; --ok:#7fd18b; }}
* {{ box-sizing:border-box; }}
body {{ margin:0; background:var(--bg); color:var(--fg); font:15px/1.45 system-ui,-apple-system,"Segoe UI",Roboto,sans-serif; }}
.wrap {{ max-width:1400px; margin:0 auto; padding-inline:clamp(16px,3vw,40px); padding-block:24px 48px; }}
.top {{ display:grid; grid-template-columns:1fr auto 1fr; align-items:center; gap:16px; }}
.top .logo {{ grid-column:2; }}
.top .logo img {{ display:block; width:min(560px,70vw); height:auto; }}
.top .total {{ grid-column:3; justify-self:end; text-align:center; }}
.total h1 {{ font-size:1.6rem; font-weight:500; margin:0 0 10px; }}
.ring {{ --size:46px; --w:5px; width:var(--size); height:var(--size); border-radius:50%; flex:none; display:grid; place-items:center;
  background:radial-gradient(closest-side, var(--cream) calc(100% - var(--w)), transparent calc(100% - var(--w) + 1px)),
             conic-gradient(var(--red) calc(var(--p) * 1%), var(--ring-bg) 0); }}
.ring span {{ color:#1b1715; font-weight:700; font-size:.68rem; letter-spacing:-.02em; }}
.ring.lg {{ --size:150px; --w:14px; }}
.ring.lg span {{ font-size:1.9rem; }}
.bar {{ margin:28px 0 8px; }}
.bar .track {{ position:relative; height:14px; background:var(--ring-bg); border-radius:999px; overflow:hidden; }}
.bar .fill {{ position:absolute; inset:0 auto 0 0; background:linear-gradient(90deg,#c0281b,var(--red),#ffb347); border-radius:999px; min-width:6px; }}
.bar .data {{ position:absolute; top:0; bottom:0; width:2px; background:var(--cream); opacity:.7; }}
.bar .legend {{ display:flex; justify-content:space-between; gap:12px; flex-wrap:wrap; color:var(--muted); font-size:.85rem; margin-top:6px; }}
.kpis {{ display:grid; grid-template-columns:repeat(auto-fit,minmax(150px,1fr)); gap:10px; margin:18px 0 26px; }}
.kpi {{ border:1px solid var(--line); border-radius:10px; padding:8px 14px; background:var(--card); }}
.kpi b {{ display:block; font-size:1.15rem; font-variant-numeric:tabular-nums; }}
.kpi span {{ color:var(--muted); font-size:.8rem; }}
.kpi.ok b {{ color:var(--ok); }}
.tmcard {{ margin-top:26px; }}
.tmhead {{ display:flex; flex-wrap:wrap; gap:8px 20px; align-items:center; margin-bottom:10px; }}
.tmhead h3 {{ margin:0; font-weight:500; font-size:1rem; }}
.tmkey {{ display:flex; flex-wrap:wrap; gap:4px 14px; color:var(--muted); font-size:.8rem; }}
.tmkey .k {{ display:inline-block; width:10px; height:10px; border-radius:2px; margin-right:5px; vertical-align:-1px; }}
.k.ok {{ background:#2fbf4a; }} .k.wip {{ background:#1f8fd0; }} .k.orig {{ background:#3a3836; }}
.tmf {{ margin-left:auto; display:flex; align-items:center; gap:8px; color:var(--muted); font-size:.8rem; }}
.tmf input {{ background:#050403; color:var(--fg); border:1px solid var(--line); border-radius:8px; padding:5px 10px; min-width:min(260px,60vw); font:inherit; }}
#tm {{ display:block; width:100%; aspect-ratio:1000/460; background:#050403; border-radius:8px; }}
#tm rect {{ stroke:#0e0c0b; stroke-width:.35; vector-effect:non-scaling-stroke; transition:opacity .15s; }}
#tm rect.orig {{ fill:#33312f; }} #tm rect.ok {{ fill:#2fbf4a; }}
#tm rect.wip {{ fill:hsl(205 calc(40% + var(--f) * .4%) calc(30% + var(--f) * .22%)); }}
#tm rect.mod {{ fill:none; stroke:#000; stroke-width:1.2; pointer-events:none; }}
#tm rect.dim {{ opacity:.12; }}
#tm rect:not(.mod):hover {{ stroke:#fff; stroke-width:1.4; }}
.grid {{ display:grid; gap:16px; }}
.grid.summary {{ grid-template-columns:repeat(auto-fit,minmax(240px,1fr)); align-items:stretch; }}
.grid.lists {{ grid-template-columns:repeat(4,minmax(0,1fr)); align-items:stretch; margin-top:16px; }}
.card.single .items {{ columns:1; }}
.card.span2 {{ grid-column:span 2; }}
.card {{ background:var(--card); border:1px solid var(--line); border-radius:12px; padding:14px 16px; }}
@media (max-width:980px) {{ .grid.lists {{ grid-template-columns:repeat(2,minmax(0,1fr)); }} }}
@media (max-width:620px) {{ .grid.lists {{ grid-template-columns:1fr; }} .card.span2 {{ grid-column:auto; }} .top {{ grid-template-columns:1fr; }} .top .logo,.top .total {{ grid-column:1; justify-self:center; }} }}
.card header {{ display:flex; gap:12px; align-items:center; }}
.card h2 {{ font-size:1.15rem; font-weight:500; margin:0; }}
.card .sub, .card .count {{ color:var(--muted); font-size:.8rem; margin:2px 0 0; }}
.card .count {{ margin:10px 0 6px; }}
.card.done h2 {{ text-decoration:line-through; text-decoration-color:var(--red); }}
ul {{ list-style:none; margin:0; padding:0; }}
.stats {{ margin-top:10px; }}
.stats li {{ padding:3px 0; font-variant-numeric:tabular-nums; }}
.stats li::before {{ content:"\\2022"; color:var(--red); margin-right:8px; }}
.items {{ columns:2 130px; column-gap:18px; }}
.items li {{ display:flex; justify-content:space-between; gap:8px; padding:2px 0; break-inside:avoid; font-size:.88rem; }}
.items .v {{ color:var(--muted); font-variant-numeric:tabular-nums; font-size:.8rem; }}
.items li.done .n {{ text-decoration:line-through; text-decoration-color:var(--red); color:var(--muted); }}
.items li.done .v {{ color:var(--ok); }}
.panels {{ display:grid; grid-template-columns:repeat(auto-fit,minmax(320px,1fr)); gap:16px; margin-top:26px; }}
.panels h3 {{ margin:0 0 8px; font-weight:500; font-size:1rem; }}
.panels li {{ padding:4px 0; border-bottom:1px solid var(--line); font-size:.88rem; }}
.panels li:last-child {{ border-bottom:0; }}
.panels code {{ color:var(--red); margin-right:8px; }}
.panels .d {{ color:var(--muted); margin-right:8px; font-size:.8rem; }}
footer {{ color:var(--muted); font-size:.8rem; margin-top:26px; }}
</style></head><body>
<div class="wrap">
  <div class="top">
    <div class="logo"><img src="data:image/png;base64,{logo}" alt="Brawl Decompile"></div>
    <div class="total"><h1>Progress</h1>{ring(total_p, "lg")}</div>
  </div>
  <div class="bar" aria-label="Source-linked code toward 100%">
    <div class="track"><div class="fill" style="width:{min(total_p, 100):.3f}%"></div><div class="data" style="left:{min(data_p, 100):.3f}%" title="Data {fmt(data_p)}"></div></div>
    <div class="legend"><span>Source-linked code: <b>{fmt(total_p)}</b> of 100%</span><span>Data marker: {fmt(data_p)}</span><span>Target: matching rebuild of USA rev 1 (RSBE01_01)</span></div>
  </div>
  <div class="kpis">
    <div class="kpi {'ok' if build_ok else ''}"><b>{'127 / 127' if build_ok else 'not verified'}</b><span>binaries byte-identical</span></div>
    <div class="kpi"><b>{len(verified)}</b><span>source-linked TUs</span></div>
    <div class="kpi"><b>{units}</b><span>object units built from source</span></div>
    <div class="kpi"><b>{modules_done} / {len(mods)}</b><span>modules fully source-built</span></div>
    <div class="kpi"><b>{int(num(M['matched_functions'])):,} / {int(num(M['total_functions'])):,}</b><span>functions matching</span></div>
  </div>
  <div class="grid summary">{''.join(card_html(c) for c in summary_cards)}</div>
  <div class="grid lists">{''.join(card_html(c) for c in list_cards)}</div>
  <div class="panels">
    <section class="card"><h3>Near-misses (not counted)</h3><ul>{near_html}</ul></section>
    <section class="card"><h3>Recent commits</h3><ul>{recent_html}</ul></section>
  </div>
  <section class="card tmcard">
    <div class="tmhead"><h3>Unit map</h3>
      <div class="tmkey"><span><i class="k ok"></i>matching ({tm_counts['ok']})</span><span><i class="k wip"></i>source built, not matching ({tm_counts['wip']})</span><span><i class="k orig"></i>original code ({tm_counts['orig']})</span></div>
      <label class="tmf"><input id="tmq" type="search" placeholder="Filter units, e.g. gr_gw or ft_marth" aria-label="Filter units"><span id="tmc"></span></label></div>
    {TREEMAP_SVG}
    <p class="count">Each rectangle is one object unit, sized by code bytes and grouped by module. Hover for details.</p>
  </section>
  <footer>Generated {now} from build/RSBE01_01/report.json at {head}. Percentages count code linked from source only; extracted original objects do not count.</footer>
</div>
{TREEMAP_JS}
</body></html>
"""
OUT.parent.mkdir(parents=True, exist_ok=True)
OUT.write_text(page, encoding="utf-8", newline="\n")
print("wrote", OUT, f"total {fmt(total_p)}, {len(cards)} cards, {len(near)} near-misses")
