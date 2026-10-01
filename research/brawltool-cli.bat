@echo off
rem Command line: brawltool-cli.bat COMMAND ...   (brawltool-cli.bat --help)
cd /d "%~dp0"
"%~dp0..\.venv\Scripts\python.exe" -m brawltool %*
