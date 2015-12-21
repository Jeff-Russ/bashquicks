#!/bin/bash
# install.sh 

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

TOKEN="#jeffruss1"
TARGET=$HOME'/.bashrc'
SOURCE=$HOME'/bash_scripts/resources/bashrc_append'


if grep -s $TOKEN $TARGET; then
	echo "installation found. Remove lines from .bashrc and run again"
else
	cat $SOURCE >> $TARGET
fi