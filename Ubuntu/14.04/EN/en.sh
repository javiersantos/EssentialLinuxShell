#!/bin/bash

# CHECK IF APPS ARE INSTALLED #
# Editors #
if [ -f /usr/bin/gedit ]; then
	GEDIT=
	GEDIT_N=
else
	GEDIT=FALSE
	GEDIT_N=Gedit
fi
if [ -f /usr/bin/emacs24 ]; then
	EMACS=
	EMACS_N=
else
	EMACS=FALSE
	EMACS_N="Emacs"
fi
if [ -f /usr/bin/vim ]; then
	VIM=
	VIM_N=
else
	VIM=FALSE
	VIM_N="Vim"
fi
if [ -f /usr/bin/subl ]; then
	SUBL=
	SUBL_N=
else
	SUBL=FALSE
	SUBL_N="Sublime Text"
fi
# CLI Tools #
if [ -f /usr/bin/git ]; then
	GIT=
	GIT_N=
else
	GIT=FALSE
	GIT_N="Git"
fi
# Multimedia #
if [ -f /usr/bin/viewnior ]; then
	VIEWNIOR=
	VIEWNIOR_N=
else
	VIEWNIOR=FALSE
	VIEWNIOR_N="Viewnior"
fi
if [ -f /usr/bin/xbmc ]; then
	XBMC=
	XBMC_N=
else
	XBMC=FALSE
	XBMC_N="XBMC"
fi
if [ -f /usr/bin/xbmc ]; then
	XBMC=
	XBMC_N=
else
	XBMC=FALSE
	XBMC_N="XBMC"
fi
if [ -f /usr/bin/rhythmbox ]; then
	RHYTHMBOX=
	RHYTHMBOX_N=
else
	RHYTHMBOX=FALSE
	RHYTHMBOX_N="Rhythmbox"
fi
if [ -f /usr/bin/audacity ]; then
	AUDACITY=
	AUDACITY_N=
else
	AUDACITY=FALSE
	AUDACITY_N="Audacity"
fi
if [ -f /usr/bin/simplescreenrecorder ]; then
	SCR=
	SCR_N=
else
	SCR=FALSE
	SCR_N="Simple Screen Recorder"
fi
if [ -f /usr/bin/vlc ]; then
	VLC=
	VLC_N=
else
	VLC=FALSE
	VLC_N="VLC"
fi
if [ -f /usr/bin/spotify ]; then
	SPOTIFY=
	SPOTIFY_N=
else
	SPOTIFY=FALSE
	SPOTIFY_N="Spotify"
fi
# Social #
if [ -f /usr/bin/skype ]; then
	SKYPE=
	SKYPE_N=
else
	SKYPE=FALSE
	SKYPE_N="Skype"
fi
if [ -f /usr/bin/thunderbird ]; then
	THUNDERBIRD=
	THUNDERBIRD_N=
else
	THUNDERBIRD=FALSE
	THUNDERBIRD_N="Thunderbird"
fi
# EDITORS #
EDITORS=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Text Editors" \
				--checklist \
				--column="Install?" --column="Name" \
				$GEDIT $GEDIT_N \
				$EMACS $EMACS_N \
				$VIM  $VIM_N \
				$SUBL $SUBL_N)
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
	dpkg -i gedit_3.10.4-0ubuntu4_amd64.deb
fi
if [[ "$EDITORS" =~ "Emacs" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/universe/e/emacs24/emacs24-lucid_24.3+1-2ubuntu1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Gedit..."
	dpkg -i emacs24-lucid_24.3+1-2ubuntu1_i386.deb
fi
if [[ "$EDITORS" =~ "Vim" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/main/v/vim/vim_7.4.052-1ubuntu3_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Gedit..."
	dpkg -i vim_7.4.052-1ubuntu3_i386.deb
fi
if [[ "$EDITORS" =~ "Sublime Text" ]]; then
	wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Gedit..."
	dpkg -i sublime-text_build-3065_i386.deb
fi