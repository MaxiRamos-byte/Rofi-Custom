#!/bin/bash

echo "Instalamos rofi"

sudo pacman --noconfirm -S rofi

echo "Instalamos la fuente necesaria"

yay -S ttf-jetbrains-mono-nerd

echo "Colocamos la configuracion en la carpeta predeterminada"

cp -r rofi ~/.config



