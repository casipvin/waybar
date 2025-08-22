#!/bin/bash

chosen=$(echo -e "   Wyłącz\n   Restart\n   Wyloguj\n  Uśpij" | wofi --dmenu --prompt "Zasilanie" --style ~/.config/wofi/style.css)

case "$chosen" in
  *"Wyłącz") systemctl poweroff ;;
  *"Restart") systemctl reboot ;;
  *"Wyloguj") loginctl terminate-user $USER ;;
  *"Uśpij") systemctl suspend ;;
esac
