#Requires -Version 2.0
Write-Verbose "Loading MySQL Connecter Assembly with partial name 'MySQL.Data' and open connection"
try 
{
     [void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")
} 
catch 
{
    throw $_
}

Write-Verbose "Loading modules for PS-MySQLConnect."
. $psScriptRoot\New-MySQLConnection.ps1
. $psScriptRoot\Disconnect-MySQLConnection.ps1
. $psScriptRoot\Get-MySQLDataResult.ps1
. $psScriptRoot\Get-MySQLDatabases.ps1
. $psScriptRoot\Get-MySQLColumns.ps1
. $psScriptRoot\Invoke-MySQLNonQuery.ps1
. $psScriptRoot\Invoke-MySQLReadQuery.ps1
. $psScriptRoot\Remove-MySQLTriggerCreatedModified.ps1
. $psScriptRoot\Set-MySQLFunctionJstNow.ps1
. $psScriptRoot\Set-MySQLTriggerCreatedModified.ps1