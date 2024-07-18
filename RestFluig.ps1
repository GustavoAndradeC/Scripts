# Lista de serviços na ordem que devem ser desligados
$services = @("fluig", "fluig_RealTime", "fluig_Indexer")

# Função para desligar serviços na ordem especificada
function Stop-Services {
    param (
        [string[]]$services
    )
    foreach ($service in $services) {
        Write-Output "Desligando $service..."
        Stop-Service -Name $service -Force
    }
}

function Start-Services {
    param (
        [string[]]$services
    )
    foreach ($service in $services[($services.Count - 1)..0]) {
        Write-Output "Ligando $service..."
        Start-Service -Name $service
    }
}
Write-Output "1. Desligar serviços"
Write-Output "2. Ligar serviços"
$option = Read-Host "Digite a opção"

switch ($option) {
    1 {
        Stop-Services -services $services
    }
    2 {
        Start-Services -services $services
    }
    default {
        Write-Output "Opção inválida"
    }
}
