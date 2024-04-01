function Get-Password(
    $randomgen = [System.Random]::new(),
    $password = ''
)
{
    for ($i=0; $i -lt 20; $i++){
    $password += [char]$randomgen.Next(33,127)
    }
    return $password
}

function Set-Password(){
    try {
        $user = (Get-ADUser krbtgt -ErrorAction Stop).SamAccountName
        Set-ADAccountPassword -Identity $user -Reset -NewPassword (ConvertTo-SecureString -AsPlainText (Get-Password) -Force) -WhatIf
    }
    catch {
        'User nicht vorhanden'
    }
}
Set-Password
