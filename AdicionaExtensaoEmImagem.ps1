###########################################################################
# NOME: Script para adicionar extensão .jpg nos arquivos de imagens
# AUTOR: Wendel SIlva
# HISTÓRICO DE VERSÃO: 1.0
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

$ren_files = Get-ChildItem | Where-Object {$_.Extension -ne ".jpg"}
ForEach ($file in $ren_files) {
$filenew = $file.Name + ".jpg"
Rename-Item $file $filenew
}