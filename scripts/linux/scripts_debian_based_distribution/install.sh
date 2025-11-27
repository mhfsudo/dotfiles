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

sudo apt install curl
sudo apt install snap
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt autoclean
sudo apt autoremove

clear
echo "======================================"
echo "Anaconda for Python(y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
		bash Anaconda3-2019.03-Linux-x86_64.sh
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
		firefox https://atom.io/download/deb
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
		{
			sudo apt install apt-transport-https curl
			sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
			echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
			sudo apt update
			sudo apt install brave-browser
		}
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
		sudo apt install cheese
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
		firefox https://www.google.com/chrome/fast-and-secure/
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
		sudo snap install chromium
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
		sudo apt install dconf-editor
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
		sudo apt install deja-dup
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
		sudo apt install docker.io
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
echo "Java AdoptOpenJDK 11 mit OpenJ9 (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
		sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
		sudo apt install adoptopenjdk-11-openj9
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
		sudo apt install fish
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
		sudo apt install flameshot
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
		sudo apt install gimp
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
		curl -s "https://get.sdkman.io" | bash
		source "$HOME/.sdkman/bin/sdkman-init.sh"
		sdk version
		sdk install gradle 6.7
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
		url -s "https://get.sdkman.io" | bash
		source "$HOME/.sdkman/bin/sdkman-init.sh"
		sdk version
		sdk install groovy
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
		sudo apt install fonts-firacode
		firefox https://hyper.is
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
		sudo apt install python3-pip
		sudo pip install pip --upgrade
		sudo pip install jupyter
		sudo pip install notebook
		sudo apt install pandoc
		sudo apt install texlive-xetex texlive-fonts-recommended
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
		curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
		sudo dpkg -i minikube_latest_amd64.deb
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
		sudo add-apt-repository ppa:phoerious/keepassxc
		sudo apt update && sudo apt install keepassxc
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
		sudo apt install libreoffice
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
		sudo apt install maven
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
		sudo apt install mysql-server
		sudo apt install mysql-workbench
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
	    sudo apt install onlyoffice-desktopeditors
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
	    firefox https://www.opera.com/download
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
		wget -q -O - https://repo.protonvpn.com/debian/public_key.asc | sudo apt-key add -
		sudo add-apt-repository 'deb https://repo.protonvpn.com/debian unstable main'
		sudo apt update && sudo apt-get install protonvpn
		firefox https://protonvpn.com/blog/linux-vpn-cli-beta/?utm_campaign=ww-en-2c-generic-coms_email-monthly_newsletter&utm_source=proton_users&utm_medium=link&utm_content=2020_-_dec
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Pyhon (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
		sudo apt install python3 python3-venv python3-pip
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
		sudo flatpak install flathub org.signal.Signal
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
echo "Startup USB Creator (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo apt install usb-creator-gtk
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
		wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
		sudo apt install apt-transport-https
		echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
		sudo apt update
		sudo apt install sublime-text
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
      firefox https://www.synology.com/en-us/support/download/DS218play#utilities
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
	    sudo flatpak install flathub org.telegram.desktop
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
	    sudo apt install texmaker
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
	    sudo apt install thunderbird
		;;
	n) echo "wird nicht installiert"
		;;
esac

clear
echo "======================================"
echo "Timeshift Backup Tool (y/n)"
read answer
case "$answer" in
	y) echo "wird installiert"
	    sudo apt install timeshift
		firefox https://linuxconfig.org/ubuntu-20-04-system-backup-and-restore
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
		sudo apt install gnome-tweaks
		sudo apt install gnome-shell-extensions
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
	    sudo apt install vim
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
	    sudo apt install virtualbox
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
		firefox https://vivaldi.com/download/
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
	    sudo apt install vlc
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
	    sudo apt install wireshark
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
	    sudo apt install yubikey-manager
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
	    sudo apt install zsh
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
echo "Should we reboot the System?"
echo ""
read answer
case "$answer" in
  y) echo "wird neugestartet"
	sudo apt update
	sudo apt upgrade
	sudo apt dist-upgrade
	sudo apt autoclean
	sudo apt autoremove
	sudo reboot
    ;;
  n) echo "wird nicht neugestartet"
    ;;
esac

echo ""
echo "Good, we're done"
echo ""
echo "=============================================================================="
