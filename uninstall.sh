#!/bin/bash
# uninstall.sh  
# removes everything

echo

ask() {
   # http://djm.me/ask
   while true; do
      if [ "${2:-}" = "Y" ]; then
         prompt="Y/n"
         default=Y
      elif [ "${2:-}" = "N" ]; then
         prompt="y/N"
         default=N
      else
         prompt="y/n"
         default=
      fi
      # Ask the question - use /dev/tty in case stdin is redirected from somewhere else
      read -p "$1 [$prompt] " REPLY </dev/tty
      # Default?
      if [ -z "$REPLY" ]; then
         REPLY=$default
      fi
      # Check if the reply is valid
      case "$REPLY" in
         Y*|y*) return 0 ;;
         N*|n*) return 1 ;;
      esac
   done
}

TOKEN="#bashful_rails_begin"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET="$HOME/.bashrc"
uninstall="remove all traces if bashful rails from system!"

if ask "CAUTION! This will $uninstall. ARE YOU SURE?"; then

	if grep -s $TOKEN $TARGET; then
		echo "Previous installation of bashful_rails found. Removing lines from ~/.bashrc...."
		sed -i '/#bashful_rails_begin/','/#bashful_rails_end/d' $TARGET;
	 else
		echo "Previous installation of bashful_rails not found."
	fi
	
	echo "removing all files from system"
	rm -rf $DIR
	echo "done."
	
fi