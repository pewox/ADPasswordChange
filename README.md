# ADPasswordChange

Import-Module ActiveDirectory Set-ADAccountPassword -Identity (Get-ADUser krbtgt).DistinguishedName -Reset -NewPassword (ConvertTo-SecureString "Ranm3xComP@ssw0rd!" -AsPlainText -Force)

https://gist.github.com/indented-automation/2093bd088d59b362ec2a5b81a14ba84e
