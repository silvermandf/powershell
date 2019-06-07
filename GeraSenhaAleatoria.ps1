###########################################################################
# NOME: Script para criar uma senha aleatória
# AUTOR: desconhecido
# COMENTÁRIO: Este script cria uma senha aleatória de acordo com parâmetros
# predefinidos na função
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


Add-Type -AssemblyName System.Web
[System.Web.Security.Membership]::GeneratePassword(8,2)