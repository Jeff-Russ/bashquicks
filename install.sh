#!/bin/bash
# install.sh 

# adds all scripts and aliases to environment by appending the .bashrc file in ~/

TOKEN="# added automatically by bash_scripts install.sh"
TARGET='~/.bashrc'
SOURCE='~/bash_scripts/resources/bashrc_append'


if grep -q $TOKEN $TARGET; then
	echo "installation found. Remove lines from .bashrc and run again"
else
	cat $SOURCE >> $TARGET
fi