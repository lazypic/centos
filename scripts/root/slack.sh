#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
cd /tmp
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -Uvh epel-release-7-11.noarch.rpm 
yum -y install libappindicator
wget https://downloads.slack-edge.com/linux_releases/slack-3.3.7-0.1.fc21.x86_64.rpm
yum -y install slack-3.3.7-0.1.fc21.x86_64.rpm
