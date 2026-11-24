@echo off
chcp 65001 >nul
title Windows 12 - EXE Builder
echo Сборка Windows 12 в EXE
where node >nul 2>nul
if errorlevel 1 (
  echo Установите Node.js LTS: https://nodejs.org/
  pause
  exit /b 1
)
call npm install
if errorlevel 1 goto failed
call npm run build:win
if errorlevel 1 goto failed
echo Готово! Проверьте папку dist.
pause
exit /b 0
:failed
echo Ошибка сборки. Проверьте интернет и установку Node.js.
pause
exit /b 1
