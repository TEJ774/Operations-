$users = @(
    @{ User="ajet"; License="E3"; Active=$false },
    @{ User="john"; License="E5"; Active=$true }
)

$users |
Where-Object { -not $_.Active } |
Export-Csv ".\output\license-review.csv" -NoTypeInformation
