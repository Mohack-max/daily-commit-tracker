@echo off
cd /d %~dp0
echo Commit made on %date% at %time% >> log.txt
git add .
git commit -m "Auto commit: %date%"
git push origin main
