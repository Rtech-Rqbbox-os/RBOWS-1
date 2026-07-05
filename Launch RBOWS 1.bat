@echo off
title RBOWS 1
echo Starting RBOWS 1...
cd /d "%~dp0"
if exist "dist\win-unpacked\RBOWS 1.exe" (
    start "" "dist\win-unpacked\RBOWS 1.exe"
) else if exist "node_modules\.bin\electron.cmd" (
    npx electron .
) else (
    echo Installing dependencies...
    call npm install
    npx electron .
)
