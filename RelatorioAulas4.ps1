# Cria um parametro, para passar ao final da chamada do script para escolher o tipo de dexportação
# seja JSON, HTML ou CSV...

param($tipoDeExportacao)

# Define que a execução do script seja cancelada, caso haja um erro de script.

$ErrorActionPreference = "Stop"

# Cria um Hashtable para a coluna "Name" que terá o label chamado "Nome".

$nameExpr = @{
	Label="Nome"; 
	Expression= {$_.Name}
}

# Aqui também montamos um Hashtable, só que para o "Size", 
# que será chamado de "Tamanho".

$lengthExpr = @{
	Label="Tamanho";
	Expression= {"{0:N2}KB" -f ($_.Length / 1KB)}
}

# Basta usar uma vírgula e nós temos um Array.

$params = $nameExpr, $lengthExpr

# Código de busca pelos arquivos que tenham no nome "Aula 4", 
# utilizando os filtros Select e Where.

$resultado = 
	gci -Recurse -File 'c:\Users\wendelsilva.IMPRENSA\Documents\Cursos\Powershell' |
	Where-Object Name -like "*Aula 4*" |
	Select-Object $params
	
	if ($tipoDeExportacao -eq "html") {
		
# Obtém estilos do bootstrap para formatação posterior de um relatório em html	

		$estilos = Get-Content c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\bootstrap\css\bootstrap.css	
		$styleTag = "<style> $estilos </ style>"	
		$tituloPagina = "Relatório de Arquivos com Aula 4"
		$tituloBody = "<h1> $tituloPagina </h1>"
			
# Salva o resultado em HTML para relatório

		$resultado | 
			ConvertTo-Html -Head $styleTag -Title $tituloPagina -Body $tituloBody | 
			Out-File c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\Relatorios.html
	} elseif ($tipoDeExportacao -eq "json") {
		$resultado |
			ConvertTo-Json | 
			Out-File c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\Relatorios.json
	} elseif ($tipoDeExportacao -eq "csv") {
		$resultado |
			ConvertTo-Csv -NoTypeInformation | 
			Out-File c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\Relatorios.csv
	}
	
# Obtém estilos do bootstrap para formatação posterior de um relatório em html	

$estilos = Get-Content c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\bootstrap\css\bootstrap.css	
$styleTag = "<style> $estilos </style>"	
$tituloPagina = "Relatório de Arquivos com Aula 4"
$tituloBody = "<h1> $tituloPagina </h1>"
	
# Salva o resultado em HTML para relatório

$resultado | 
	ConvertTo-Html -Head $styleTag -Title $tituloPagina -Body $tituloBody | 
	Out-File c:\Users\wendelsilva.IMPRENSA\Documents\Scripts\Relatorios\Relatorios.html

# Código abaixo utilizado anteriormente para a mesma coisa, sem a correção do tamanho dos arquivos

<# 
 gci -Recurse -File 'c:\Users\wendelsilva.IMPRENSA\Documents\Cursos\Powershell' | 
 Where-Object Name -like "*Aula 4*" | 
 Select-Object Name, {"{0:N2}KB" -f ($_.Length / 1KB)} 
#>
 
 