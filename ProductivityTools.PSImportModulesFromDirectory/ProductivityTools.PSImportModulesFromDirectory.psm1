<#
	My Function
#>
function Import-ModulesFromDirectory {
	[cmdletbinding()]
	param(
		[string]$Path=$PSScriptRoot
	)

	$psm1s=Get-ChildItem -Filter "*.psm1" -Recurse
	foreach($psm1 in $psm1s)
	{
		Write-Verbose "Found module $psm1 ($($psm1.FullName))"
		Import-Module $($psm1.FullName)
	}
}
Export-ModuleMember Import-ModulesFromDirectory 