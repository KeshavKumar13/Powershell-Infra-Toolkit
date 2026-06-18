$os = Get-CimInstance Win32_OperatingSystem

$cpu = Get-Counter '\Processor(_Total)\% Processor Time'

Write-Host "Hostname: $env:COMPUTERNAME"
Write-Host "Uptime: $((Get-Date) - $os.LastBootUpTime)"

Write-Host "CPU Usage: $([math]::Round($cpu.CounterSamples.CookedValue,2))%"

Get-PSDrive -PSProvider FileSystem |
Select-Object Name,
@{Name="Used(GB)";Expression={[math]::Round(($_.Used/1GB),2)}},
@{Name="Free(GB)";Expression={[math]::Round(($_.Free/1GB),2)}}
