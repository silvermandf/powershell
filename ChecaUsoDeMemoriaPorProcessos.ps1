###########################################################################
# NOME: Script para checar o uso da memória por processos
# AUTOR: Wendel SIlva
# COMENTÁRIO: Este script checa o uso da memória RAM sendo utilizada por
# processos. Lista os cinco processos que estão mais consumindo memória.
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

# Para usar o script basta descomentar a linha abaixo.

# ps | sort –p ws | select –last 5

# para parar o um processo, descomente e modifique a linha abaixo
# com o nome do processo

# ps -ProcessName nomeDoProcesso | Stop-Processs