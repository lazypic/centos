#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit 1
fi
yum -y install redis
systemctl enable redis
systemctl start redis
firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --reload
