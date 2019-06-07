###########################################################################
# NOME: Script para criar imagem do sistema
# AUTOR: Wendel SIlva
# COMENTÁRIO: Este script cria uma imagem do sistema. É importante ressaltar
# que não é possível restaurar apenas partes do backup; é tudo de uma vez.
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

# No script abaixo, o backup da unidade c: será realizado na unidade e:
# Para utilizar o script, descomente a linha abaixo removendo o caractere "#"

# wbAdmin start backup -backupTarget:E: -include:C: -allCritial -quiet