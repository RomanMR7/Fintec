param(
    [string]$Message = "Update Obsidian vault"
)

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "Получаю последние изменения из GitHub..."
git pull --rebase
if ($LASTEXITCODE -ne 0) {
    throw "Не удалось выполнить git pull."
}

Write-Host "Проверяю изменения в Obsidian Vault..."
git add -- "obsidian-vault"
if ($LASTEXITCODE -ne 0) {
    throw "Не удалось добавить изменения."
}

git diff --cached --quiet
if ($LASTEXITCODE -eq 0) {
    Write-Host "Изменений для отправки нет."
    exit 0
}

Write-Host "Создаю коммит..."
git commit -m $Message
if ($LASTEXITCODE -ne 0) {
    throw "Не удалось создать коммит."
}

Write-Host "Отправляю изменения в GitHub..."
git push
if ($LASTEXITCODE -ne 0) {
    throw "Не удалось выполнить git push."
}

Write-Host "Готово: память Obsidian синхронизирована с GitHub."
