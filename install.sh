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
INSERT="BQ_PATH='$DIR'"
TARGET="$HOME/.bashrc"
SOURCE="$DIR/z_res/bashrc_append"

printf "  _______________________________________________________________________________\n"
printf " /    bashquicks    command-line extensions!    by Jeff Russ   ctrl-c to exit    \\ \n"
printf " \_______________________________________________________________________________/\n"
printf "\n" 

OPTIONAL_DIRS=($(find $DIR -maxdepth 1 -mindepth 1 -type d -not -path '*.git*' -not -path '*z_*' -not -path '*bq' -not -path '*shared'))
i=0
for x in "${OPTIONAL_DIRS[@]}"; do 	SELECTIONS[$i]="adding"; i=$((i+1)); done

while true; do
   printf "\n"; i=0
   for optional_dir in "${OPTIONAL_DIRS[@]}"; do 
      echo " $i ${SELECTIONS[$i]} ${optional_dir##*/} commands"; i=$((i+1))
   done
   
   printf "\nenter option number(s) you want to toggle adding/ignore or hit enter to continue\n"
   read selections
   if [[ -z $selections ]]; then break
   else 
      arr=($selections); n=0
      for sel in "${arr[@]}"; do 
         if [[ "${SELECTIONS[$sel]}" == "adding" ]]; then 
            SELECTIONS[$sel]="ignore" 
         else SELECTIONS[$sel]="adding"; fi
         n=$((n+1)); 
      done
   fi
done

i=0
for path in "${OPTIONAL_DIRS[@]}"; do
   dir=$(dirname "$path")
   file=$(basename "$path")
   
   if [[ "$file" == '.'* ]]; then
      if [[ "${SELECTIONS[$i]}" == "adding" ]]; then 
         echo "  unhiding $file directory"
      fi
   else 
      if [[ "${SELECTIONS[$i]}" == "ignore" ]]; then
         echo "  hiding $file directory"
         # mv "$dir/$file" "$dir/${file#.}"
      fi
   fi
   
   

   i=$((i+1)); 
done


if grep -s $TOKEN $TARGET; then
   echo "Previous installation of bashquicks found. Removing lines from ~/.bashrc...."
   sed -i '/#bashquicks_begin/','/#bashquicks_end/d' $TARGET;
fi

# echo sed "s|#insert|${DIR}|" $SOURCE
sed "s|#insert|${INSERT}|" $SOURCE >> $TARGET

sleep 3
exec bash
