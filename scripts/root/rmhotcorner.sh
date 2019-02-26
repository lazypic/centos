#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
yum -y install gnome-tweak-tool
yum -y install gnome-shell-extension-no-hot-corner
# $ gnome-tweaks 를 타이핑 후, 확장 메뉴에서 "no topleft hot corner"를 켭니다.
