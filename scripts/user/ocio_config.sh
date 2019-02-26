#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

cd /home/$USER/app
git clone https://github.com/imageworks/OpenColorIO-Configs
