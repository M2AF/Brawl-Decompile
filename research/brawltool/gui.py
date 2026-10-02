"""BrawlTool window: one button per operation, a live log, and a Stop button. Start with BrawlTool.bat."""
from __future__ import annotations

import queue
import threading
import tkinter as tk
from tkinter import messagebox, scrolledtext, simpledialog, ttk

from . import ops
from .common import BRAWL, BRANCH, Runner, ToolError, git

BG, FG, ACCENT, MUTED = "#0e0c0b", "#f4efe6", "#ef6a5b", "#9a948b"


class App:
    def __init__(self, root: tk.Tk):
        self.root = root
        self.q: "queue.Queue[str]" = queue.Queue()
        self.runner: Runner | None = None
        root.title("BrawlTool — RSBE01_01")
        root.geometry("1100x760")
        root.configure(bg=BG)
        style = ttk.Style(root)
        style.theme_use("clam")
        style.configure(".", background=BG, foreground=FG, fieldbackground="#1b1715")
        style.configure("TButton", padding=6, background="#2a2522", foreground=FG)
        style.map("TButton", background=[("active", ACCENT), ("disabled", "#1b1715")], foreground=[("disabled", MUTED)])
        style.configure("TLabelframe", background=BG, foreground=FG)
        style.configure("TLabelframe.Label", background=BG, foreground=ACCENT)
        style.configure("Muted.TLabel", foreground=MUTED, background=BG)
        style.configure("TCombobox", fieldbackground="#1b1715", foreground=FG, background="#2a2522", arrowcolor=FG)
        style.map("TCombobox", fieldbackground=[("readonly", "#1b1715")], foreground=[("readonly", FG)],
                  selectbackground=[("readonly", "#1b1715")], selectforeground=[("readonly", FG)])
        root.option_add("*TCombobox*Listbox.font", ("Consolas", 10))
        root.option_add("*TCombobox*Listbox.background", "#1b1715")
        root.option_add("*TCombobox*Listbox.foreground", FG)
        root.option_add("*TCombobox*Listbox.selectBackground", ACCENT)
        root.option_add("*TCombobox*Listbox.selectForeground", "#000")

        top = ttk.Frame(root, padding=10); top.pack(fill="x")
        self.head = ttk.Label(top, text="", style="Muted.TLabel"); self.head.pack(side="left")
        self.stop_btn = ttk.Button(top, text="Stop", command=self.stop, state="disabled"); self.stop_btn.pack(side="right")
        self.busy = ttk.Label(top, text="", foreground=ACCENT, background=BG); self.busy.pack(side="right", padx=10)

        body = ttk.Frame(root, padding=(10, 0)); body.pack(fill="x")
        self.buttons: list[ttk.Button] = []

        f = ttk.Labelframe(body, text="Autopilot", padding=8); f.pack(fill="x", pady=4)
        self._btn(f, "Plan (dry run)", lambda r: ops.autopilot(r, dry_run=True))
        self._btn(f, "Run autopilot", self.autopilot_dialog, threaded=False)
        ttk.Label(f, text="Preflight → integrate Codex branches → re-check/promote our WIP → status → summary",
                  style="Muted.TLabel").pack(side="left", padx=10)

        f = ttk.Labelframe(body, text="Project", padding=8); f.pack(fill="x", pady=4)
        self._btn(f, "Build && verify (127/127)", lambda r: ops.build(r))
        self._btn(f, "Clean rebuild", lambda r: ops.build(r, clean=True))
        self._btn(f, "Open ObjDiff", ops.open_objdiff)
        self._btn(f, "Independent check", ops.independent_check)
        self._btn(f, "Status page", lambda r: ops.status_page(r))
        self._btn(f, "Rank candidates", lambda r: ops.rank(r))

        f = ttk.Labelframe(body, text="Work on a TU", padding=8); f.pack(fill="x", pady=4)
        row0 = ttk.Frame(f); row0.pack(fill="x", pady=(0, 6))
        ttk.Label(row0, text="TU", style="Muted.TLabel").pack(side="left", padx=(0, 4))
        self.tu = ttk.Combobox(row0, width=95, state="readonly", font=("Consolas", 10))
        self.tu.pack(side="left", padx=(0, 8))
        self.tu.bind("<<ComboboxSelected>>", self.pick_tu)
        ttk.Button(row0, text="Reload list", command=self.load_units).pack(side="left")
        row = ttk.Frame(f); row.pack(fill="x")
        self.module = self._entry(row, "Module", "st_kart", 14)
        self.unit = self._entry(row, "Unit (no .cpp)", "mo_stage/st_kart/st_kart", 38)
        self.func = self._entry(row, "Function(s) to show", "", 30)
        row2 = ttk.Frame(f); row2.pack(fill="x", pady=(6, 0))
        self._btn(row2, "Diff", lambda r: ops.diff(r, self.module.get(), self.unit.get(), tuple(self.func.get().split())))
        self._btn(row2, "Diff (all details)", lambda r: ops.diff(r, self.module.get(), self.unit.get(), verbose=True))
        self._btn(row2, "Probe full REL", lambda r: ops.probe(r, self.module.get(), self.unit.get()))
        self._btn(row2, "m2c draft", lambda r: ops.draft(r, self.module.get(), self.unit.get(), tuple(self.func.get().split())))
        self._btn(row2, "New split…", self.split_dialog, threaded=False)
        self._btn(row2, "Promote…", self.promote_dialog, threaded=False)

        f = ttk.Labelframe(body, text="Codex branches", padding=8); f.pack(fill="x", pady=4)
        self.branch = ttk.Combobox(f, width=30, values=self.codex_branches()); self.branch.pack(side="left", padx=(0, 8))
        self._btn(f, "Refresh list", lambda r: self.root.after(0, lambda: self.branch.configure(values=self.codex_branches())))
        self._btn(f, "Integrate", lambda r: ops.integrate(r, self.branch.get()))
        self._btn(f, "Integrate + clean up", lambda r: ops.integrate(r, self.branch.get(), cleanup_after=True))
        self._btn(f, "Clean up worktree", lambda r: ops.cleanup(r, self.branch.get()))

        self.log = scrolledtext.ScrolledText(root, bg="#000", fg=FG, insertbackground=FG, font=("Consolas", 10), wrap="none")
        self.log.pack(fill="both", expand=True, padx=10, pady=10)
        self.log.tag_configure("pass", foreground="#7fd18b"); self.log.tag_configure("fail", foreground=ACCENT)
        self.refresh_head()
        self.load_units()
        root.after(100, self.pump)

    # -- widgets
    def _btn(self, parent, text, fn, threaded=True):
        b = ttk.Button(parent, text=text.replace("&&", "&"), command=(lambda: self.start(text, fn)) if threaded else fn)
        b.pack(side="left", padx=3)
        self.buttons.append(b)
        return b

    def _entry(self, parent, label, default, width):
        ttk.Label(parent, text=label, style="Muted.TLabel").pack(side="left", padx=(0, 4))
        e = ttk.Entry(parent, width=width); e.insert(0, default); e.pack(side="left", padx=(0, 12))
        return e

    def load_units(self):
        try:
            self.units = ops.list_units()
        except Exception as e:
            self.units = []
            self.q.put(f"ERROR loading TU list: {e}")
        n = sum(1 for st, _, _, _ in self.units if st == "in progress")
        labels = [f"{'IN PROGRESS' if st == 'in progress' else 'matching   '} {'ours    ' if ours else 'upstream'}  {mod:<14} {unit}"
                  for st, mod, unit, ours in self.units]
        self.tu.configure(values=labels)
        self.q.put(f"TU list: {n} in progress, {len(self.units) - n} matching (in-progress first).")

    def pick_tu(self, _event=None):
        i = self.tu.current()
        if 0 <= i < len(self.units):
            _, mod, unit, _ = self.units[i]
            for e, v in ((self.module, mod), (self.unit, unit)):
                e.delete(0, "end"); e.insert(0, v)

    def codex_branches(self):
        try:
            out = git(Runner(lambda s: None), "branch", "--list", "codex/*", "--format=%(refname:short)")
            return out.splitlines()
        except Exception:
            return []

    def refresh_head(self):
        try:
            r = Runner(lambda s: None)
            self.head.configure(text=f"{BRAWL}  ·  {git(r, 'rev-parse', '--abbrev-ref', 'HEAD')} @ {git(r, 'log', '--oneline', '-1')}")
        except Exception as e:  # git missing etc.
            self.head.configure(text=str(e))

    # -- task running
    def start(self, name, fn):
        if self.runner:
            return
        self.runner = Runner(self.q.put)
        for b in self.buttons:
            b.configure(state="disabled")
        self.stop_btn.configure(state="normal")
        self.busy.configure(text=f"Running: {name.replace('&&', '&')}…")
        self.q.put(f"\n=== {name.replace('&&', '&')} ===")

        def work(r=self.runner):
            try:
                result = fn(r)
                if result is False:
                    self.q.put("FAIL: see above")
                self.q.put("=== done ===")
            except ToolError as e:
                self.q.put(f"ERROR: {e}")
            except Exception as e:  # keep the window alive on unexpected errors
                self.q.put(f"ERROR (unexpected): {type(e).__name__}: {e}")
            finally:
                self.q.put("\x00DONE")
        threading.Thread(target=work, daemon=True).start()

    def stop(self):
        if self.runner:
            self.runner.cancel()
            self.q.put("Stopping…")

    def pump(self):
        try:
            while True:
                line = self.q.get_nowait()
                if line == "\x00DONE":
                    self.runner = None
                    for b in self.buttons:
                        b.configure(state="normal")
                    self.stop_btn.configure(state="disabled")
                    self.busy.configure(text="")
                    self.refresh_head()
                    continue
                tag = "pass" if line.startswith(("PASS", "PROMOTED", "INTEGRATED", "REMOVED", "SAME", "AUTOPILOT DONE")) else \
                      "fail" if line.startswith(("ERROR", "FAIL", "DIFF")) else None
                self.log.insert("end", line + "\n", tag)
                self.log.see("end")
        except queue.Empty:
            pass
        self.root.after(100, self.pump)

    # -- dialogs
    def autopilot_dialog(self):
        if messagebox.askyesno("Autopilot", "Run the full routine now?\n\nIt claims the handoff lease, builds, integrates any "
                               "Codex branches with new commits, promotes in-progress TUs that now match (with commits), "
                               "refreshes the status page and writes a summary. It stops if another agent holds the lease."):
            self.start("Autopilot", lambda r: ops.autopilot(r))

    def promote_dialog(self):
        unit = self.unit.get()
        if not messagebox.askyesno("Promote", f"Run all gates and promote {unit}?\n\nProbe → build 127/127 → independent check → "
                                   "re-probe. Edits are rolled back if any gate fails."):
            return
        msg = simpledialog.askstring("Commit", "Commit message (leave empty to not commit):", parent=self.root)
        self.start("Promote", lambda r: ops.promote(r, unit, msg or None))

    def split_dialog(self):
        module, unit = self.module.get(), self.unit.get()
        spec = simpledialog.askstring("New split", f"Section ranges for {unit}.cpp in {module}, e.g.\n"
                                      "text=0x70-0x12D0 rodata=0x0-0x50 data=0x0-0x450 bss=0x8-0x18 ctors=0x0-0x4",
                                      parent=self.root)
        if not spec:
            return
        fa = simpledialog.askstring("force_active", "Stage create symbol for force_active (optional), e.g. create__5stIceFv:",
                                    parent=self.root) or None
        ranges = {"." + k: v for k, v in (x.split("=", 1) for x in spec.split())}
        self.start("New split", lambda r: (ops.split(r, module, unit, ranges, fa), ops.build(r)))


def main():
    root = tk.Tk()
    App(root)
    root.mainloop()


if __name__ == "__main__":
    main()
