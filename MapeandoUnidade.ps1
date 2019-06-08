###########################################################################
# NOME: Script mapeia uma unidade de Rede
# AUTOR: Wendel Silva.
# HIST�RICO DE VERS�O: 1.0.
# 1.0 | 06/06/2019 - Vers�o inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na ra�z C:
## Caso n�o tenha permiss�o de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# K � a letra escolhida para a unidade, e \\Note-infra\d � o caminho

New-PSDrive �Name �K� �PSProvider FileSystem �Root �\\Note-infra\d� �Persist