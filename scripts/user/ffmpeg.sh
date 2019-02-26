#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

if [ ! -d "/home/$USER/app/ffmpeg" ]; then
	mkdir /home/$USER/app/ffmpeg
fi

cd /home/$USER/app/ffmpeg
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz --no-check-certificate
tar xpvf ffmpeg-release-amd64-static.tar.xz --strip 1
rm ffmpeg-release-amd64-static.tar.xz


