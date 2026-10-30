<#
.SYNOPSIS
    Antigravity Unlocker - One-line Quick Installer & Runner
    Powered by DastyarAI (دستیار هوشمند فارسی) - https://dastyarai.com
#>

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
try { $Host.UI.RawUI.WindowTitle = "Antigravity Unlocker - DastyarAI" } catch {}

Write-Host ""
Write-Host "  ================================================================" -ForegroundColor Cyan
Write-Host "                ANTIGRAVITY UNLOCKER (v1.3.9)                    " -ForegroundColor Green
Write-Host "             Powered by DastyarAI (دستیار هوشمند)                 " -ForegroundColor Yellow
Write-Host "       Website: https://dastyarai.com  |  Telegram: @fachatbox    " -ForegroundColor Cyan
Write-Host "  ================================================================" -ForegroundColor Cyan
Write-Host ""

$hasPython = $false
try {
    $pyCheck = python --version 2>$null
    if ($pyCheck) { $hasPython = $true }
} catch {}

if ($hasPython) {
    Write-Host "  [+] Python environment detected ($pyCheck)." -ForegroundColor Green
    Write-Host "  [*] Launching Antigravity Unlocker via Python..." -ForegroundColor Cyan
    
    $tempDir = Join-Path $env:TEMP "antigravity-unlocker"
    if (Test-Path $tempDir) { Remove-Item -Recurse -Force $tempDir -ErrorAction SilentlyContinue }
    
    git clone --depth 1 https://github.com/lifeencoder/antigravity-unlocker.git $tempDir 2>$null
    if (Test-Path "$tempDir\source\main.py") {
        python "$tempDir\source\main.py"
        exit
    }
}

# Fallback: Download and run standalone .exe
Write-Host "  [*] Downloading standalone Antigravity Unlocker executable..." -ForegroundColor Cyan
$exeUrl = "https://github.com/lifeencoder/antigravity-unlocker/releases/download/v1.3.9/AntigravityUnlocker.exe"
$destFolder = Join-Path $env:LOCALAPPDATA "AntigravityUnlocker"
if (-not (Test-Path $destFolder)) { New-Item -ItemType Directory -Path $destFolder -Force | Out-Null }
$exePath = Join-Path $destFolder "AntigravityUnlocker.exe"

try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $exeUrl -OutFile $exePath -UseBasicParsing
    Write-Host "  [+] Launching Antigravity Unlocker..." -ForegroundColor Green
    Start-Process -FilePath $exePath
} catch {
    Write-Host "  [!] Download failed: $_" -ForegroundColor Red
    Write-Host "  [i] Please download manually from: https://github.com/lifeencoder/antigravity-unlocker/releases" -ForegroundColor Yellow
    Write-Host "  [i] Or visit https://dastyarai.com for help and community support." -ForegroundColor Yellow
    pause
}
