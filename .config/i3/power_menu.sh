#!/bin/bash

# Create a temporary file for the menu options
MENU_FILE="/tmp/i3-power-menu"

# Generate menu options
echo "Lock" > $MENU_FILE
echo "Sleep" >> $MENU_FILE
echo "Hibernate" >> $MENU_FILE
echo "Restart" >> $MENU_FILE
echo "Shutdown" >> $MENU_FILE

# Display menu using dmenu
CHOICE=$(cat $MENU_FILE | dmenu -p "Select an option:")

# Act on the choice
case $CHOICE in
    Lock)
        i3lock -c 000000
        ;;
    Sleep)
        systemctl suspend
        ;;
    Hibernate)
        systemctl hibernate
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
