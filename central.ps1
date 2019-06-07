###########################################################################
# NOME: Script que abre o navegador, loga no sistema CentraldeServicos e 
# entra direto no link desejado
# AUTOR: Wendel Silva.
# HIST�RICO DE VERS�O: 1.0.
# 1.0 | 06/06/2019 - Vers�o inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na ra�z C:
## Caso n�o tenha permiss�o de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# Executa o Firefox e passa o endere�o.

Start-Process 'C:\Arquivos de Programas\Mozilla Firefox\firefox.exe' 'https://centraldeservicosti.in.gov.br/citsmart/pages/serviceRequestIncident/serviceRequestIncident.load#/'
$wshell = New-Object -com WScript.shell
Start-Sleep 5
$wshell.SendKeys("{TAB}") 
$wshell.SendKeys("IN@meuzovo.com") 
$wshell.SendKeys("{ENTER}") 