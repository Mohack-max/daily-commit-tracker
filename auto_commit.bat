@echo off
cd /d %~dp0

setlocal enabledelayedexpansion

:: Number of fake commits you want to make
set COUNT=10

for /L %%i in (1,1,%COUNT%) do (
    echo Commit %%i made on %date% at %time% >> log.txt
    git add .
    git commit -m "Auto commit %%i: %date%"
    timeout /t 1 >nul
)

git push origin main
