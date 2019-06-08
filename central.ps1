###########################################################################
# NOME: Script que abre o navegador, loga no sistema CentraldeServicos e 
# entra direto no link desejado
# AUTOR: Wendel Silva.
# HISTÓRICO DE VERSÃO: 1.0.
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################


# Executa o Firefox e passa o endereço.

Start-Process 'C:\Arquivos de Programas\Mozilla Firefox\firefox.exe' 'https://centraldeservicosti.in.gov.br/citsmart/pages/serviceRequestIncident/serviceRequestIncident.load#/'

# Usa o Wscript para executar comandos do teclado

$wshell = New-Object -com WScript.shell
Start-Sleep 5

# Na tela de login, enviar os comandos para realizar o login

$wshell.SendKeys("{TAB}") 
$wshell.SendKeys("IN@meuzovo.com") 
$wshell.SendKeys("{ENTER}") 

# Manda atualizar a página de 20 em 20 segundos, caso o firefox esteja ativado

#while (1 -eq 1) { 
#	if ($wshell.AppActivate("firefox")) {
#		Start-Sleep 20 
#		$wshell.SendKeys("{F5}")
#	}
#} 

# Manda esperar até a página carregar para continuar os comandos

#Start-Sleep 5

# O símbolo de + significa SHIFT. ^ Significa CONTROL, e % significa ALT

# Manda ele abrir o código fonte da página

#$wshell.SendKeys("+{F10}")
#Start-Sleep 2
#$wshell.SendKeys("{V}")
#Start-Sleep 1
#$wshell.SendKeys("{V}")
#Start-Sleep 1
#$wshell.SendKeys("{ENTER}")



# Manda copiar o conteúdo do código fonte com Ctrl A

# Start-Sleep 2
# $wshell.SendKeys("^{A}")


#Lendo um arquivo txt
#$Text = Get-Content -Path E:\Temp\Projetos.txt 

#Transformando as linhas do arquivo em um array 
#$Text.GetType() | Format-Table -AutoSize

#Listando as linhas do arquivo
#foreach ($element in $Text) 
#{ 
#    $element 
#}