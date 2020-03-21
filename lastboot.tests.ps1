$srp = "$PSScriptRoot\lastboot.ps1"

Describe 'Unit Test' {

    Context 'Param Validation' {

        $Func = Get-Command -Name $srp

        It 'ComputerName param is Manadatory' {

            $Func.Parameters.ComputerName.Attributes.Mandatory | Should be $true

        }

    }

}