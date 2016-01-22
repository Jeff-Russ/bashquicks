#!/bin/bash
# functions.br.sh

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

find_abspaths() {
   WD=`pwd`; # insert in find to yield absolute paths
   echo $(find $WD -name "$1" ! -path "*/.[!.]*");
}

replace() {
   orig=$1
   pattern=$2
   replacement=$3
   echo "${orig/$pattern/$replacement}"
}