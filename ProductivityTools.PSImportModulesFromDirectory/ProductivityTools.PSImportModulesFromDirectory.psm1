function Import-ModulesFromDirectory {
	[cmdletbinding()]
	param(
		[string]$Path=$PSScriptRoot,
		[switch]$Recurse
	)

	$psm1s=Get-ChildItem -Path "$Path\*psm1" -Recurse:$Recurse
	$module=$Path|split-path -leaf
	Write-Verbose "Importing module from directory $Path" 
	foreach($psm1 in $psm1s)
	{
		Write-Host "Importing module from direcotry $($psm1.DirectoryName)" -ForegroundColor DarkGreen
		$leaf=$psm1.FullName|split-path -leaf
		Write-Host "-File $leaf" -ForegroundColor Gray
		Import-Module $psm1.FullName
		
	}
}
Export-ModuleMember Import-ModulesFromDirectory 