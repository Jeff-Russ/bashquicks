#!/bin/bash
######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######
# uninstall.sh  
# removes everything

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/shared/bq_funcs.sh"

TOKEN="#bashquicks_begin"
TARGET="$HOME/.bashrc"
uninstall="remove all traces if bashful rails from system!"

echo
if ask "CAUTION! This will $uninstall. ARE YOU SURE?"; then

	if grep -s $TOKEN $TARGET; then
		echo "Previous installation of bashful_rails found. Removing lines from ~/.bashrc...."
		sed -i '/#bashquicks_begin/','/#bashquicks_end/d' $TARGET;
	 else
		echo "Previous installation of bashful_rails not found."
	fi
	
	echo "removing all files from system"
	rm -rf $DIR
	echo "done."
	
fi