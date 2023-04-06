#!/bin/sh
echo Actualizando sistema 
apt-get update -y

sh -c "$(curl -fsSL https://gitlab.com/hp3icc/emq-TE1/-/raw/main/menu/menu-ufw)"

sh -c "$(curl -fsSL https://gitlab.com/hp3icc/emq-TE1/-/raw/main/install/f2b+ufw.sh)"

menu-ufw
