@echo off
set "TOOL_DIR=%~dp0"
echo Setting up Merge-Consistency-Engine (mce) for Windows...

:: 1. Create mce.bat shim in the tool directory
echo @echo off > "%TOOL_DIR%mce.bat"
echo python "%%~dp0main.py" %%* >> "%TOOL_DIR%mce.bat"

:: 2. Add the tool directory to the user's PATH permanently
setx PATH "%PATH%;%TOOL_DIR%"

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║ SUCCESS: Merge-Consistency-Engine (mce) is installed!  ║
echo ╚══════════════════════════════════════════════════════╝
echo.
echo How to use:
echo   1. RESTART your terminal (Command Prompt, PowerShell, or Windows Terminal).
echo   2. Navigate to any Git repository with merge conflicts.
echo   3. Run 'mce --all' to resolve everything.
echo   4. Run 'mce filename' to resolve a specific file.
echo.
echo Installation Directory: %TOOL_DIR%
echo Command Name: mce
echo.
pause
