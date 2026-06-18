Import-Module ActiveDirectory

Get-ADUser -Filter * -Properties Enabled,LastLogonDate |
Select Name,
SamAccountName,
Enabled,
LastLogonDate |
Export-Csv ADUsers.csv -NoTypeInformation
