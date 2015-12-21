# bash_scripts

## About

My awesome bash scripts! Keep in mind that I work mainly in/with the following:

1. Cloud9 IDE
2. Cloud9's bash terminal
3. Ruby on Rails
4. Git, Github, BitBucket

so my scripts will be geared toward them.

## Installation 

To install, place the file in your home directory and rename it "bash_scripts" 
In Cloud9 you can't drop directly to the home directory so you would have to 
put in in ~/workspace and then run:

    $ mv ~/workspace/bash_scripts ~/bash_scripts
    
now in terminal:

    $ cd ~/bash_scripts
    $ ./install.sh
    
and you should be ready to go!

## Bash Aliases

If you are in Cloud9, run this to Print Bash Aliases:

    $ pba
    
Or run this in Cloud9 to edit them:

    $ c9ba

If you make changes you can run this (defined in bash_aliases) command:

    $ brc
    
## Bash Scripts

The scripts are well commented so If you'd like to learn what they do I suggest 
looking at them directly. First get a list of them:

    $ nbs
    
You can Print Bash Scripts, all of them, using cat with this:

    $ pbs
    
# TODO

1. script to navigate up to git project's root ~~DONE~~
2. script to replace Gemfile and install
3. script to delete Gemfile.lock and start over (from any dir without leaving)