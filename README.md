# Brawl Decompile Project

A Windows-first workbench for matching decompilation of **Super Smash Bros. Brawl, USA revision 1 (RSBE01_01)**. It combines the BrawlTool workflow helpers, progress reporting. 

The goal is to replace original PowerPC code with recovered C/C++ that compiles to byte-identical output. A successful 127/127 executable build verifies the build and its original-object fallbacks; it does **not** mean every executable has been decompiled from source. Source-linked translation units are tracked separately from function-level matches and near-misses.

## Repository Layout

- `research/brawltool/` — BrawlTool GUI and command-line workflow helpers.
- `research/status/` — generated project progress page.
- `research/BINARY_CATALOG.md` — catalog of the 127 gameplay executables.
- `research/IMPLEMENTATION_SPEC.md` — technical background and matching requirements.
- `research/FUTURE_PORT_ROADMAP.md` — longer-term desktop, browser, and expanded-content direction.
- [`DECOMP_SPEEDUP_PLAN.md`](DECOMP_SPEEDUP_PLAN.md) — research findings and phased plan for improving decompilation throughput.
- `brawl/` — expected local Brawl source checkout. It has its own Git repository and is not included when this repository is cloned.

## Requirements

- Windows is the recommended development environment.
- Python, Git, and Ninja. Ninja is used by the Brawl build and is also used by BrawlTool.
- A separate Brawl source checkout configured for `RSBE01_01`.
- Your own legally obtained game disc image for the local build inputs. **Disc images are not provided here.**
- The compiler and other build tools required by the selected Brawl checkout; follow that checkout's setup instructions.

## Setup

Create the Python environment used by BrawlTool and install Ninja into it:

```powershell
py -m venv .venv
.\.venv\Scripts\python.exe -m pip install ninja
```

Provide a Brawl checkout that supports `RSBE01_01`. By default, BrawlTool looks for it in the ignored `brawl/` directory beside this README. To use a checkout elsewhere, set `BRAWLTOOL_REPO` before starting BrawlTool:

```powershell
$env:BRAWLTOOL_REPO = 'C:\path\to\brawl-checkout'
```

Follow the source checkout's instructions to initialize its dependencies and place your local game image in its expected `orig/RSBE01_01/` location. Keep the image and other original game data out of Git.

## Using BrawlTool

Launch the GUI:

```powershell
research\BrawlTool.bat
```

Or run commands from PowerShell:

```powershell
research\brawltool-cli.bat build
research\brawltool-cli.bat check
research\brawltool-cli.bat status
```

The build command runs configuration and Ninja, then requires the `OK: 127/127 binaries verified` result. Other BrawlTool actions support diffing, probing, candidate ranking, m2c drafts, promotion gates, and worktree integration. Some actions create local commits; BrawlTool does not push to GitHub.

The GUI's **Open ObjDiff** button launches ObjDiff for the active checkout. If ObjDiff is not installed, the button opens its [official releases page](https://github.com/encounter/objdiff/releases/latest). Save the Windows GUI executable as `.venv\Scripts\objdiff.exe` for BrawlTool to find it automatically.

For the full command list and behavior, see [BrawlTool's README](research/brawltool/README.md).

## Game Data

This repository does not provide a disc image. Build and analysis workflows require local game inputs from a compatible copy of Brawl. Do not commit ISO, RVZ, WBFS, or other disc-image files. Review `.gitignore` before adding generated files or research artifacts.

## Project Status

The matching decompilation is ongoing. See the [progress page](research/status/brawl_status.html) and [binary catalog](research/BINARY_CATALOG.md) for project-specific status and inventory. The upstream [doldecomp/brawl repository](https://github.com/doldecomp/brawl) contains its own source, build documentation, and contribution information; this workbench does not replace it.
