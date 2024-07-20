#!/bin/bash

services=("fluig" "fluig_RealTime" "fluig_Indexer")

stop_services() {
    for service in "${services[@]}"; do
        echo "Desligando $service..."
        sudo systemctl stop $service
    done
}

start_services() {
    for (( idx=${#services[@]}-1 ; idx>=0 ; idx-- )); do
        echo "Ligando ${services[idx]}..."
        sudo systemctl start ${services[idx]}
    done
}

echo "1. Desligar serviços"
echo "2. Ligar serviços"
read -p "Digite a opção: " option

case $option in
    1)
        stop_services
        ;;
    2)
        start_services
        ;;
    *)
        echo "Opção inválida"
        ;;
esac
