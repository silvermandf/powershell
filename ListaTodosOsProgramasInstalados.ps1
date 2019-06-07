###########################################################################
# NOME: Script que lista os programas instalados
# AUTOR: desconhecido.
# COMENTÁRIO: Este script lista todos os programas instalados no computador.
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

# Para utilizar o script, descomente as linhas abaixo.

# Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
# Select-Object DisplayName, DisplayVersion | Sort-Object -Property DisplayName -Unique | 
# Format-Table -AutoSize