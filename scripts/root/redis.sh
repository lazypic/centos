#!/bin/sh
yum -y install redis
systemctl enable redis
systemctl start redis
firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --reload
