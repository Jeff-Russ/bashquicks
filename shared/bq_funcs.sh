#!/usr/bin/env bash
# bq_funcs.sh

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

# usage: var=$(nonempty `which brew`)
is_nonempty() { 
   if [[ -z "$1" ]]; then echo "0"; 
   else echo "1"; fi 
}
installedYN() { 
   if [[ -z `which "$1"` ]]; then echo "0"; 
   else echo "1"; fi 
}
nonemptyYN() { 
   if [[ -z "$1" ]]; then echo "N"; 
   else echo "Y"; fi 
}
installedYN() { 
   if [[ -z `which "$1"` ]]; then echo "N"; 
   else echo "Y"; fi 
}


find_abspaths() {
   WD=`pwd`; # insert in find to yield absolute paths
   echo $(find $WD -name "$1" ! -path "*/.[!.]*");
}

replacefirst() {
   orig=$1
   pattern=$2
   replacement=$3
   echo "${orig/$pattern/$replacement}"
}

# nospace() { echo "$(echo -e "${1}" | tr -d '[[:space:]]')" }
# numonly(){ in=`echo $1`; echo "${in//[!0-9]/}" } # only numbers

chronostamp() {
   in=`echo $1 | cut -c 1-21` # cut '20' preceeding year and seconds
   echo "${in//[!0-9]/}" # only numbers
}
chronostamp_readable(){
   in=`echo $1 | cut -c 3-12` # cut '20' preceeding year and seconds
   echo "${in}" | sed 's/\(.\{6\}\)/\1 /g' # add space
}
homepath_abbrev() {
   fullpath=$1
   home=`echo $HOME`
   home_abbr="~"
   echo `replacefirst "${fullpath}" "${home}" "${home_abbr}"`
}
s3acl_readable(){
   orig_share=$1
   sharing=`replacefirst "${orig_share}" "--acl" ""`
   sharing=`replacefirst "${sharing}" "public" "pub"`
   sharing=`replacefirst "${sharing}" "bucket-owner" "own"`
   sharing=`replacefirst "${sharing}" "authenticated" "auth"`
   sharing=`replacefirst "${sharing}" "full-control" "full"`
   sharing=`replacefirst "${sharing}" "log-delivery" "log"`
   sharing=`replacefirst "${sharing}" "aws-exec" "exec"`
   sharing=`replacefirst "${sharing}" "read-write" "rw"`
   sharing=`replacefirst "${sharing}" "read" "r"`
   echo `replacefirst "${sharing}" "write" "w"`
}

addpipe(){
   echo "| $1"
}