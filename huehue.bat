@echo off
REM --- Check for Internet connectivity by pinging google.com ---
ping -n 1 google.com >nul 2>&1
if errorlevel 1 (
    REM --- No Internet: show a message box using MSHTA and exit ---
    mshta "javascript:alert('hey! connect to internet first :(');close();"
    exit /b
)

REM --- Internet is available ---

REM --- Create a temporary file with the prank message ---
set "tempFile=%temp%\prank_message.txt"
echo haha, corngatulations, i hacked ur computer, now watch this: https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9> "%tempFile%"

REM --- Open Notepad to display the message ---
start notepad "%tempFile%"

REM --- Automatically launch the URL in the default web browser ---
start "" "https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"

exit
