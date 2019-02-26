#!/bin/sh
# 이 스크립트는 CentOS7.6 에서 소프트웨어를 설치한다.
# root로 실행후 user로 다시 한번 실행이 필요하다.

if [[ $EUID -e 0 ]]; then
./root/nvidia.sh
./root/utility.sh
./root/code.sh
./root/djv.sh
./root/mpv.sh
./root/rmhotcorner.sh
./root/devtools.sh
./root/handbrake.sh
./root/openimageio.sh
./root/pip_install.sh
./root/slack.sh
./rmbeep.sh
else
# install $USER
./user/trans.sh
./user/ocio_config.sh
./user/ffmpeg.sh
./user/pip.sh
./user/gaffer.sh
./user/blender.sh
# gcc6.x를 이용해서 빌드한다.
scl enable devtoolset-6 ./user/cmake.sh
scl enable devtoolset-6 ./user/openexr.sh
scl enable devtoolset-6 ./user/opencolorio.sh
scl enable devtoolset-6 ./user/alembic.sh
./rmbeep.sh
fi

