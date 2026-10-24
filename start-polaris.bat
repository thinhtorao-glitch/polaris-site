@echo off
cd /d "%~dp0"
for /f %%P in ('powershell -NoProfile -Command "$ports = @(8787,8788,8789,8790); foreach ($p in $ports) { if (-not (Get-NetTCPConnection -LocalPort $p -State Listen -ErrorAction SilentlyContinue)) { $p; break } }"') do set "POLARIS_PORT=%%P"
if not defined POLARIS_PORT set "POLARIS_PORT=8791"
start "Polaris server" cmd /k "set PORT=%POLARIS_PORT%&& node server.js"
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:%POLARIS_PORT%/"
