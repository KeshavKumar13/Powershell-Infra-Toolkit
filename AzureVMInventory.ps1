Connect-AzAccount

Get-AzVM |
Select Name,
ResourceGroupName,
Location,
VmSize |
Export-Csv AzureVMInventory.csv -NoTypeInformation
