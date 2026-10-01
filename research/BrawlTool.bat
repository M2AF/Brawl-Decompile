@echo off
rem Double-click to open the BrawlTool window.
cd /d "%~dp0"
start "" "%~dp0..\.venv\Scripts\pythonw.exe" -m brawltool.gui
