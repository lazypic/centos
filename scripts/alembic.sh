#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi
cd /home/$USER/app
git clone https://github.com/alembic/alembic alembic_src
cd alembic_src
git tag
git checkout 1.7.10
cd ..
mkdir alembic_build
mkdir alembic
cd alembic_build
/home/$USER/app/cmake-3.13.3/bin/cmake ../alembic_src -DILMBASE_ROOT=/home/$USER/app/IlmBase -DALEMBIC_SHARED_LIBS=OFF -DUSE_HDF5=OFF -DALEMBIC_LIB_USES_TR1=ON -DCMAKE_INSTALL_PREFIX=/home/$USER/app/alembic
make -j2
make install
