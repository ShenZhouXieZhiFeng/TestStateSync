@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

@echo off
set dst=TestStateSync2
set src=TestStateSync

if not exist %dst% (
md "%~dp0%dst%"
)

mklink /d "%~dp0%dst%\ProjectSettings" "%~dp0%src%\ProjectSettings"
mklink /d "%~dp0%dst%\Assets" "%~dp0%src%\Assets"
mklink /d "%~dp0%dst%\Packages" "%~dp0%src%\Packages"

pause