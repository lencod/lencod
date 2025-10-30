# Test PowerShell script for loader - Opens Notepad
Start-Process -FilePath "notepad.exe" -WindowStyle Hidden

# Optional: Write to log file for debugging
$LogPath = "$env:TEMP\loader_test.log"
"Loader test executed at $(Get-Date)" | Out-File -FilePath $LogPath -Append
"Notepad started via PowerShell script" | Out-File -FilePath $LogPath -Append

# Optional: Show success message (remove for stealth)
# Add-Type -AssemblyName System.Windows.Forms
# [System.Windows.Forms.MessageBox]::Show('Loader test successful! Notepad should be running.', 'Test Complete')