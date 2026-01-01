#!/bin/bash

# Si se le pasa un argumento, aplica el perfil
if [ "$@" ]; then
    case "$@" in
        *Performance) powerprofilesctl set performance ;;
        *Balanced) powerprofilesctl set balanced ;;
        *Power-Saver) powerprofilesctl set power-saver ;;
    esac
    exit 0
fi

# Lista de opciones que verá Rofi
echo "󱐋 Performance"
echo "󰗑 Balanced"
echo "󰌪 Power-Saver"
