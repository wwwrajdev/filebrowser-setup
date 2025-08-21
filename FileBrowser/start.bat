@echo off
title FileBrowser Starter

echo Starting FileBrowser...
echo ======================================

REM Start FileBrowser in background
start "" /B filebrowser.exe -r "D:\familyides-u" -a 0.0.0.0 -p 9090

echo FileBrowser is running!
echo Access it at:
echo.

REM Collect all IPv4 addresses and show URLs
for /f "tokens=14 delims= " %%A in ('ipconfig ^| findstr /i "IPv4"') do (
    echo   http://%%A:9090/
)

echo.
echo ======================================
pause
