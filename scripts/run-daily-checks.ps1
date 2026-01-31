. "$PSScriptRoot\write-log.ps1"

Write-Log "Starting daily ICT automation"

& "$PSScriptRoot\check-user-health.ps1"
& "$PSScriptRoot\license-review.ps1"
& "$PSScriptRoot\service-health-check.ps1"

Write-Log "Daily ICT automation completed"
