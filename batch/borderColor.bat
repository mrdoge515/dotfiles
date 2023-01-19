@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

cd /d %~dp0
echo Windows Registry Editor Version 5.00 > color.reg
echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\DWM] >> color.reg
echo "ColorPrevalence"=dword:00000001 >> color.reg
echo "AccentColor"=dword:ff000000 >> color.reg
call regedit.exe /s "color.reg"
del color.reg /q
echo exiting..
powershell start-sleep -milliseconds 800
exit /b