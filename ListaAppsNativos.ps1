###########################################################################
# NOME: Script que lista os apps nativos instalados e apaga selecionado.
# AUTOR: Wendel Silva.
# COMENTÁRIO: Este script lista todos os apps nativos do computador
# e remove o selecionado.
# HISTÓRICO DE VERSÃO: 1.0.
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

# Para utilizar o script, descomente as linhas abaixo.

# Get-AppxPackage | Select Name, PackageFullName

# Depois de listar, escolha o nome do programa e substitua 
# conforme a linha abaixo.

# Get-AppxPackage NomeDOAPP | Remove-AppxPackage