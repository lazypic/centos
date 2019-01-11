#!/bin/sh
yum -y install yasm
yum -y install fribidi
yum -y install youtube-dl
yum -y install freetype-devel
yum -y install fribidi-devel
yum -y install fontconfig-devel
yum -y install harfbuzz-devel
yum -y install cmake
yum -y install mercurial
yum -y install nasm
yum -y install openssl-devel
yum -y install libX11-devel
yum -y install python-docutils
yum -y install luajit-devel
yum -y install libbluray-devel
yum -y install libdvdread-devel
yum -y install libcdio-paranoia-devel
yum -y install lcms2-devel
yum -y install pulseaudio-libs-devel
yum -y install jack-audio-connection-kit-devel
yum -y install alsa-lib-devel
yum -y install libdrm-devel
yum -y install libxkbcommon-devel
yum -y install libXScrnSaver-devel
yum -y install libXext-devel
yum -y install libXv-devel
yum -y install PyQt4-devel
yum -y install libvdpau-devel
yum -y install libva-devel
yum -y install gstreamer1-vaapi-devel
yum -y install libcaca-devel
yum -y install dh-autoreconf.noarch
cd /tmp
git clone https://github.com/mpv-player/mpv-build.git mpv_src
cd mpv_src
mkdir mpv-build
echo --enable-openssl >> ffmpeg_options
echo --enable-nonfree >> ffmpeg_options
./rebuild -j4
./install
