if (Test-Connection -ComputerName localhost -Quiet -Count 1 -ErrorAction SilentlyContinue)
    {

        Get-WmiObject -Class Win32_OperatingSystem -ComputerName localhost | select csname, @{LABEL='LastBootUpTime';EXPRESSION={$_.ConverttoDateTime($_.lastbootuptime)}}

    }