@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

@echo off
set dst=TestStateSyncServer
set src=TestStateSync

if not exist %dst% (
md "%~dp0%dst%"
)

mklink /d "%~dp0%dst%\Assets" "%~dp0%src%\Assets"

pause