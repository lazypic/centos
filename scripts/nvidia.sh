#!/bin/sh
# 그래픽카드 드라이버를 설치하기 위한 쉘스크립트 입니다.
yum -y update
yum -y install kernel-devel
yum -y install kernel-headers
yum -y install gcc
yum -y install make

# 모팩아카데미용 그래픽 카드 드라이버
cd /tmp
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/410.93/NVIDIA-Linux-x86_64-410.93.run
