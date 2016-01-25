#!/usr/bin/env bash
######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/shared/bq_funcs.sh"
source "$DIR/z_res/install_prompts.sh"

print_welcome

uname_str=`uname`
if [[ "$uname_str" == "Darwin" ]]; then echo "Looks like you are on Mac OSX"
   w_ruby="$(which ruby)"
   w_brew="$(which brew)"
   if [[ -z $w_ruby ]]; then 
      echo "You dont have Ruby installed! Install Ruby"; exit 0;
    else echo "Ruby installation found"
   fi
   if [[ -z $w_brew ]]; then
      printf "You need Homebrew to install packages on OSX. Doing that now... "
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      printf "done.\n"
   fi
   printf "Seeing about Homebrew updates... "; brew update; printf "done."
   w_bash=`echo $BASH_VERSINFO`
   if (( $w_bash != 4 )); then
      printf "You bash version is $w_bash and we need 4. "
      printf "Installing latest Bash with brew... "; brew install bash; printf "done."
      echo "Add the new shell to the list of allowed shells will need your password..."
      sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
      echo "Changing the shell to /usr/local/bin/bash"; chsh -s /usr/local/bin/bash 
      echo "Bash updated. Restart this script in a new (bash version 4) window or tab"
      echo "See you soon, bye."
      exit 0
    else echo "bash version 4 found."
   fi
   declare -A INSTALLS
   INSTALLS[coreutils]=$(installedYN coreutils)
   INSTALLS[binutils]=$(installedYN binutils)
   INSTALLS[diffutils]=$(installedYN diffutils)
   INSTALLS[ed]=$(installedYN ed)
   INSTALLS[findutils]=$(installedYN findutils)
   INSTALLS[gawk]=$(installedYN gawk)
   INSTALLS[gnu-indent]=$(installedYN gnu-indent)
   INSTALLS[gnu-sed]=$(installedYN gnu-sed)
   INSTALLS[gnu-tar]=$(installedYN gnu-tar)
   INSTALLS[gnu-which]=$(installedYN gnu-which)
   INSTALLS[gnutls]=$(installedYN gnutls)
   INSTALLS[grep]=$(installedYN grep)
   INSTALLS[gzip]=$(installedYN gzip)
   INSTALLS[screen]=$(installedYN screen)
   INSTALLS[watch]=$(installedYN watch)
   INSTALLS[wdiff]=$(installedYN wdiff)
   INSTALLS[wget]=$(installedYN wget)
   i=0; for key in "${!INSTALLS[@]}"; do
      printf -v j "%02d" $i
      k=$((i%2)); if (( k == 0)); then printf "\n"; fi
      printf "\t\t| $j | ${INSTALLS[$key]} | $key "; i=$((i+1))
   done
fi
echo



# # brew uninstall coreutils  # contain most of what you want
# # brew uninstall binutils 
# # brew uninstall diffutils 
# # brew uninstall ed --default-names 
# # brew uninstall findutils --default-names 
# # brew uninstall gawk 
# # brew uninstall gnu-indent --default-names 
# # brew uninstall gnu-sed --default-names 
# # brew uninstall gnu-tar --default-names 
# # brew uninstall gnu-which --default-names 
# # brew uninstall gnutls --default-names 
# # brew uninstall grep --default-names 
# # brew uninstall gzip 
# # brew uninstall screen 
# # brew uninstall watch 
# # brew uninstall wdiff --with-gettext 
# # brew uninstall wget