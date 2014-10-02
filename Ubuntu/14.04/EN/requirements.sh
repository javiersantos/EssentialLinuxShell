#!/bin/bash

# SUDO PRIVILIGES #
if zenity --question \
       --title="Sudo requirement" \
       --text="Make sure you are running this script with administrator privileges.\n\nHave you ran this script with sudo?"; then
       ./requirements.sh
   else
   	exit
fi