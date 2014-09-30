#!/bin/bash
NAME=ESSENTIAL_LINUX_SHELL
VERSION=20140930

# MAIN SCREEN, LANGUAGE SELECTION


# SUDO PRIVILIGES #
if ! zenity --question \
       --title="Sudo requirement" \
       --text="Make sure you are running this script with administrator privileges.\n\nHave you ran this script with sudo?"; then
       exit
fi

# SELECT LINUX SYSTEM #
LINUX=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Select your Linux distribution and version:" \
				--column="Distribution" \
				"Ubuntu 14.04")
if [[ $LINUX = "Ubuntu 14.04" ]]; then
	echo "Using Ubuntu 14.04"
else
	exit
fi

# CHOOSE LANGUAGE AND OPEN SH SCRIPT
LANGUAGE=$(zenity --list --title="Choose your language" --text="Please select the language to use for the interface.\nPor favor, seleccione el idioma deseo para la interfaz.\n"  --column="Language" "English" "Español")
if [ $LANGUAGE = "English" ]; then
	./Ubuntu/14.04/EN/en.sh
	#echo "English"
fi
if [ $LANGUAGE = "Español" ]; then
	./Ubuntu/14.04/ES/es.sh
	#echo "Español"
fi