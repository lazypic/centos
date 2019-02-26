#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
wget https://github.com/ImageEngine/gaffer/releases/download/0.53.0.0/gaffer-0.53.0.0-linux.tar.gz
tar -zxvf gaffer-0.53.0.0-linux.tar.gz
