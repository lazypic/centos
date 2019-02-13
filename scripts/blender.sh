#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
wget https://www.blender.org/download/Blender2.79/blender-2.79b-linux-glibc219-x86_64.tar.bz2
tar -xjf blender-2.79b-linux-glibc219-x86_64.tar.bz2
