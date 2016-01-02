#!/bin/bash
# install.sh 

# TODO touch ~/.bash_prompt; ~/.bash_prompt < cat ~/bashful_rails/resources/bashrc_prompt 
# or something like that

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

TOKEN="#bashful_rails_begin"
TARGET=$HOME'/.bashrc'
SOURCE=$HOME'/bashful_rails/resources/bashrc_append'


if grep -s $TOKEN $TARGET; then
	echo "Installation found! Remove lines from ~/.bashrc and run again."
else
	cat $SOURCE >> $TARGET
	echo `source ~/.bashrc`
	echo "Installation complete!"
fi