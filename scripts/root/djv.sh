#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
yum -y remove DJV
cd /tmp
wget https://sourceforge.net/projects/djv/files/djv-stable/1.2.5/DJV-1.2.5-1.x86_64.rpm
yum -y install DJV-1.2.5-1.x86_64.rpm
rm DJV-1.2.5-1.x86_64.rpm
