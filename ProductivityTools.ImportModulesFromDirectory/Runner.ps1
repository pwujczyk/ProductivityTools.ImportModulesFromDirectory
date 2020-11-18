clear
cd $PSScriptRoot

Import-Module .\ProductivityTools.ImportModulesFromDirectory.psm1 -Force
cd D:\Powershell\EcoVadis\Modules
Import-ModulesFromDirectory -verbose -Recurse