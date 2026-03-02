#!/bin/bash

BASE="$HOME/termux-pro"
MODULES="$BASE/modules"
VERSION=$(cat $BASE/version.txt)

banner() {
    clear
    figlet "RoboticaXYZ"
    echo "Termux Pro v$VERSION"
    echo "======================================="
    sleep 1
}

main_menu() {
    banner
    echo "1) Sistema"
    echo "2) Programación"
    echo "3) Redes y Servidores"
    echo "4) Electrónica e IoT"
    echo "5) Sismología (SSN)"
    echo "6) Extras"
    echo "7) Actualizar Plataforma"
    echo "8) Información del Sistema"
    echo "0) Salir"
    echo "======================================="
    read -p "Selecciona opción: " opt

    case $opt in
        1) bash $MODULES/sistema.sh ;;
        2) bash $MODULES/programacion.sh ;;
        3) bash $MODULES/redes.sh ;;
        4) bash $MODULES/iot.sh ;;
        5) bash $MODULES/sismologia.sh ;;
        6) bash $MODULES/extras.sh ;;
        7) bash $BASE/update.sh ;;
        8) neofetch ;;
        0) exit ;;
    esac
}

while true; do
    main_menu
done
