Get-Volume |
Where-Object {$_.DriveLetter} |
Select DriveLetter,
FileSystemLabel,
@{N='SizeGB';E={[math]::Round($_.Size/1GB,2)}},
@{N='FreeGB';E={[math]::Round($_.SizeRemaining/1GB,2)}} |
Format-Table -AutoSize
