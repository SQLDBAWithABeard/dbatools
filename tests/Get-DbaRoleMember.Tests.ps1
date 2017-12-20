$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1","")
Write-Host -Object "Running $PSCommandpath" -ForegroundColor Cyan
. "$PSScriptRoot\constants.ps1"

Describe "$CommandName Unit Tests" -Tag UnitTests, Get-DbaRoleMember {
    Context "$Command Name Input" {

    }
}

Describe "$commandname Integration Tests" -Tags "IntegrationTests" {

}