$latest = Get-HotFix |
Sort-Object InstalledOn -Descending |
Select-Object -First 1

Write-Host "Latest Patch:"
$latest
