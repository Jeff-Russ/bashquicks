# Bashful Rails

## About

This is a collection of helpful bash aliases, scripts and fuctions.
Keep in mind that I work mainly in/with the following:

1. Ruby on Rails
2. Git, Github, BitBucket
3. Heroku
4. Cloud9 IDE
5. Cloud9's bash terminal

and these scripts are geared toward that useage. 

## Installation 

To install, place the file in your home directory. In Cloud9 you can't drop 
directly to the home directory so you would have to put it in ~/workspace and 
then run:

    $ mv ~/workspace/bashful_rails ~/bashful_rails; c9 ~/bashful_rails/README.md
    
now in terminal:

    $ cd ~/bashful_rails; ./install.sh

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
4. make commands that must be at git root work anywhere inside projectc9 