#Manipulando Usu�rios pelo Power Shell
#
#
#Criando grupos no AD

# New-ADGroup -Name ITManageComputers -GroupCategory Security `
# -GroupScope Global -DisplayName ITManageComputers
# New-ADGroup -Name Gerentes -GroupCategory Security `
# -GroupScope Global -DisplayName Gerentes

# Criando OUs

# New-ADOrganizationalUnit -Name �SP�
# New-ADOrganizationalUnit -Name �Gerentes de TI�
# New-ADOrganizationalUnit -Name �Projetos�

# Criando usu�rios em uma OU

# New-ADUser �BillGates� -Path �OU=Gerentes de TI,DC=Contoso,DC=com� `
# -Department �Gerencia�
# New-ADUser �SteveBallmer� -Path �OU=Gerentes de TI,DC=Contoso,DC=com� `
# -Department �Gerencia�
# New-ADUser �SteveWoz� -Path �OU=Projetos,DC=Contoso,DC=com� `
# -Department �Projetos�

# Adicionando usu�rios em grupos

# Get-ADUser -Filter * -SearchBase �ou=gerentes de ti, dc=contoso,dc=com� | 
# Add-ADPrincipalGroupMembership -MemberOf Gerentes

# Listando usu�rios de uma OU

# Get-ADUser -Filter * -SearchBase �ou=Projetos,dc=contoso,dc=com�

# Fazendo com que todos os usu�rios de uma OU alterem sua senha no pr�ximo logon

# Get-ADUser -Filter * -SearchBase �ou=Projetos,dc=contoso,dc=com� |
# Set-ADUser -ChangePasswordAtLogon $true

# Listando o �ltimo logon do usu�rio

# Get-ADUser BillGates �properties lastlogondate

# Listando usu�rios de um determinado departamento

# Get-ADUser �Filter �department -eq �Projetos�� -Properties Department |
# Format-Table DistinguishedName,Department

# Listando todos os usu�rios e o �ltimo logon de cada um

# Get-ADUser -filter * | fl name, lastlogondate

# Exibindo todos os usu�rios desabilitados

# Get-ADUser -filter * | where { $_.enabled -eq $False}

# Habilitando todos os usu�rios desabilitados

# Get-ADUser -filter * | where { $_.enabled -eq $False} | Enable-ADAccount

# Definindo a senha para um usu�rio

# Set-ADAccountPassword BillGates