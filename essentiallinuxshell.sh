#!/bin/bash
NAME=ESSENTIAL_LINUX_SHELL
VERSION=20140930

# MAIN SCREEN, LANGUAGE SELECTION

# CHOOSE LANGUAGE AND OPEN SH SCRIPT
LANGUAGE=$(zenity --list --title="Choose your language" --text="Please select the language to use for the interface.\nPor favor, seleccione el idioma deseo para la interfaz.\n"  --column="Language" "English" "Español")
if [ $LANGUAGE = "English" ]; then
	./Ubuntu/14.04/EN/requirements.sh
	#echo "English"
fi
if [ $LANGUAGE = "Español" ]; then
	./Ubuntu/14.04/ES/requirements.sh
	#echo "Español"
fi