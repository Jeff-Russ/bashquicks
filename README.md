# bashquicks

## About

This is a collection of helpful bash aliases, scripts and functions. 
It includes options for helper commands for the following: 

1. Ruby on Rails
2. Git, Github, BitBucket
3. Heroku
4. Cloud9 IDE
5. Amazon AWS S3 - requires [Amazon AWS CLI](https://aws.amazon.com/cli/)  

## New in  this commit

*Installer with custom installation options*  
  
![alt text](https://s3.amazonaws.com/bashquicks/bashquicks.png "bashquicks installer")  

## Installation  

To install, place the file anywhere in your home directory. cd to the directory and:  

    $ ./install.sh
    
## Documentation of commands

### git

**g is for git**  
gmv     git mv                              gmv git mv  
gco     gco_src                             gco  git checkout  
gc      git commit                          gc  git commit  
gs      git status                          gs  git status  
gu      git checkout --force; git status    gu  git undo  
gm      git merge                           gm  git merge  
gb      git branch                          gb  git branch  
ga      git add . -A; git status            ga  git add  
gac     ga; git commit                      same as gacm  
gcm     git commit -m                       gcm git commit message  
gacm    ga; gcm                             gacm git add commit message  
gac     ga; git commit                      gace git add commit (editor)  
gp      git push                            gp git push  
gphm    git push heroku master              gph git push heroku master  
gpo     git push origin                     gpo git push origin  
gpob    git push origin $b                  gpo git push origin  
gmt     git merge --no-commit --no-ff       git merge test  
gmu     git merge --abort                   undo git merge test  
gb\_var gb\_var\_src                        saves branch name to $b   
ngr     . ngr_src; ls -a                    ngr navigate: git root  

gr  execute at git root  



### Ruby on Rails

**r is for ruby or rails**  
rbu      bundle update                              rbu rails: bundle update  
rbi      bundle install                             rbi rails: bundle install  
rui      bundle update; bundle install              rui rails: update, install  
be       bundle exec                                be bundle exec  
rg       bundle exec rails generate                 rg  rails generate   
rgc      bundle exec rails generate controller      rg  rails generate controller  
rgm      bundle exec rails generate model           rgm rails generate MODEL????  
rd       bundle exec rails destroy                  rd  rails db destroy  
rdr      bundle exec rake db:reset                  rr  rake db reset  
rdm      bundle exec rake db:migrate                rr rake migrate   
rc       bundle exec rails console                  rc  rails console  
rhc      heroku run rails console                   rhc rails heroku console    
rs       bundle exec rails server -p $PORT -b $IP   rs  rails server  
rac      be rake assets:clean                       rails assets clean  
rap      be rake assets:precompile RAILS_ENV=production  
be       rake assets:precompile RAILS_ENV=development    rails assets precomile  



### bash

**bash_aliases for bash  ----  part of bashquicks**  
** b is for bash**  
brc      source ~/.bashrc        bash rc: load ~/.bashrc  
bex      chmod u+x               (make it) bash executable  
**n is for navigate**   
nr      cd /; ls -a              nr  navigate: root  
nh      cd ~/; ls -a             nh  navigate: home  
nw      cd ~/workspace; ls -a    nw  navigate: workspace  
ngr      . ngr_src; ls -a        ngr navigate: git root  

lsa   list contents of each directory one by one  
trash



### bashquicks itself
**bq is for bashquicks**  
bq_install    cd ~/bashquicks; ./install.sh; cd -        install bashquicks  
bq_uninstall  cd ~/bashquicks; ./uninstall.sh; cd -      uninstall bashful rail  
bqa           cat ~/bashquicks/resources/bash_aliases    look at bash aliases  
cd.bq         cd ~/bashquicks; ls -a                     nbq navigate: bashquicks  
nbqs          cd ~/bashquicks/scripts; ls -a             ns navigate: bashquicks/scripts/  



### cloud9 IDE
**c9 is for the Cloud9 Ace editor**  
gc9      git config --global core.editor c9 --wait    use c9 for commit messages  
c9brc    c9 ~/.bashrc                                 edit bash resources  
ger      ngr; c9 README.md                            git edit readme  
**re is for rails edit with c9.io**  
rec      c9 app/controllers  
rev      c9 app/views/  
reg      c9 Gemfile   
rer      c9 config/routes.rb   
rem      c9 db/migrate/   
res      c9 db/schema.rb   



### AmazonS3 ( UNFINISED )
Make bucket on HD   -> mbhd [name]    or on S3 -> mbs3 [name] or -> mbboth [name]
Backup on-HD bucket -> bkhd [ID#] on-S3 bucket -> bks3 [ID#]  or -> bkboth [ID#] 
Remove on-HD bucket -> rmhd [ID#] on-S3 bucket -> rms3 [ID#]  or -> rmboth [ID#] 
Update HD from S3   -> uphd [ID#] the other way-> ups3 [ID#]  or -> upboth [ID#]


