# Автоматическая установка софта без прав администратора (Scoop)

Clear-Host
Write-Host "Запуск автоматической настройки софта..." -ForegroundColor Cyan
Write-Host ""

# 1. Разрешаем выполнение скриптов в текущей сессии пользователя
Write-Host "[1/5] Настройка политик безопасности Windows..." -ForegroundColor Yellow
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# 2. Устанавливаем сам пакетный менеджер Scoop
Write-Host "[2/5] Загрузка и развертывание Scoop..." -ForegroundColor Yellow
irm get.scoop.sh | iex

# 3. Ставим Git (необходим для работы дополнительных баз программ)
Write-Host "[3/5] Установка Git для синхронизации баз..." -ForegroundColor Yellow
scoop install git

# 4. Подключаем официальные базы с программами и играми
Write-Host "[4/5] Подключение баз 'extras' и 'games'..." -ForegroundColor Yellow
scoop bucket add extras
scoop bucket add games

# 5. Устанавливаем Discord и Steam
Write-Host "[5/5] Установка Discord и Steam (это займет пару минут)..." -ForegroundColor Yellow
scoop install discord
scoop install steam

Write-Host ""
Write-Host "Готово!" -ForegroundColor Green
