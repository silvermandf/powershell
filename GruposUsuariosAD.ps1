#Manipulando Usuários pelo Power Shell
#
#
#Criando grupos no AD

# New-ADGroup -Name ITManageComputers -GroupCategory Security `
# -GroupScope Global -DisplayName ITManageComputers
# New-ADGroup -Name Gerentes -GroupCategory Security `
# -GroupScope Global -DisplayName Gerentes

# Criando OUs

# New-ADOrganizationalUnit -Name “SP”
# New-ADOrganizationalUnit -Name “Gerentes de TI”
# New-ADOrganizationalUnit -Name “Projetos”

# Criando usuários em uma OU

# New-ADUser “BillGates” -Path “OU=Gerentes de TI,DC=Contoso,DC=com” `
# -Department “Gerencia”
# New-ADUser “SteveBallmer” -Path “OU=Gerentes de TI,DC=Contoso,DC=com” `
# -Department “Gerencia”
# New-ADUser “SteveWoz” -Path “OU=Projetos,DC=Contoso,DC=com” `
# -Department “Projetos”

# Adicionando usuários em grupos

# Get-ADUser -Filter * -SearchBase “ou=gerentes de ti, dc=contoso,dc=com” | 
# Add-ADPrincipalGroupMembership -MemberOf Gerentes

# Listando usuários de uma OU

# Get-ADUser -Filter * -SearchBase “ou=Projetos,dc=contoso,dc=com”

# Fazendo com que todos os usuários de uma OU alterem sua senha no próximo logon

# Get-ADUser -Filter * -SearchBase “ou=Projetos,dc=contoso,dc=com” |
# Set-ADUser -ChangePasswordAtLogon $true

# Listando o último logon do usuário

# Get-ADUser BillGates –properties lastlogondate

# Listando usuários de um determinado departamento

# Get-ADUser –Filter ‘department -eq “Projetos”‘ -Properties Department |
# Format-Table DistinguishedName,Department

# Listando todos os usuários e o último logon de cada um

# Get-ADUser -filter * | fl name, lastlogondate

# Exibindo todos os usuários desabilitados

# Get-ADUser -filter * | where { $_.enabled -eq $False}

# Habilitando todos os usuários desabilitados

# Get-ADUser -filter * | where { $_.enabled -eq $False} | Enable-ADAccount

# Definindo a senha para um usuário

# Set-ADAccountPassword BillGates