#####  bash_aliases for bashquicks itself  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

# bq is for bashquicks
alias bq_install='cd ~/bashquicks; ./install.sh; cd -' # install bashquicks;
alias bq_uninstall='cd ~/bashquicks; ./uninstall.sh; cd -' # uninstall bashful rail;s
alias bqa='cat ~/bashquicks/resources/bash_aliases' # look at bash aliases;
alias cd.bq='cd ~/bashquicks; ls -a'          # nbq navigate: bashquicks; 
alias nbqs='cd ~/bashquicks/scripts; ls -a' # ns navigate: bashquicks/scripts/; 
alias bqlog='cat $BQ_LOG'

echo "  Added bq aliases from bashquicks"  >> $BQ_LOG