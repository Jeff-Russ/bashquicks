# br is for bashful rails
alias br_install='cd ~/bashful_rails; ./install.sh; cd -' # install bashful rails;
alias br_uninstall='cd ~/bashful_rails; ./uninstall.sh; cd -' # uninstall bashful rail;s
alias bra='cat ~/bashful_rails/resources/bash_aliases' # look at bash aliases;
alias brea='c9 ~/bashful_rails/resources/bash_aliases' # br edit aliases;
alias cd.br='cd ~/bashful_rails; ls -a'          # nbr navigate: bashful_rails; 
alias nbrs='cd ~/bashful_rails/scripts; ls -a' # ns navigate: bashful_rails/scripts/; 
alias brns='cd ~/bashful_rails/scripts; brns_src' # create a new empty script and open in c9 

# b is for bash;
alias brc='source ~/.bashrc'                          # bash rc: load ~/.bashrc;
alias bex='chmod u+x'                                 # (make it) bash executable;

# c9 is for the Cloud9 Ace editor;
alias gc9='git config --global core.editor "c9 --wait"' # git: c9 for commit messages
alias c9brc='c9 ~/.bashrc'                              # edit bash resources;

gb_var_src(){
   b=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
   echo "Current branch name \"$b\" saved to \"\$b\""
}

gco_src() {
   if [[ "$1" == "-b" ]]; then 
      git checkout -b "$2"
    else
      git checkout $1;
   fi
   gb_var_src
}


allremotes_src(){
   for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
      git branch --track ${branch#remotes/origin/} $branch
   done
}

alias test="test_src"
# g is for git;  
alias gmv='git mv'                                  # gmv git mv;
alias gco='gco_src'                                 # gco  git checkout; 
alias gc='git commit'                               # gc  git commit; 
alias gs='git status'                               # gs  git status;  
alias gu='git checkout --force; git status'         # gu  git undo
alias gm='git merge'                                # gm  git merge;  
alias gb='git branch'                               # gb  git branch;
alias ga='git add . -A; git status'                 # ga  git add;
alias gac='ga; git commit'                          # same as gacm;
alias gcm='git commit -m'                           # gcm git commit message;
alias gacm='ga; gcm'                                # gacm git add commit message;
alias gac='ga; git commit'                          # gace git add commit (editor);
alias gp='git push'                                 # gp git push;
alias gphm='git push heroku master'                 # gph git push heroku master;
alias gpo='git push origin'                         # gpo git push origin;
alias gpob='git push origin $b'                     # gpo git push origin;
alias gmt="git merge --no-commit --no-ff"           # git merge test
alias gmu="git merge --abort"                       # undo git merge test
alias gb_var="gb_var_src"                           # saves branch name to $b 



# r is for ruby or rails;  
alias rbu='bundle update'                           # rbu rails: bundle update;  
alias rbi='bundle install'                          # rbi rails: bundle install;  
alias rui='bundle update; bundle install'           # rui rails: update, install;
alias be='bundle exec'                              # be bundle exec
alias rg='bundle exec rails generate'               # rg  rails generate; 
alias rgc='bundle exec rails generate controller'   # rg  rails generate controller; 
alias rgm='bundle exec rails generate model'        # rgm rails generate MODEL????;
alias rd='bundle exec rails destroy'                # rd  rails db destroy;
alias rdr='bundle exec rake db:reset'               # rr  rake db reset;
alias rdm='bundle exec rake db:migrate'             # rr rake migrate; 
alias rc='bundle exec rails console'                # rc  rails console;  
alias rhc='heroku run rails console'                # rhc rails heroku console;    
alias rs='bundle exec rails server -p $PORT -b $IP' # rs  rails server; 
alias rac='be rake assets:clean'                    # rails assets clean;
alias rap='be rake assets:precompile RAILS_ENV=production;
be rake assets:precompile RAILS_ENV=development' # rails assets precomile;
alias rd='git push origin master; git push heroku master; heroku run rake db:migrate' # rails deploy;


#alias rd='rpa; gac "precompile asset for production. About to deploy"; gpo master;
#    git push heroku master; heroku run rake db:migrate';  # rails deploy;
         
# n is for navigate;  
alias nr='cd /; ls -a'                           # nr  navigate: root;  
alias nh='cd ~/; ls -a'                          # nh  navigate: home;  
alias nw='cd ~/workspace; ls -a'                 # nw  navigate: workspace;  
alias ngr='. ngr_src; ls -a'                     # ngr navigate: git root;

# re is for rails edit (this only makes sense if you use c9.io);
alias rec='c9 app/controllers';
alias rev='c9 app/views/';
alias reg='c9 Gemfile';
alias rer='c9 config/routes.rb';
alias rem='c9 db/migrate/';
alias res='c9 db/schema.rb';

# Here are some more various mixed function aliases
alias rails.md='echo "https://private-jeff-russ.c9users.io/?aws=jeffruss/_rails"; rslp'


alias run.md='cd ~/workspace/LivePage-md; bundle exec rails server -p $PORT -b $IP;';

alias ger='ngr; c9 README.md'       # git edit readme

# Amazon AWS S3 
alias s3b="aws s3api list-buckets --query 'Buckets[].Name'"
alias s3='aws s3';
