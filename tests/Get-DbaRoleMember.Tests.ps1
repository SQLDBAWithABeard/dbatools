$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1","")
Write-Host -Object "Running $PSCommandpath" -ForegroundColor Cyan
. "$PSScriptRoot\constants.ps1"

Describe "$CommandName Unit Tests" -Tag UnitTests, Get-DbaRoleMember {
    Context "$Command Name Input" {
        $Params = (Get-Command Get-DbaRoleMember).Parameters
        It "Should have a mandatory parameter SQLInstance" {
            $Params['SQLInstance'].Attributes.Mandatory | Should be $true
        }
        It "Should have Alias of ServerInstance and SqlServer for Parameter SQLInstance"{
            $params['SQLInstance'].Aliases | Should Be @('ServerInstance','SqlServer')
        }
        It "Should have a parameter SqlCredential" {
            $Params['SqlCredential'].Count | Should Be 1
        }
        It "Should have Alias of Credential for Parameter SQLCredential"{
            $params['SQLCredential'].Aliases | Should Be @('Credential')
        }
        It "Should have a parameter Database" {
            $Params['Database'].Count | Should Be 1
        }
        It "Should have Alias of Databases for Parameter Database"{
            $params['Database'].Aliases | Should Be @('Databases')
        }
        It "Should have a parameter ExcludeDatabase" {
            $Params['ExcludeDatabase'].Count | Should Be 1
        }
        It "Should have a parameter IncludeServerLevel" {
            $Params['IncludeServerLevel'].Count | Should Be 1
        }
        It "Should have a parameter NoFixedRole" {
            $Params['NoFixedRole'].Count | Should Be 1
        }
    }
}

Describe "$commandname Integration Tests" -Tags "IntegrationTests" {

}