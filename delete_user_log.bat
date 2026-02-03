@echo off
rem 此脚本运行时会删除同级目录下的user.log
cd /d "%~dp0"

set "LOGFILE=user.log"
echo wantdelete: "%LOGFILE%"

if not exist "%LOGFILE%" (
    echo no
    timeout /t 3 /nobreak >nul
    exit /b
)

echo yes
del /f /q "%LOGFILE%" >nul 2>&1

if exist "%LOGFILE%" (
    echo oshift
) else (
    echo oyes
)

timeout /t 3 /nobreak >nul
exit