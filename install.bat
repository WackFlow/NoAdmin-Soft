@echo off
cls
echo Launching automatic software configuration...

:: 1. Прописываем пути, чтобы cmd видел команды Scoop
set "PATH=%PATH%;%USERPROFILE%\scoop\shims"

:: 2. Скачиваем и ставим сам Scoop
curl -sL https://scoop.sh -o "%TEMP%\scoop.ps1"
call "%TEMP%\scoop.ps1"

:: 3. Ставим Git и подключаем репозитории
call scoop install git
call scoop bucket add extras
call scoop bucket add games

:: 4. Устанавливаем твои программы
call scoop install discord
call scoop install steam

echo Gotovo!
pause
