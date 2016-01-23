#!/bin/bash
# install.sh 

# TODO touch ~/.bash_prompt; ~/.bash_prompt < cat ~/bashful_rails/resources/bashrc_prompt 
# or something like that

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

TOKEN="#bashful_rails_begin"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
INSERT="BR_PATH='$DIR'"
TARGET="$HOME/.bashrc"
SOURCE="$DIR/resources/bashrc_append"

if grep -s $TOKEN $TARGET; then
	echo "Previous installation of bashful_rails found. Removing lines from ~/.bashrc...."
	sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
fi

echo sed "s|#insert|${DIR}|" $SOURCE
sed "s|#insert|${INSERT}|" $SOURCE >> $TARGET
echo `source ~/.bashrc`
echo "done. you may need to run souce ~/.bashrc"

source ~/.bashrc # needed?