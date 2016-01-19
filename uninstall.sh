#!/bin/bash
# uninstall.sh  
# removes everything

TOKEN="#bashful_rails_begin"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET="$HOME/.bashrc"


if grep -s $TOKEN $TARGET; then
	echo "Previous installation of bashful_rails found. Removing lines from ~/.bashrc...."
	sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
 else
	echo "Previous installation of bashful_rails not found."
fi

echo "removing all files from system"
rm -rf $DIR