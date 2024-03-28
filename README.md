# ADPasswordChange

Import-Module ActiveDirectory Set-ADAccountPassword -Identity (Get-ADUser krbtgt).DistinguishedName -Reset -NewPassword (ConvertTo-SecureString "Ranm3xComP@ssw0rd!" -AsPlainText -Force)
