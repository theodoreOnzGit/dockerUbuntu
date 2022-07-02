#!/bin/bash

openfoamInstall () {
	aptInstall sudo wget curl -y
	wget -q -O - https://dl.openfoam.com/add-debian-repo.sh | sudo bash
	sudo apt-get install openfoam2112-default -y
	sudo dpkg --remove --force-all libopenmpi-dev
	sudo apt install libopenmpi-dev -y
	ls /usr/lib/openfoam/openfoam2112/etc/
	echo "source /usr/lib/openfoam/openfoam2112/etc/bashrc" >> ~/.bashrc
	echo "source /usr/lib/openfoam/openfoam2112/etc/bashrc" >> ~/.zshrc
}

echo "openfoamInstall --> installs openfoam and prereqs"

salomeInstall () {
	aptInstall build-essential 
	aptInstall pip libboost-all-dev libqwt-qt5-dev libglu1-mesa-dev 
	aptInstall libqt5printsupport5 libqt5test5 libqt5x11extras5-dev 
	aptInstall libqt5help5 libfreeimage-dev libxmu-dev libtbb-dev liblapack-dev 
	aptInstall python3-sip python3-pyqt5 
}

aptInstall() {
	apt install $@ -y
}
echo "aptInstall [apps] --> installs apps from aptitude with -y flag"


