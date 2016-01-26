#!/usr/bin/env bash
######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######
# install.sh 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/shared/bq_funcs.sh"
source "$DIR/z_res/install_prompts.sh"
SOURCE="$DIR/z_res/bashrc_shim"
INS1_TOKEN="#MAGICWORD1DONTDELETE!"; INSERT1="BQ_PATH='$DIR'"
INS2_TOKEN="#MAGICWORD2DONTDELETE!"
timestamp=`date`; INSERT2="timestamp='${timestamp}'"
uname_str=`uname`

print_welcome

if [[ "$uname_str" == "Darwin" ]]; then 
   echo "Looks like you are on Mac OSX You may need to run ./macquick.sh"; 
   sed -i '' "s|.*${INS1_TOKEN}.*|${INSERT1} ${INS1_TOKEN}|" $SOURCE
   sed -i '' "s|.*${INS2_TOKEN}.*|${INSERT2} ${INS2_TOKEN}|" $SOURCE
 else
   sed -i "s|.*${INS1_TOKEN}.*|${INSERT1} ${INS1_TOKEN}|" $SOURCE
   sed -i "s|.*${INS2_TOKEN}.*|${INSERT2} ${INS2_TOKEN}|" $SOURCE
fi

search="-maxdepth 1 -mindepth 1 -type d"; no=" -not -path "
OPT_DIRS=($(find . $search $no'*.git*'$no'*z_*'$no'*bq'$no'*shared'))

i=0; for x in "${OPT_DIRS[@]}"; do SELECTIONS[$i]="install"; i=$((i+1)); done

print_menu_top
i=0; for opt_dir in "${OPT_DIRS[@]}"; do 
   printf "\t\t"
   printf "|  $i  "; sleep 0.1
   printf "|  ${SELECTIONS[$i]}  "; sleep 0.1
   printf "|  ${opt_dir##*/} "; sleep 0.1
   printf "quicks"; sleep 0.2; echo
   i=$((i+1))
done
print_menu_prompt; read selections

while true; do
   if [[ -z $selections ]]; then break
   else 
      arr=($selections); n=0
      for sel in "${arr[@]}"; do 
         if [[ "${SELECTIONS[$sel]}" == "install" ]]; then SELECTIONS[$sel]="ignore " 
         else SELECTIONS[$sel]="install"; fi
         n=$((n+1)); 
      done
      print_menu_top_fast
      i=0; for opt_dir in "${OPT_DIRS[@]}"; do 
         printf "\t\t|  $i  |  ${SELECTIONS[$i]}  |  ${opt_dir##*/} quicks\n"
         i=$((i+1))
      done
      print_menu_prompt_fast; read selections
   fi
done; echo

i=0; for path in "${OPT_DIRS[@]}"; do
   dir=$(dirname "$path")
   file=$(basename "$path")
   
   if [[ "$file" == '.'* ]]; then
      if [[ "${SELECTIONS[$i]}" == "install" ]]; then 
         printf "\tunhiding $file directory\n"
         mv "$dir/$file" "$dir/${file#.}"
      fi
   else 
      if [[ "${SELECTIONS[$i]}" == "ignore " ]]; then
         printf "\thiding $file directory\n"
         mv "$dir/$file" "$dir/.$file"
      fi
   fi
   i=$((i+1)); 
done

begin='#bashquicks_begin'; end='#bashquicks_end'
test=`grep -s "$begin" "$HOME/.bashrc"`

if [[ $test == $begin ]]; then 
   print_prev_install_notice
   if [[ "$uname_str" == "Darwin" ]]; then 
      sed -i '' '/#bashquicks_begin/','/#bashquicks_end/d' "$HOME/.bashrc";
    else
      sed -i '/#bashquicks_begin/','/#bashquicks_end/d' "$HOME/.bashrc";
   fi
   print_done
fi

# this line does all the heavy lifting:
print_inserting; cat $SOURCE >> "$HOME/.bashrc"; print_done; print_reload_bash

sleep 1; print_install_complete; sleep 0.5; exec bash
