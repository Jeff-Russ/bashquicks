#!/bin/bash
# install.sh 

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

TOKEN="#bashful_rails_begin"
TARGET=$HOME'/.bashrc'
SOURCE=$HOME'/bashful_rails/resources/bashrc_append'


if grep -s $TOKEN $TARGET; then
	echo "Installation found! Remove lines from .bashrc and run again."
else
	cat $SOURCE >> $TARGET
	echo `source ~/.bashrc`
	echo "Installation complete!"
fi