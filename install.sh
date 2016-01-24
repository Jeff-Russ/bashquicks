#!/bin/bash
######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######
# install.sh 

# TODO touch ~/.bash_prompt; ~/.bash_prompt < cat ~/bashquicks/resources/bashrc_prompt 
# or something like that

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/shared/bq_funcs.sh"

TOKEN="#bashquicks_begin"
INSERT="BR_PATH='$DIR'"
TARGET="$HOME/.bashrc"
SOURCE="$DIR/bq/bashrc_append"

if grep -s $TOKEN $TARGET; then
	echo "Previous installation of bashquicks found. Removing lines from ~/.bashrc...."
	sed -i '/#bashquicks_begin/','/#bashquicks_end/d' $TARGET;
fi

echo sed "s|#insert|${DIR}|" $SOURCE
sed "s|#insert|${INSERT}|" $SOURCE >> $TARGET
echo `source ~/.bashrc`
echo "done. you may need to run souce ~/.bashrc"

source ~/.bashrc # needed?