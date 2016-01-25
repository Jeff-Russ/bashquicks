#####  bash_aliases for bash  ----  part of bashquicks

######--------------------------------------------######
######  By Jeff Russ https://github.com/Jeff-Russ ######
######--------------------------------------------######

# b is for bash;
alias brc='source ~/.bashrc'     # bash rc: load ~/.bashrc;
alias bex='chmod u+x'            # (make it) bash executable;

# n is for navigate;  
alias nr='cd /; ls -a'           # nr  navigate: root;
alias nh='cd ~/; ls -a'          # nh  navigate: home;
alias nw='cd ~/workspace; ls -a' # nw  navigate: workspace;
alias ngr='. ngr_src; ls -a'     # ngr navigate: git root;


alias ls='ls -G'
alias grep='grep -G'
alias fgrep='fgrep -G'
alias egrep='egrep -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias less="less -R "

echo "  Added bash aliases from bashquicks" >> $BQ_LOG