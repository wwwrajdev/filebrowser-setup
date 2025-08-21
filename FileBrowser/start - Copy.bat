@echo off
title FileBrowser with Tunnel
cd C:\filebrowser

echo Starting FileBrowser on LAN + Tunnel...
start cmd /k filebrowser.exe -r "D:\familyides-u" -a 0.0.0.0 -p 9090

echo Waiting 5 seconds before creating tunnel...
timeout /t 5 >nul

echo Creating localhost.run tunnel...
ssh -R 80:localhost:9090 nokey@localhost.run

pause
