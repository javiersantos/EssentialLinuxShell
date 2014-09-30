#!/bin/bash

# Check is apps are installed #
if [ -f /usr/bin/gedit ]; then
	GEDIT=TRUE
else
	GEDIT=FALSE
fi
if [ -f /usr/bin/emacs ]; then
	EMACS=TRUE
else
	EMACS=FALSE
fi
if [ -f /usr/bin/vim ]; then
	VIM=TRUE
else
	VIM=FALSE
fi
if [ -f /usr/bin/nano ]; then
	NANO=TRUE
else
	NANO=FALSE
fi
if [ -f /usr/bin/subl ]; then
	SUBL=TRUE
else
	SUBL=FALSE
fi

# EDITORS #
EDITORS=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Text Editors" \
				--checklist \
				--column="Install?" --column="Name" \
				$GEDIT "Gedit" \
				$EMACS "Emacs" \
				$VIM "Vim" \
				$NANO "Nano" \
				$SUBL "Sublime Text")
# case "${EDITORS}" in
# 	"Gedit")
# 		zenity --info --title="Answer" --text="You chose the first"
# 	;;
# 	"Emacs")
# 		zenity --info --title="Answer" --text="You chose the second one"
# 	;;
# 	"Vim")
# 		zenity --info --title="Quitting" --text="Bye!"
# 	;;
# esac
if [[ "$EDITORS" =~ "Gedit" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/main/g/gedit/gedit_3.10.4-0ubuntu4_amd64.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Gedit..."
fi
if [[ "$EDITORS" =~ "Emacs" ]]; then
	echo "Emacs"
fi
if [[ "$EDITORS" =~ "Vim" ]]; then
	echo "Vim"
fi
echo $EDITORS