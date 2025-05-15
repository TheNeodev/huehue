@echo off
setlocal enabledelayedexpansion
mode con: cols=90 lines=30
color 0a
title [̲̅C][̲̅Y][̲̅B][̲̅E][̲̅R] [̲̅V][̲̅I][̲̅R][̲̅T][̲̅U][̲̅A][̲̅L] [̲̅I][̲̅N][̲̅F][̲̅E][̲̅C][̲̅T][̲̅I][̲̅O][̲̅N] [̲̅S][̲̅Y][̲̅S][̲̅T][̲̅E][̲̅M]

:: ASCII Art Header
echo.
echo  █▀▀ █▀▀ █▀▀ ▀█▀   ▀█▀ █░█ █▀▀   █▀▀ █▄░█ ▀█▀ █▀▀ █▀█ █▀▀ █▀▄
echo  █▄▄ ██▄ █▀░ ░█░   ░█░ █▀█ ██▄   ██▄ █░▀█ ░█░ ██▄ █▀▄ ██▄ █▄▀
echo.

:: Fake Security Scan
call :color_progress "Initializing System Scan..." 0a
for /l %%i in (1,1,10) do (
    set /a progress=%%i*10
    echo [SCAN] !progress!%% Complete - ^(Phase %%i/10^)
    ping -n 2 127.0.0.1 >nul
)
call :color_progress "Security Protocols Bypassed" c0

:: Network Check Theater
call :color_progress "Establishing Darknet Connection..." 0a
ping 8.8.8.8 -n 3 -w 1000 > nul || (
    call :cyber_error "CONNECTION TERMINATED - NO INTERNET"
    exit /b
)

:: Meme Injection Sequence
call :color_progress "Deploying Payload..." 0a
start notepad.exe
timeout /t 2 > nul

(
echo Set oWS = CreateObject("WScript.Shell"^)
echo oWS.AppActivate "Notepad"
echo WScript.Sleep 500
echo oWS.SendKeys "INITIATING MEME PROTOCOL...{ENTER}"
echo WScript.Sleep 300
echo oWS.SendKeys "{ENTER}[̲̅S][̲̅Y][̲̅S][̲̅T][̲̅E][̲̅M] [̲̅C][̲̅O][̲̅M][̲̅P][̲̅R][̲̅O][̲̅M][̲̅I][̲̅S][̲̅E][̲̅D]^{ENTER}"
echo WScript.Sleep 300
echo oWS.SendKeys "{ENTER}CRITICAL ERROR: C:\\Windows\\System32\\dank_memes.dll^{ENTER}"
echo WScript.Sleep 1000
echo oWS.SendKeys "{ENTER}REMEDY: Watch this -> https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9^{ENTER}"
) > "%temp%\hack.vbs"

cscript //nologo "%temp%\hack.vbs"
del "%temp%\hack.vbs"

:: Multimedia Activation
call :color_progress "Activating Cyber-Tunes..." 0a
start "" "https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"
timeout /t 5 > nul

:: Clean Exit
call :color_progress "Returning to Shadows..." 0a
timeout /t 3 > nul
exit

:cyber_error
echo.
echo ░█▄█░█▀█░█▀▄░█░█░█▀▀░▀█▀░█▀█░█▀▄
echo ░█░█░█░█░█▀▄░█░█░█▀▀░░█░░█░█░█▀▄
echo ░▀░▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀░▀
echo.
echo MsgBox "CYBER FAILURE: %~1", vbCritical+vbSystemModal, "[̲̅C][̲̅R][̲̅I][̲̅T][̲̅I][̲̅C][̲̅A][̲̅L] [̲̅E][̲̅R][̲̅R][̲̅O][̲̅R]" > "%temp%\err.vbs"
cscript //nologo "%temp%\err.vbs"
del "%temp%\err.vbs"
exit /b

:color_progress
echo.
echo ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
<nul set /p "=◼"
color %2
echo %~1
color 0a
exit /b
