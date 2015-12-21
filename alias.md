# n is for navigate;  
alias nr='cd /; ls -a'                           # nr  navigate: root;  
alias nh='cd ~/; ls -a'                          # nh  navigate: home;  
alias nw='cd ~/workspace; ls -a'                 # nw  navigate: workspace;  
alias nn='cd ~/workspace/_my_notes; ls -a'       # nn  navigate: notes;  
alias njr='cd ~/workspace/jeffruss; ls -a'       # njr navigate: jeff russ (www src);  
alias ndm='cd ~/workspace/devmatch; ls -a'       # ndm navigate: dev match;  
alias nss='cd ~/workspace/sample_saas; ls -a'    # nss navigate: sample saas; 
alias nsccs='cd ~/workspace/simplecodecasts_saas' # nss navigate: SimpleCodeCastsSaas; 
# re is for rails edit;
alias rec='c9 app/controllers'
alias rev='c9 app/views/'
alias reg='c9 Gemfile'
alias rer='c9 config/routes.rb'
alias rem='c9 db/migrate/'
alias res='c9 db/schema.rb'
# g is for git;  
alias gmv='git mv'                                  # gmv git mv
alias ga='git add . -A; git status'                 # ga  git add;  
alias gac='git add . -A; git status; git commit -m' # gac git add commit;
alias gcm='git commit --allow-empty -m'             # gcm git commit message
alias gc='git checkout'                             # gc  git checkout;  
alias gs='git status'                               # gs  git status;  
alias gu='git checkout --force; git status'         # gu  git undo
alias gm='git merge'                                # gm  git merge;  
alias gb='git branch'                               # gb  git branch;
alias gpo='git push origin'                         # gpo git push origin;  
# r is for ruby or rails;  
alias rbu='bundle update'                           # rbu rails: bundle update;  
alias rbi='bundle install'                          # rbi rails: bundle install;  
alias rui='bundle update; bundle install'           # rui rails: update, install;
alias be='bundle exec' 									 	 # be bundle exec
alias rg='bundle exec rails generate'               # rg  rails generate; 
alias rgc='bundle exec rails generate controller'   # rg  rails generate controller; 
alias rgm='bundle exec rails generate model'    # rgm rails generate MODEL????;
alias rd='bundle exec rails destroy'                # rd  rails db destroy;
alias rdr='bundle exec rake db:reset'               # rr  rake db reset;
alias rdm='bundle exec rake db:migrate'             # rr rake migrate; 
alias rc='bundle exec rails console'                # rc  rails console;  
alias rhc='heroku run rails console'                # rhc rails heroku console;    
alias rs='bundle exec rails server  -p $PORT -b $IP'             # rs  rails server;  
alias rd='git push heroku master; heroku run rake db:migrate'    # rd  rails: deploy;

