#!/bin/bash

clear
echo "Instalando RoboticaXYZ Termux 1.0 ..."

pkg update -y
pkg install git curl figlet neofetch -y

cd $HOME
git clone https://github.com/iarobotixyz/Termux.git
echo "Descargando roboticaXYZ....."

cd Termux
bash RoboticaXYZ.sh ;;
#chmod +x *.sh
#chmod +x modules/*.sh

echo "Instalaci贸n completada."
echo "Ejecuta con:"
echo "bash roboticaxyz.sh"
