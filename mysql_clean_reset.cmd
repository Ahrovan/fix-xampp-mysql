@echo off
:: ========================================================
::  XAMPP MySQL Clean Reset Utility
::  Author: ahrovan + AI Engineer
:: ========================================================

chcp 65001 >nul
title XAMPP MySQL Clean Reset
color 0A
setlocal EnableDelayedExpansion

echo ==================================================
echo           XAMPP MySQL Clean Reset
echo ==================================================
echo.

:: === CONFIG ===
set "XAMPP_PATH=C:\xampp"
set "MYSQL_PATH=%XAMPP_PATH%\mysql"
set "DATA_PATH=%MYSQL_PATH%\data"

:: 1️⃣ Stop MySQL if running
echo [STEP 1] Stopping MySQL service...
net stop mysql >nul 2>&1

for %%P in (mysqld.exe httpd.exe xampp-control.exe) do (
    tasklist | findstr /I "%%P" >nul
    if !errorlevel! == 0 (
        echo [INFO] Terminating process %%P ...
        taskkill /F /IM %%P /T >nul 2>&1
    )
)
timeout /T 3 /NOBREAK >nul

:: 2️⃣ Delete user-created databases
echo [STEP 2] Removing all user databases...
for /D %%D in ("%DATA_PATH%\*") do (
    set "DBNAME=%%~nD"
    if /I NOT "!DBNAME!"=="mysql" if /I NOT "!DBNAME!"=="phpmyadmin" if /I NOT "!DBNAME!"=="performance_schema" (
        echo [DELETE] %%D
        rd /S /Q "%%D"
    )
)
echo [OK] User databases removed.

:: 3️⃣ Clean corrupted logs and temp files
echo [STEP 3] Cleaning log and tmp files...
for %%F in (ib_logfile0 ib_logfile1 ibtmp1 ib_buffer_pool aria_log.00000001 aria_log aria_log_control) do (
    if exist "%DATA_PATH%\%%F" (
        del "%DATA_PATH%\%%F" /F /Q >nul
        echo [DELETED] %%F
    )
)
echo [OK] Log cleanup completed.

:: 4️⃣ Optionally clear old backup folder
set "BACKUP_PATH=%MYSQL_PATH%\backup"
if exist "%BACKUP_PATH%" (
    echo [STEP 4] Removing old system backup folder...
    rd /S /Q "%BACKUP_PATH%"
    echo [OK] Backup folder cleared.
)

:: 5️⃣ Relaunch XAMPP Control Panel
echo [STEP 5] Launching XAMPP Control Panel...
start "" "%XAMPP_PATH%\xampp-control.exe"
echo.

echo ==================================================
echo ✅ MySQL Clean Reset Completed Successfully!
echo --------------------------------------------------
echo  Remaining Databases:
echo     mysql
echo     phpmyadmin
echo     performance_schema
echo  MySQL is now fresh and ready for new projects.
echo ==================================================
echo.
pause
endlocal
