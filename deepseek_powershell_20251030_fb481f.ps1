# test_notepad.ps1
Start-Process notepad.exe

# Принудительная задержка чтобы убедиться что скрипт выполнился
Start-Sleep -Seconds 3

# Запись в лог для подтверждения выполнения
"PowerShell script executed successfully at $(Get-Date)" | Out-File "$env:TEMP\ps_script.log" -Append
