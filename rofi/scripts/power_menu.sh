#!/bin/bash

# Opciones del menú
options="󱐋 Performance\n 󰗑 Balanced\n 󰌪 Power Saver"

# Lanzar Rofi y capturar la elección
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Modo de Energía:" -config ~/.config/rofi/config.rasi)

# Aplicar el modo según la elección
case $chosen in
    *Performance)
        powerprofilesctl set performance ;;
    *Balanced)
        powerprofilesctl set balanced ;;
    *Power\ Saver)
        powerprofilesctl set power-saver ;;
esac
