param ([string]$Message)

$time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content ".\output\automation.log" "$time $Message"
