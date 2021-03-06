#####  bash_aliases Ruby on Rails  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

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
alias rac='be rake assets:clobber'                  # rails assets clobber;
alias rap='be rake assets:precompile RAILS_ENV=production;
be rake assets:precompile RAILS_ENV=development' # rails assets precomile;
alias rd='git push origin master; git push heroku master; heroku run rake db:migrate' # rails deploy;

#alias rd='rpa; gac "precompile asset for production. About to deploy"; gpo master;
#    git push heroku master; heroku run rake db:migrate';  # rails deploy;


echo "  Added rails aliases from bashquicks" >> $BQ_LOG