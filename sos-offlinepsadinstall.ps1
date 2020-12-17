#SimeonOnSecurity - https://simeononsecurity.ch
#http://woshub.com/using-powershell-active-directory-module-without-installing-rsat/

#Continue on error
#$ErrorActionPreference = 'silentlycontinue'
#Require elivation for script run
#Requires -RunAsAdministrator

#Copy Files
#Install PowerShell Modules
Copy-Item -Path .\Files\ActiveDirectory -Destination "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\" -Force -Recurse
#Install Required DLLs
Copy-Item -Path .\Files\WinSxS\* -Destination "C:\Windows\WinSxS\" -Force -Recurse

#Unblock New PowerShell Modules and DLLs
Get-ChildItem "C:\Windows\System32\WindowsPowerShell\v1.0\Modules\ActiveDirectory\" -recurse | Unblock-File
Unblock-File -Path "C:\Windows\WinSxS\Microsoft.ActiveDirectory.Management.resources.dll"
Unblock-File -Path "C:\Windows\WinSxS\Microsoft.ActiveDirectory.Management.dll"

#Install PowerShell Modules and DLLs
Import-Module -Name ActiveDirectory -Force -Global
Import-Module "C:\Windows\WinSxS\Microsoft.ActiveDirectory.Management.resources.dll" -Force -Global
Import-Module "C:\Windows\WinSxS\Microsoft.ActiveDirectory.Management.dll" -Force -Global