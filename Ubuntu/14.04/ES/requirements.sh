#!/bin/bash

# SUDO PRIVILIGES #
if zenity --question \
       --title="Necesitas acceso sudo" \
       --text="Asegúrate de ejecutar el script usando permisos de administrador.\n\n¿Has iniciado el script usando sudo?"; then
       ./requirements.sh
   else
   	exit
fi