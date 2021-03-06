#####  bash_aliases cloud9 c9.io  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

# bq is for bashquicks NEED TO BE REDONE:
# alias bqea='c9 ~/bashquicks/resources/bash_aliases' # bq edit aliases;
# alias bqns='cd ~/bashquicks/scripts; bqns_src' # create a new empty script and open in c9 

alias c9='c9 open'

# c9 is for the Cloud9 Ace editor;
alias gc9='git config --global core.editor "c9 --wait"' # git: c9 for commit messages
alias c9brc='c9 ~/.bashrc'                              # edit bash resources;

# g f
alias ger='ngr; c9 README.md'       # git edit readme

# re is for rails edit (this only makes sense if you use c9.io);
alias rec='c9 app/controllers';
alias rev='c9 app/views/';
alias reg='c9 Gemfile';
alias rer='c9 config/routes.rb';
alias rem='c9 db/migrate/';
alias res='c9 db/schema.rb';

# Here are some more various mixed function aliases
alias rails.md='echo "https://private-jeff-russ.c9users.io/?aws=jeffruss/_rails"; rslp'

echo "  Added c9 aliases from bashquicks" >> $BQ_LOG