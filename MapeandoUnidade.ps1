###########################################################################
# NOME: Script mapeia uma unidade de Rede
# AUTOR: Wendel Silva.
# HISTÓRICO DE VERSÃO: 1.0.
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# K é a letra escolhida para a unidade, e \\Note-infra\d é o caminho

New-PSDrive –Name “K” –PSProvider FileSystem –Root “\\Note-infra\d” –Persist