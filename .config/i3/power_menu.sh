#!/bin/bash

# Create a temporary file for the menu options
MENU_FILE="/tmp/i3-power-menu"

# Generate menu options
echo "Sleep" > $MENU_FILE
echo "Restart" >> $MENU_FILE
echo "Shutdown" >> $MENU_FILE

# Display menu using dmenu
CHOICE=$(cat $MENU_FILE | dmenu -p "Select an option:")

# Act on the choice
case $CHOICE in
    Sleep)
        systemctl suspend
        ;;
    Restart)
        systemctl reboot
        ;;
    Shutdown)
        systemctl poweroff
        ;;
esac

# Clean up
rm -f $MENU_FILE
