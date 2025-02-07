@echo off
setlocal enabledelayedexpansion

:: Internet Connection Check
ping 8.8.8.8 -n 1 -w 1000 > nul
if %errorlevel% neq 0 (
    call :show_error "hey! connect to internet first :("
    exit /b
)

:: Open Notepad and inject text
start notepad.exe
timeout /t 1 > nul

:: Create VBS script to type text
echo Set WshShell = WScript.CreateObject("WScript.Shell") > "%temp%\type.vbs"
echo WshShell.AppActivate "Notepad" >> "%temp%\type.vbs"
echo WScript.Sleep 300 >> "%temp%\type.vbs"
echo WshShell.SendKeys "haha, corngatulations, i hacked ur computer, now watch this: https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9" >> "%temp%\type.vbs"
cscript //nologo "%temp%\type.vbs"
del "%temp%\type.vbs"

:: Open YouTube link
start "" "https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"
exit /b

:show_error
echo MsgBox %~1, vbCritical, "Error" > "%temp%\error.vbs"
cscript //nologo "%temp%\error.vbs"
del "%temp%\error.vbs"
exit /b
