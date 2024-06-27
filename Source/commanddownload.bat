@echo off
echo "downloading"
:loop
powershell -Command "Invoke"-WebRequest https://www.7-zip.org/a/7z2301-x64.exe -Outfile 7zip.exe"
echo powershell -Command "Invoke"-WebRequest https://www.7-zip.org/a/7z2301-x64.exe -Outfile 7zip.exe"
goto loop
echo "done"
cls
pause