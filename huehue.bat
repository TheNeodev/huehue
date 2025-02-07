@echo off
:: Check internet connection
ping -n 1 google.com >nul 2>&1
if %errorlevel% neq 0 (
    echo x=msgbox("Hey! Connect to internet first :(", 0+16, "No Internet") > "%temp%\msg.vbs"
    start /min "%temp%\msg.vbs"
    timeout /t 2 >nul
    del "%temp%\msg.vbs"
    exit
)

:: Create Notepad script
echo Set objFSO = CreateObject("Scripting.FileSystemObject") > "%temp%\prank.vbs"
echo Set objFile = objFSO.CreateTextFile("%temp%\prank.txt", True) >> "%temp%\prank.vbs"
echo objFile.WriteLine "haha, corngatulations, i own ur computer, now watch this: https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9" >> "%temp%\prank.vbs"
echo objFile.Close >> "%temp%\prank.vbs"
echo Set objShell = CreateObject("WScript.Shell") >> "%temp%\prank.vbs"
echo objShell.Run "notepad.exe %temp%\prank.txt" >> "%temp%\prank.vbs"

:: Execute Notepad script
cscript //nologo "%temp%\prank.vbs"

:: Open the link
start "" "https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"

:: Clean up
timeout /t 3 >nul
del "%temp%\prank.vbs"
