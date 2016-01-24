#####  bash_aliases git  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

echo "  adding git aliases from bashquicks"

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
allremotes_src() {
   for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; 
   do
      git branch --track ${branch#remotes/origin/} $branch
   done
}

# g is for git;  
alias gmv='git mv'                          # gmv git mv;
alias gco='gco_src'                         # gco  git checkout; 
alias gc='git commit'                       # gc  git commit; 
alias gs='git status'                       # gs  git status;  
alias gu='git checkout --force; git status' # gu  git undo
alias gm='git merge'                        # gm  git merge;  
alias gb='git branch'                       # gb  git branch;
alias ga='git add . -A; git status'         # ga  git add;
alias gac='ga; git commit'                  # same as gacm;
alias gcm='git commit -m'                   # gcm git commit message;
alias gacm='ga; gcm'                        # gacm git add commit message;
alias gac='ga; git commit'                  # gace git add commit (editor);
alias gp='git push'                         # gp git push;
alias gphm='git push heroku master'         # gph git push heroku master;
alias gpo='git push origin'                 # gpo git push origin;
alias gpob='git push origin $b'             # gpo git push origin;
alias gmt="git merge --no-commit --no-ff"   # git merge test
alias gmu="git merge --abort"               # undo git merge test
alias gb_var="gb_var_src"                   # saves branch name to $b 
alias ngr='. ngr_src; ls -a'                # ngr navigate: git root;
