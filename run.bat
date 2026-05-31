@echo off
title Student Result Portal
color 0A

echo.
echo  ============================================
echo    Student Result Portal - Starting Up...
echo  ============================================
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo  [ERROR] Python is not installed or not in PATH.
    echo  Please install Python from https://python.org
    pause
    exit /b
)

:: Check if Flask is installed
python -c "import flask" >nul 2>&1
if errorlevel 1 (
    echo  [INFO] Flask not found. Installing Flask...
    pip install flask
    echo.
)

:: Move to the folder where this batch file lives
cd /d "%~dp0"

echo  [OK] Starting Flask server...
echo  [OK] Opening browser at http://127.0.0.1:5000
echo.
echo  Press CTRL+C in this window to stop the server.
echo.

:: Open browser after 2 seconds
start "" timeout /t 2 >nul
start "" "http://127.0.0.1:5000"

:: Start Flask app
python app.py

pause
