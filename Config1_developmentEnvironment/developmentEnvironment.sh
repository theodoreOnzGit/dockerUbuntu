#!/bin/bash

developmentAppsInstall() {
	aptInstall git build-essential vim gh \
		neofetch
}

echo "developmentAppsInstall --> installs git, base-devel, vim etc"

vimPluginInstall() {
	aptInstall vim-youcompleteme \
		vim-syntastic \
		vim-tabular \
		vim-gitgutter \
		vim-ctrlp
	
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	rm -rf ~/.vimrc
	cp vimrcTemplate ~/.vimrc
}



echo "vimPluginInstall --> installs various vim plugins"
echo "also brings the vimrc into the ~/.vimrc directory"
echo " "



aptInstall() {
	apt install $@ -y
}
echo "aptInstall [apps] --> installs apps from aptitude with -y flag"


