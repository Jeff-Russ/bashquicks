#!/bin/bash

alias osa="osascript"
alias ias="osascript -i"
alias asl="osascript -e"
alias ijs="osascript -il JavaScript"
alias jsl="osascript -el JavaScript"
alias chrome='open -a "Google Chrome"'
alias safari='open -a "Safari"'

# setCocoaDialogGlobs.sh
CD_APP=""
CD=""

if [ -d "$HOME/Applications/CocoaDialog.app" ]
  then
    CD_APP="$HOME/Applications/CocoaDialog.app"
    CD="$CD_APP/Contents/MacOS/CocoaDialog"

elif [ -d "/Applications/CocoaDialog.app" ]
  then
    CD_APP="/Applications/CocoaDialog.app"
    CD="$CD_APP/Contents/MacOS/CocoaDialog"

else
    echo "CocoaDialog not found"
    exit 1
fi