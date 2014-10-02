#!/bin/bash

# SUDO PRIVILIGES #
if ! zenity --question \
       --title="Necesitas acceso sudo" \
       --text="Asegúrate de ejecutar el script usando permisos de administrador.\n\n¿Has iniciado el script usando sudo?"; then
   	exit
fi

# SELECT LINUX SYSTEM #
LINUX=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Selecciona la distribución y versión de Linux instalada:" \
				--column="Linux" \
				"Ubuntu 14.04" \
				"Otro")
if [[ $LINUX = "Ubuntu 14.04" ]]; then
	echo "Usando Ubuntu 14.04"
	./Ubuntu/14.04/ES/es.sh
else
	exit
fi
if [[ $LINUX = "Otro" ]]; then
	zenity --error \
	       --title="Linux no soportado" \
	       --text="La distribución de Linux no está soportada."
	       exit
fi

# LICENSE AGREEMENT #
zenity --text-info \
       --title="License" \
       --html \
       --url=https://raw.githubusercontent.com/javiersantos/EssentialLinuxShell/master/LICENSE \
       --checkbox="He leído y acepto las condiciones."
case $? in
    1)
        exit
	;;
    -1)
        echo "Ups, ha ocurrido algo extraño. Por favor inténtalo de nuevo."
	;;
esac