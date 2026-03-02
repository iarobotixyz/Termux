#!/bin/bash

BASE_DIR="$HOME/roboticaxyz"
MODULES_DIR="$BASE_DIR/modulos"
CONFIG="$BASE_DIR/config.cfg"

init_system() {
    mkdir -p $MODULES_DIR
    touch $CONFIG
}

color() {
    echo -e "\e[1;32m$1\e[0m"
}

main_menu() {
    clear
    color "================ ROBOTICAXYZ TERMUX PRO ================"
    echo "1) Sistema"
    echo "2) Programación"
    echo "3) Redes y Servidores"
    echo "4) Electrónica e IoT"
    echo "5) Sismología (SSN)"
    echo "6) Extras"
    echo "7) Actualizar Sistema"
    echo "0) Salir"
    echo "========================================================="
    read -p "Selecciona opción: " opt

    case $opt in
        1) bash $MODULES_DIR/sistema.sh ;;
        2) bash $MODULES_DIR/programacion.sh ;;
        3) bash $MODULES_DIR/redes.sh ;;
        4) bash $MODULES_DIR/iot.sh ;;
        5) bash $MODULES_DIR/sismologia.sh ;;
        6) bash $MODULES_DIR/extras.sh ;;
        7) bash $BASE_DIR/update.sh ;;
        0) exit ;;
    esac
}

init_system

while true; do
    main_menu
done
