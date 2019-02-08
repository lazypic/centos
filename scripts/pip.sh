#!/bin/sh
cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

#pip install --upgrade setuptools # 간혹 이 작업 이후 부팅이 안되는 컴퓨터가 발생함.
pip install --user pymediainfo
pip install --user PySide2
pip install --user numpy
pip install --user Cython
