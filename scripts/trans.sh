#!/bin/sh
if [ ! -d "$HOME/bin" ]; then
	mkdir $HOME/bin
fi
cd $HOME/bin
wget https://github.com/lazypic/trans/releases/download/v0.1/trans_linux.tgz
tar -zxvf trans_linux.tgz
rm trans_linux.tgz
