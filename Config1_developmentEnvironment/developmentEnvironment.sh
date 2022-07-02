#!/bin/bash

developmentAppsInstall() {
	aptInstall git base-devel vim
}

echo "developmentAppsInstall --> installs git, base-devel, vim etc"

aptInstall() {
	apt install $@ -y
}
echo "aptInstall [apps] --> installs apps from aptitude with -y flag"

