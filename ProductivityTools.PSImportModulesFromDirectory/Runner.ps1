clear
cd $PSScriptRoot

Import-Module .\ProductivityTools.PSImportModulesFromDirectory.psm1 -Force
cd D:\Powershell\EcoVadis\Modules
Import-ModulesFromDirectory -Path D:\Powershell\EcoVadis\Modules -verbose -Recurse