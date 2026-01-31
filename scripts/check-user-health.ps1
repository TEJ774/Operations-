$users = @(
    @{ User="ajet"; LastLogin=120; Enabled=$true },
    @{ User="john"; LastLogin=5; Enabled=$true }
)

$users |
Where-Object { $_.LastLogin -gt 90 } |
Export-Csv ".\output\inactive-users.csv" -NoTypeInformation
