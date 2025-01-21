:: This script creates a symlink to the game binaries to account for different installation directories on different systems.

@echo off
set /p path="C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers\Bin64\Plugins\Local"
cd %~dp0
rmdir Bin64 > nul 2>&1
mklink /J Bin64 "%path%"
if errorlevel 1 goto Error
echo Done!

echo You can now open the project without issue.
goto EndFinal

:Error
echo An error occured creating the symlink.
goto EndFinal

:EndFinal
pause
