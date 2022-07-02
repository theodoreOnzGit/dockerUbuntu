#!/bin/bash

developmentAppsInstall() {
	aptInstall git build-essential vim gh
}

echo "developmentAppsInstall --> installs git, base-devel, vim etc"

aptInstall() {
	apt install $@ -y
}
echo "aptInstall [apps] --> installs apps from aptitude with -y flag"

