#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
yum -y install epel-release
yum -y install git
yum -y install espeak
yum -y install fish
yum -y install mesa-libGLU # for Nuke and Other Graphics SW.
yum -y install transmission
yum -y install tigervnc
yum -y install filezilla
yum -y install pandoc
yum -y install key-mon
yum -y install tree
yum -y install ImageMagick
yum -y install mediainfo
yum -y install gvim
yum -y install libreoffice
yum -y install calligra-krita

# ripgrep
yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
yum -y install ripgrep

# chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum -y localinstall google-chrome-stable_current_x86_64.rpm


