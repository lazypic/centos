#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

if [ ! -d "/home/$USER/app/ffmpeg" ]; then
	mkdir /home/$USER/app/ffmpeg
fi

cd /home/$USER/app/ffmpeg
wget http://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz
tar xpvf ffmpeg-git-64bit-static.tar.xz --strip 1
rm ffmpeg-git-64bit-static.tar.xz


