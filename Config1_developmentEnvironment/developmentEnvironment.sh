#!/bin/bash

developmentAppsInstall() {
	aptInstall git build-essential vim gh
}

echo "developmentAppsInstall --> installs git, base-devel, vim etc"

vimPluginInstall() {
	aptInstall vim-youcompleteme \
		vim-syntastic \
		vim-tabular \
		vim-gitgutter \
		vim-ctrlp
}



echo "vimPluginInstall --> installs various vim plugins"

aptInstall() {
	apt install $@ -y
}
echo "aptInstall [apps] --> installs apps from aptitude with -y flag"


