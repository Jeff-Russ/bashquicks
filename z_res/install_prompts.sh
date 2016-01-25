######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

print_welcome() {
   printf "\n"; sleep 0.1
   printf "  _____________________________________________________________________"; sleep 0.05
   printf "\n /        bashquicks           command-line extensions!                \\"; sleep 0.05
   printf "\n )       by Jeff Russ     https://github.com/Jeff-Russ/bashquicks      ("; sleep 0.05
   printf "\n \_____________________________________________________________________/"; sleep 0.7
   printf "\n"
}
print_menu_top() {
   # printf "\t\t     ~~ add/remove packages ~~\n"
   printf "\n\t\t_____~~_add/remove_packages_~~________"; sleep 0.1
   printf "\n"
}
print_menu_prompt() {
   printf "\t\t\\\_____________________________________"; sleep 0.3
   printf "\n\t\t\t"; sleep 1
   printf "\n\tEnter package number(s) you want to toggle adding/ignore\n\tor... "; sleep 0.6
   printf "hit enter to continue or ctrl-c to exit:  "
}
print_menu_top_fast() {
   # printf "\t\t     ~~ add/remove packages ~~\n"
   printf "\n\t\t_____~~_add/remove_packages_~~________\n"
}
print_menu_prompt_fast() {
   printf "\t\t\\\_____________________________________\n\n\t"; sleep 0.3
   printf "\n\tEnter package number(s) you want to toggle adding/ignore\n\tor... "
   printf "hit enter to continue or ctrl-c to exit:  "
}
print_prev_install_notice() {
   printf "\n\tPrevious installation of bashquicks found. Removing lines from ~/.bashrc.... "; sleep 0.1
}
print_inserting() {
   printf "\n\tInserting contents of bashquicks/z_res/bashrc_shim into ~/.bashrc... "; sleep 0.1
}
print_done() {
   printf "done."
}
print_reload_bash() {
   printf "\n\tReloading bash with \`exec bash\`... "
}
print_install_complete() {
   printf "done.\n\t  ________________________________________________\n";
   printf "\t /    bashquicks    installation  complete        \\ \n";
   printf "\t \________________________________________________/\n";
   printf "\t      To view the installation log run \`bqlog\`\n"
}
