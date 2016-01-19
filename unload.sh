#!/bin/bash
# unload.sh 

TOKEN="#bashful_rails_begin"
TARGET=$HOME'/.bashrc'
unload="remove all BR scripts & aliases from ~/.bashrc"

if ask "CAUTION! This will $unload. ARE YOU SURE?"; then

	if grep -s $TOKEN $TARGET; then
		echo "Installation of bashful_rails found. Removing lines from ~/.bashrc...."
		sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
		echo `source ~/.bashrc`
		echo "done."
		source ~/.bashrc # needed?
	else
		echo "Installation of bashful_rails not found!"
	fi

fi