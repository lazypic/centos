#!/bin/sh
if [[ $EUID -ne 0 ]]; then
./root/nvidia.sh
./root/utility.sh
./root/code.sh
./root/djv.sh
./root/mpv.sh
./root/rmhotcorner.sh
./root/devtools.sh
./root/handbrake.sh
./rmbeep.sh
fi

# install $USER
./user/trans.sh
./user/rmbeep.sh
./user/openimageio.sh
./user/ocio_config.sh
./user/ffmpeg.sh
./user/pip.sh
./user/rmbeep.sh
# gcc6.x를 이용해서 빌드한다.
scl enable devtoolset-6 ./user/cmake.sh
scl enable devtoolset-6 ./user/openexr.sh
scl enable devtoolset-6 ./user/opencolorio.sh
scl enable devtoolset-6 ./user/alembic.sh
