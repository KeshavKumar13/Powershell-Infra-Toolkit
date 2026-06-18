$cpu = Get-Counter '\Processor(_Total)\% Processor Time'
$memory = Get-CimInstance Win32_OperatingSystem

Write-Host "CPU Usage: $([math]::Round($cpu.CounterSamples.CookedValue,2))%"

$freeRam = [math]::Round($memory.FreePhysicalMemory/1MB,2)

Write-Host "Free RAM: $freeRam GB"
