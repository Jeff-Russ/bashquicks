#!/bin/bash
# unload.sh 

TOKEN="#bashful_rails_begin"
TARGET=$HOME'/.bashrc'

if grep -s $TOKEN $TARGET; then
	echo "Installation of bashful_rails found. Removing lines from ~/.bashrc...."
	sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
	echo `source ~/.bashrc`
	echo "done."
	source ~/.bashrc # needed?
else
	echo "Installation of bashful_rails not found!"
fi
