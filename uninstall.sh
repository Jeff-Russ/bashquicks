#!/bin/bash
# uninstall.sh 


TOKEN="#bashful_rails_begin"
TARGET=$HOME'/.bashrc'
SOURCE=$HOME'/bashful_rails/resources/bashrc_append'


if grep -s $TOKEN $TARGET; then
	echo "Installation of bashful_rails found. Removing lines from ~/.bashrc...."
	sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
	source ~/.bashrc
else
	echo "Installation of bashful_rails not found!"
fi