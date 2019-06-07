###########################################################################
# NOME: Script que exibe informações sobre marca, modelo e bios do computador
# AUTOR: Wendel SIlva
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

Get-WmiObject -Class Win32_ComputerSystem

Get-WmiObject -Class Win32_BIOS -ComputerName .