###########################################################################
# NOME: Script para configurar ip est�tico e din�mico
# AUTOR: Wendel SIlva
# HIST�RICO DE VERS�O: 1.0
# 1.0 | 10/06/2019 - Vers�o inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na ra�z C:
## Caso n�o tenha permiss�o de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# CONFIGURANDO IP EST�TICO:

# Consultando as configura��es de rede atuais.

# Get-NetIpConfiguration

# Altera o endere�o ip de uma interface de rede.

# New-NetIpAddress 192.168.1.17 - InterfaceAlias Ethernet -DefaultGateway 192.168.1.1 -AddressFamily IPV4 -PrefixLength 24

# InterfaceAlias: Nome da interface de rede que ter� a configura��o alterada. No caso, ser� a interface de nome Ethernet.
# DefaultGateway: Endere�o IP do Gateway Padr�o da rede (porta interna do roteador).
# AddressFamily: Vers�o de IP a ser atribu�ba � no caso, IPv4.
# PrefixLength: Tamanho do prefixo a ser utilizada, que corresponde � m�scara de sub-rede. No exemplo, usamos o valor 24, 
# que equivale � m�scara 255.255.255.0 (endere�o classe C).

# Ap�s configurar o endere�o IP, vamos configurar os endere�os dos servidores DNS que ser�o utilizados.

# Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddress 8.8.8.8, 4.4.4.4


# CONFIGURANDO IP DIN�MICO:

# Volta a usar ip din�mico na interface:

# Set-NetIpInterface -InterfaceAlias Ethernet -DHCP enabled

# Reseta os endere�os dos servidores DNS configurados manualmente:

# Set-DnsClientServerAddress -InterfaceAlias Ethernet -ResetServerAddress

# Reseta a configura��o do gateway padr�o:

# Remove-NetRoute -InterfaceAlias Ethernet

# Reinicie o adaptador de rede

# Restart-NetAdapter -InterfaceAlias Ethernet

