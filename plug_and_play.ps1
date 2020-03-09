 
# Abre o PowerShell no diretório que o arquivo plug_and_play.ps1 está

cd /D "%~dp0"

# Cria pasta para o arquivo de instalação

mkdir Instaladores

cd Instaladores

# Baixa instalador do driver Gecko
$url = "https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-win64.zip"
$output = "$PSScriptRoot\geckodriver-v0.26.0-win64.zip"
$start_time = Get-Date

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
#OR
Start-BitsTransfer -Source $url -Destination $output -Asynchronous

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"



:End
cmd /k