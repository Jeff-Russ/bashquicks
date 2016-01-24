# bashquicks

## About

This is a collection of helpful bash aliases, scripts and fuctions.  
Keep in mind that I work mainly in/with the following:  

1. Ruby on Rails
2. Git, Github, BitBucket
3. Heroku
4. Cloud9 IDE
5. Cloud9's bash terminal
6. **NEW!!** Amazon AWS S3

These scripts are geared toward that useage.  

## New in  this commit

*Useful commands for Amazon AWS S3*

These require installation of [Amazon AWS CLI](https://aws.amazon.com/cli/)  

1. `s3swd` **- Sync Working Directory**  
    Sync files to Amazon AWS S3 bucket  
    Current directory name must match bucket name!  
        
        $ s3swd    # sync without specifying permissions
        $ s3swd r  # sync, public can read
        $ s3swd w  # sync, public can read and write
        $ s3swd p  # sync, private: no public access
    
2. `s3sad` **- Sync All Directories**
    Same as s3swd only for all sub-directories, one by one  
    Sub-directory names must match bucket names!  
        
        $ s3sad    # sync all without specifying permissions
        $ s3sad r  # sync all, public can read
        $ s3sad w  # sync all, public can read and write
        $ s3sad p  # sync all, private: no public access
    
3. `s3pull` **- pull bucket content to working directory**  
    Requires no arguments.  
    Current directory name must match bucket name!  
    
        $ s3pull
        
4. `s3b` **- list all bucket names**  
    This is just a simple alias of `aws s3api list-buckets --query 'Buckets[].Name'`  
    
       $ s3b

**NEW**
added `s3mb` `s3rb` and `s3rbf` to make remove and remove with force buckets.
    
## Installation 

To install, place the file in your home directory. In Cloud9 you can't drop 
directly to the home directory so you would have to put it in ~/workspace and 
then run:

    $ mv ~/workspace/bashquicks ~/bashquicks; c9 ~/bashquicks/README.md
    
now in terminal:

    $ cd ~/bashquicks; ./install.sh
    
and you should be ready to go!
    
If you are on Cloud9 you might want to make a soft link to the library on your 
workspace with this:

    $ ln -s ~/bashquicks/ ~/workspace

Keep in mind the limitations of soft links! http://linuxgazette.net/105/pitcher.html

## A Few Bash Aliases

`n`avigate to the `b`ash`q`uicks directory and show contents:

    $ nbq

If you are in Cloud9, run this to display `b`ash`q`uicks `a`liases:

    $ bqa 
    
Or run this in Cloud9 to edit them (`b`ash`q`uicks `e`dit `a`liases):

    $ bqea

If you make changes you can run this command to reload the .`b`ash_`rc` file.

    $ brc
    
## Bash Scripts

The scripts are well commented so If you'd like to learn what they do I suggest 
looking at them directly. This `n`avigates to the `b`ashful/`r`ails/`s`cripts 
and lists the contents

    $ nbrs
    
`cat` any one of them to see the content. In cloud9 you can use this command to 
make a `n`ew empty `s`cript and open it in the editor:

    $ bqns filename


    
# TODO

1. script to navigate up to git project's root ~~DONE~~
2. script to replace Gemfile and install
3. script to delete Gemfile.lock and start over (from any dir without leaving)
4. make commands that must be at git root work anywhere inside projectc9 