(0..900).foreach{Write-Host "Zeichen $($_): $([char]$_)"}

# $password = -join ((35..38)+(33,42,43,45,63)+(48..57)+(65..90)+(97..122) | Get-Random -count 20).foreach{[char]$_}