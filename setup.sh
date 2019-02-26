#!/bin/sh
echo "source /home/$USER/centos/env/init.env" >> /home/$USER/.bashrc
echo "source /home/$USER/centos/env/help.env" >> /home/$USER/.bashrc

if [ ! -d "$HOME/bin" ]; then
	mkdir $HOME/bin
fi
cp ./bin/* $HOME/bin
LANG=C xdg-user-dirs-gtk-update

git config --global user.name "woong"
git config --global user.email khw7096@gmail.com
git config --global color.ui true
