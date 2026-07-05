@echo off
echo ======================================
echo   RBOWS 1 - Build EXE
echo ======================================
echo.

:: Generate icon
echo [1/4] Generating icon...
if not exist "build" mkdir build
powershell -ExecutionPolicy Bypass -File "build-scripts\generate-icon.ps1"

:: Install dependencies
echo [2/4] Installing dependencies...
call npm install

:: Build with electron-builder
echo [3/4] Building Electron app...
call npx electron-builder --win --x64

:: Done
echo [4/4] Build complete!
echo.
echo Output: dist\RBOWS-1-Setup-10.0.26220.exe
echo.
pause
