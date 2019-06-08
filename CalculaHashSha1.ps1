###########################################################################
# NOME: Script calcula um Hash Sha1 de um arquivo.
# AUTOR: Wendel Silva.
# HISTÓRICO DE VERSÃO: 1.0.
# 1.0 | 06/06/2019 - Versão inicial - Wendel Silva.
############################################################################
## Sempre entre como Administrador para executar scripts na raíz C:
## Caso não tenha permissão de executar script no power shell, digite
## Get-ExecutionPolicy Unrestricted
############################################################################

#Função que calcúla o Hash sobre os bytes de um arquivo

function Get-FileSHA1($filePath) { 
    $fileContent = Get-Content $filePath 
    $fileBytes = [System.Text.Encoding]::UTF8.GetBytes($fileContent)
    
    $sha1 = New-Object System.Security.Cryptography.SHA1Managed
    $hash = $sha1.ComputeHash($fileBytes) 
    
    $prettyHashSB = New-Object System.Text.StringBuilder # para concatenar melhor

    foreach ($byte in $hash) {
        $hexaNotation = $byte.ToString("X2") # Formata para uma string hexadecimal
        $prettyHashSB.Append($hexaNotation) > $null # armazena concatenando    numeros sem espaço
    }
    
    $prettyHashSB.ToString()
}

$arquivo = 'c:\listaDeProgramas.txt'
$hashDoArquivo = Get-FileSHA1 $arquivo

Write-Host "O Hash do arquivo $arquivo é $hashDoArquivo" -BackgroundColor Red -ForegroundColor Yellow