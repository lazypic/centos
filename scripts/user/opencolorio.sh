#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
git clone https://github.com/imageworks/OpenColorIO OpenColorIO_src
cd OpenColorIO_src
git tag
git checkout v1.0.9
cd ..
mkdir OpenColorIO_build
cd OpenColorIO_build
/home/$USER/app/cmake-3.13.3/bin/cmake ../OpenColorIO_src -DCMAKE_INSTALL_PREFIX=/home/$USER/app/OpenColorIO
make
make install
