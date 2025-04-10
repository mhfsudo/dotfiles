#!/bin/bash

echo "=============================================================================="
echo "                                      "
echo "       __    ___  ___   ___  _______	"
echo "      /  \__/  / /  /  /  / /  ____/  "
echo "     /        / /  /__/  / /  /__     "
echo "    /  /\_/  / /  ___   / /  ___/     "
echo "   /  /  /  / /  /  /  / /  /		    "
echo "  /__/  /__/ /__/  /__/ /__/ 		    "
echo "                                      "
echo "======================================"
echo ""
echo "Good, let us install some programs"
echo "First we install some required components and update the system"
echo ""

sudo ln -s /var/lib/snapd/snap /snap
sudo pacman -Syu

clear
echo "======================================"
echo "Anaconda for Python(y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -Sy libxau libxi libxss libxtst libxcursor libxcomposite libxdamage libxfixes libxrandr libxrender mesa-libgl  alsa-lib libglvnd
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Atom Text Editor (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S atom
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Authy (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo snap install authy
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Bitwarden Password Manager (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo flatpak install flathub com.bitwarden.desktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Brave (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S brave-browser
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Cheese Webcam (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S cheese
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Chrome (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://www.google.com
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Chromium (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S chromium
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Dconf Editor (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S dconf-editor
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Deja Dup Backup Tool (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S deja-dup
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Docker (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S docker
		docker version
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Draw.io (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo snap install drawio
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Java OpenJDK 14 (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S jre-openjdk-headless jre-openjdk jdk-openjdk openjdk-doc openjdk-src
		java -version
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Eclipse IDE (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo snap install eclipse --classic
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Fish Shell (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S fish
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Flameshot Screenshot Tool (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S flameshot
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Gimp (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S gimp
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Gradle (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S gradle
		gradle -v
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Groovy (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S groovy
		groovy -version
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "GitKraken (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo flatpak install flathub com.axosoft.GitKraken
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Hyper Terminal (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://releases.hyper.is/download/AppImage
		sudo pacman -S appimagelauncher
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Helm (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo snap install helm --classic
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "JetBrains Tools (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://www.jetbrains.com/de-de/toolbox-app/download/download-thanks.html?platform=linux
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Jupyter Notebook for Python (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S python-pip
		sudo pip install pip --upgrade
		sudo pip install jupyter
		sudo pip install jupyterlab
		sudo pip install notebook
		sudo pacman -S pandoc
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "K8s Kubectl (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo snap install kubectl --classic
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "K8s Minikube (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S minikube
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "KeePass XC (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S keepassxc
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Libre Office (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S libreoffice-fresh
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Maven (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S maven
		mvn -version
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Microsoft Teams (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo flatpak install flathub com.github.IsmaelMartinez.teams_for_linux
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "MySQL Workbench (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S mysql-workbench
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Noson Sonos Controller (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo flatpak install flathub io.github.janbar.noson
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Notepad++ Text Editor(y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install notepad-plus-plus
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Notion(y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install notion-snap
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "OnlyOffice(y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S onlyoffice-desktopeditors
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "OneNote (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install onenote-desktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Opera (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S opera
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Postman (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install postman
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "ProtonMail Electron (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo flatpak install flathub com.github.vladimiry.ElectronMail
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "ProtonMail Bridge (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    firefox https://protonmail.com/bridge/download
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "ProtonMail VPN (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://protonvpn.com/download
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Python (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S python3 python3-venv python3-pip
		python3 --version
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Signal (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S signal-desktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Spaceship Shell Erweiterung (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://github.com/spaceship-prompt/spaceship-prompt
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Spotify (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo flatpak install flathub com.spotify.Client
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Starship Shell Erweiterung (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		firefox https://starship.rs/
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Sublime Text (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S sublime-text
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Synology Drive (y/n)"
read answer
case "$answer" in
  y) echo "wird installiert"
        sudo pacman -S synology-drive-client
    	;;
  n) echo "wird nicht installiert"
    	;;
esac

clear
echo "======================================"
echo "Telegram (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S telegram-desktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "TexMaker (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S texmaker
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Threema (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo flatpak install flathub io.bit3.ThreemaQTp
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Thunderbird Mail (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S thunderbird
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Timeshift (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S timeshift
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Todoist (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install todoist
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Tweaks (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S gnome-tweaks
		sudo pacman -S gnome-shell-extensions
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Vim (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S vim
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Virtual Box (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S virtualbox
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Visual Studio Code IDE (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo flatpak install flathub com.visualstudio.code
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Vivaldi Browser (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo pacman -S vivaldi
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "VLC Player (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S vlc
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Whatsapp (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo flatpak install flathub io.github.mimbrero.WhatsAppDesktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Wireshark (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S wireshark-cli
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Yubico Authenticator (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo snap install yubioath-desktop
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "YubiKey Manager (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S yubikey-manager
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "ZSH Shell (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo pacman -S zsh
		zsh --version
		sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
		firefox https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
		;;
	n) echo "wird nicht installiert"
		;;
esac

echo "======================================"
echo "Puuhh, that was a lot of work"
echo "Don't forget the recommendations above!"
echo "Should we reboot the System? (y/n)"
echo ""
read answer
case "$answer" in
  y) echo "wird neugestartet"
		sudo  pacman -Syu
  		sudo reboot
    	;;
  n) echo "wird nicht neugestartet"
    	;;
esac

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
