#!/bin/bash

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
				--column="Linux" \
				"Ubuntu 14.04" \
				"Other")
if [[ $LINUX = "Ubuntu 14.04" ]]; then
	echo "Using Ubuntu 14.04"
	./Ubuntu/14.04/EN/en.sh
else
	exit
fi
if [[ $LINUX = "Other" ]]; then
	zenity --error \
	       --title="Linux not supported" \
	       --text="Your Linux distribution is not supported yet."
	       exit
fi

# LICENSE AGREEMENT #
zenity --text-info \
       --title="License" \
       --html \
       --url=https://raw.githubusercontent.com/javiersantos/EssentialLinuxShell/master/LICENSE \
       --checkbox="I read and accept the terms."
case $? in
    1)
        exit
	;;
    -1)
        echo "An unexpected error has occurred. Please try again."
	;;
esac