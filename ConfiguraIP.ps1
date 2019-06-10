###########################################################################
# NOME: Script para configurar ip estático e dinâmico
# AUTOR: Wendel SIlva
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 10/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# CONFIGURANDO IP ESTÁTICO:

# Consultando as configurações de rede atuais.

# Get-NetIpConfiguration

# Altera o endereço ip de uma interface de rede.

# New-NetIpAddress 192.168.1.17 - InterfaceAlias Ethernet -DefaultGateway 192.168.1.1 -AddressFamily IPV4 -PrefixLength 24

# InterfaceAlias: Nome da interface de rede que terá a configuração alterada. No caso, será a interface de nome Ethernet.
# DefaultGateway: Endereço IP do Gateway Padrão da rede (porta interna do roteador).
# AddressFamily: Versão de IP a ser atribuíba – no caso, IPv4.
# PrefixLength: Tamanho do prefixo a ser utilizada, que corresponde à máscara de sub-rede. No exemplo, usamos o valor 24, 
# que equivale à máscara 255.255.255.0 (endereço classe C).

# Após configurar o endereço IP, vamos configurar os endereços dos servidores DNS que serão utilizados.

# Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddress 8.8.8.8, 4.4.4.4


# CONFIGURANDO IP DINÂMICO:

# Volta a usar ip dinâmico na interface:

# Set-NetIpInterface -InterfaceAlias Ethernet -DHCP enabled

# Reseta os endereços dos servidores DNS configurados manualmente:

# Set-DnsClientServerAddress -InterfaceAlias Ethernet -ResetServerAddress

# Reseta a configuração do gateway padrão:

# Remove-NetRoute -InterfaceAlias Ethernet

# Reinicie o adaptador de rede

# Restart-NetAdapter -InterfaceAlias Ethernet

