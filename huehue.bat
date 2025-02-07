@echo off
:: Check for internet connection
ping -n 1 google.com >nul 2>&1 || (mshta vbscript:msgbox("Hey! Connect to the internet first :(",16,"No Internet")(window.close) & exit)

:: Create Notepad script
echo Set objFSO = CreateObject("Scripting.FileSystemObject") > script.vbs
echo Set objFile = objFSO.CreateTextFile("notepad_text.vbs", True) >> script.vbs
echo objFile.WriteLine "Set WshShell = CreateObject(""WScript.Shell"")" >> script.vbs
echo objFile.WriteLine "WshShell.Run ""notepad""" >> script.vbs
echo objFile.WriteLine "WScript.Sleep 500" >> script.vbs
echo objFile.WriteLine "WshShell.SendKeys ""haha, corngatulations, i own ur computer, now watch this: https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9""" >> script.vbs
echo objFile.WriteLine "WshShell.SendKeys ""{ENTER}""" >> script.vbs
echo objFile.Close >> script.vbs

:: Run the Notepad script
cscript //nologo script.vbs

:: Open the link automatically
start "" "https://youtu.be/xzJn0zdwuoM?si=m3Qgd-ayiXWqlVV9"

:: Clean up
del script.vbs
del notepad_text.vbs
exit
