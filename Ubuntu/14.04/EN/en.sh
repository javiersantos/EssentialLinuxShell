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
# Tools #
if [ -f /usr/bin/git ]; then
	GIT=
	GIT_N=
else
	GIT=FALSE
	GIT_N="Git"
fi
if [ -f /usr/sbin/synaptic ]; then
	SYNAPTIC=
	SYNAPTIC_N=
else
	SYNAPTIC=FALSE
	SYNAPTIC_N="Synaptic"
fi
# Browser #
if [ -f /usr/bin/google-chrome ]; then
	CHROME=
	CHROME_N=
else
	CHROME=FALSE
	CHROME_N="Google Chrome"
fi
if [ -f /usr/bin/firefox ]; then
	FIREFOX=
	FIREFOX_N=
else
	FIREFOX=FALSE
	FIREFOX_N="Firefox"
fi
if [ -f /usr/bin/opera ]; then
	OPERA=
	OPERA_N=
else
	OPERA=FALSE
	OPERA_N="Opera"
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

## INSTALLATION #

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
	wget http://archive.ubuntu.com/ubuntu/pool/universe/e/emacs24/emacs24-lucid_24.3+1-2ubuntu1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Emacs..."
	dpkg -i emacs24-lucid_24.3+1-2ubuntu1_i386.deb
fi
if [[ "$EDITORS" =~ "Vim" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/main/v/vim/vim_7.4.052-1ubuntu3_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Vim..."
	dpkg -i vim_7.4.052-1ubuntu3_i386.deb
fi
if [[ "$EDITORS" =~ "Sublime Text" ]]; then
	wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Sublime Text..."
	dpkg -i sublime-text_build-3065_i386.deb
fi

# BROWSER #
BROWSER=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Browser" \
				--checklist \
				--column="Install?" --column="Name" \
				$CHROME $CHROME_N \
				$FIREFOX $FIREFOX_N \
				$OPERA $OPERA_N)
if [[ "$BROWSER" =~ "Google Chrome" ]]; then
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Google Chrome..."
	dpkg -i google-chrome-stable_current_i386.deb
fi
if [[ "$BROWSER" =~ "Firefox" ]]; then
	wget http://security.ubuntu.com/ubuntu/pool/main/f/firefox/firefox_32.0.3+build1-0ubuntu0.12.04.1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Firefox..."
	dpkg -i firefox_32.0.3+build1-0ubuntu0.12.04.1_i386.deb
fi
if [[ "$BROWSER" =~ "Opera" ]]; then
	wget http://deb.opera.com/opera/pool/non-free/o/opera/opera_12.16.1860_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Opera..."
	dpkg -i opera_12.16.1860_i386.deb
fi

# TOOLS #
TOOLS=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Tools" \
				--checklist \
				--column="Install?" --column="Name" \
				$GIT $GIT_N \
				$SYNAPTIC $SYNAPTIC_N)
if [[ "$TOOLS" =~ "Git" ]]; then
	wget http://ftp.us.debian.org/debian/pool/main/g/git/git-core_2.1.1-1_all.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Git..."
	dpkg -i git-core_2.1.1-1_all.deb
fi
if [[ "$TOOLS" =~ "Synaptic" ]]; then
	wget http://ftp.us.debian.org/debian/pool/main/s/synaptic/synaptic_0.75.13_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Synaptic..."
	dpkg -i synaptic_0.75.13_i386.deb
fi

# MULTIMEDIA #
MEDIA=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Multimedia" \
				--checklist \
				--column="Install?" --column="Name" \
				$VIEWNIOR $VIEWNIOR_N \
				$XBMC $XBMC_N \
				$RHYTHMBOX $RHYTHMBOX_N \
				$AUDACITY $AUDACITY_N \
				$VLC $VLC_N \
				$SPOTIFY $SPOTIFY_N)
if [[ "$MEDIA" =~ "Viewnior" ]]; then
	wget http://ftp.us.debian.org/debian/pool/main/v/viewnior/viewnior_1.4-2+b1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Viewnior..."
	dpkg -i viewnior_1.4-2+b1_i386.deb
fi
if [[ "$MEDIA" =~ "XBMC" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/universe/x/xbmc/xbmc_12.3+dfsg1-3ubuntu1_all.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading XBMC..."
	dpkg -i xbmc_12.3+dfsg1-3ubuntu1_all.deb
fi
if [[ "$MEDIA" =~ "Rhythmbox" ]]; then
	wget http://archive.ubuntu.com/ubuntu/pool/main/r/rhythmbox/rhythmbox_3.0.2-0ubuntu1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Rhythmbox..."
	dpkg -i rhythmbox_3.0.2-0ubuntu1_i386.deb
fi
if [[ "$MEDIA" =~ "Audacity" ]]; then
	wget http://mirrors.kernel.org/ubuntu/pool/universe/a/audacity/audacity_2.0.5-1ubuntu3_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Audacity..."
	dpkg -i audacity_2.0.5-1ubuntu3_i386.deb
fi
if [[ "$MEDIA" =~ "VLC" ]]; then
	wget http://ftp.us.debian.org/debian/pool/main/v/vlc/vlc-nox_2.2.0~pre3-1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading VLC..."
	dpkg -i vlc-nox_2.2.0~pre3-1_i386.deb
fi
if [[ "$MEDIA" =~ "Spotify" ]]; then
	wget http://repository.spotify.com/pool/non-free/s/spotify/spotify-client_0.9.4.183.g644e24e.428-1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Spotify..."
	dpkg -i spotify-client_0.9.4.183.g644e24e.428-1_i386.deb
fi

# SOCIAL #
MEDIA=$(zenity --list \
                --title="Essential Linux Shell" \
				--text="Social" \
				--checklist \
				--column="Install?" --column="Name" \
				$SKYPE $SKYPE_N \
				$THUNDERBIRD $THUNDERBIRD_N)
if [[ "$MEDIA" =~ "Skype" ]]; then
	wget http://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Skype..."
	dpkg -i skype-ubuntu-precise_4.3.0.37-1_i386.deb
fi
if [[ "$MEDIA" =~ "Thunderbird" ]]; then
	wget http://security.ubuntu.com/ubuntu/pool/main/t/thunderbird/thunderbird-dbg_31.1.2+build1-0ubuntu1_i386.deb -P /tmp/ 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | zenity --progress --title="Downloading Thunderbird..."
	dpkg -i thunderbird-dbg_31.1.2+build1-0ubuntu1_i386.deb
fi