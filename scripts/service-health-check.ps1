$services = @(
    @{ Service="Backup"; Status="OK" },
    @{ Service="Sync"; Status="Failed" }
)

$services |
Where-Object { $_.Status -ne "OK" } |
Export-Csv ".\output\service-health.csv" -NoTypeInformation
