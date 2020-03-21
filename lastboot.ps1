[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$ComputerName
)

process {

if (Test-Connection -ComputerName $ComputerName -Quiet -Count 1 -ErrorAction Stop)
    {
        Get-CimInstance -Class Win32_OperatingSystem -ComputerName $ComputerName | Select-Object csname, lastbootuptime
    }
}