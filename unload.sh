#!/bin/bash
######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######
# unload.sh 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/shared/bq_funcs.sh"

TOKEN="#bashquicks_begin"
TARGET=$HOME'/.bashrc'
unload="remove all BQ scripts & aliases from ~/.bashrc"

printf "\n  CAUTION! This will $unload.\n"
if ask "  ARE YOU SURE?  "; then

	if grep -s $TOKEN $TARGET; then
		echo "Installation of bashquicks found. Removing lines from ~/.bashrc...."
		sed -i '' '/#bashquicks_begin/','/#bashquicks_end/d' $TARGET;
		echo `source ~/.bashrc`
		echo "done."
		source ~/.bashrc # needed?
	else
		echo "Installation of bashquicks not found!"
	fi

fi